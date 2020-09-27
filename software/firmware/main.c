#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <irq.h>
#include <uart.h>
#include <time.h>
#include <console.h>
#include <generated/csr.h>
#include <generated/mem.h>

#define NO_READBACK 0
#define READBACK 1



static char *readstr(void)
{
	char c[2];
	static char s[64];
	static int ptr = 0;

	if(readchar_nonblock()) {
		c[0] = readchar();
		c[1] = 0;
		switch(c[0]) {
			case 0x7f:
			case 0x08:
				if(ptr > 0) {
					ptr--;
					putsnonl("\x08 \x08");
				}
				break;
			case 0x07:
				break;
			case '\r':
			case '\n':
				s[ptr] = 0x00;
				putsnonl("\n");
				ptr = 0;
				return s;
			default:
				if(ptr >= (sizeof(s) - 1))
					break;
				putsnonl(c);
				s[ptr] = c[0];
				ptr++;
				break;
		}
	}

	return NULL;
}

static char *get_token(char **str)
{
	char *c, *d;

	c = (char *)strchr(*str, ' ');
	if(c == NULL) {
		d = *str;
		*str = *str+strlen(*str);
		return d;
	}
	*c = 0;
	d = *str;
	*str = c+1;
	return d;
}

static void prompt(void)
{
	printf("RUNTIME>");
}

static void help(void)
{
	puts("Available commands:");
	puts("help                            - this command");
	puts("reboot                          - reboot CPU");
	puts("memory                          - memory test");
	puts("wishbone                        - wishbone dma test");
	puts("adc                        	 - adc test");
	puts("synth                           - synth test");
}

static void reboot(void)
{
  	ctrl_reset_write(1);
}

static uint32_t adc_spi_read(uint16_t addr)
{
	while(adc_spi_status_read() != 1 << CSR_ADC_SPI_STATUS_DONE_OFFSET) {
		;
	}

	uint32_t spi_control_start = (24 << CSR_ADC_SPI_CONTROL_LENGTH_OFFSET) | (1 << CSR_ADC_SPI_CONTROL_START_OFFSET);
	adc_spi_cs_write(1);
	adc_spi_mosi_write((addr << 8) + (1 << 23) + (1 << 22));
	adc_spi_control_write(spi_control_start);

	while(adc_spi_status_read() != 1 << CSR_ADC_SPI_STATUS_DONE_OFFSET) {
		;
	}

	adc_spi_cs_write(0);
	uint32_t r = adc_spi_miso_read();
	return r & 0xFF;

}


static uint8_t adc_spi_write(uint16_t addr, uint8_t value)
{
	while(adc_spi_status_read() != 1 << CSR_ADC_SPI_STATUS_DONE_OFFSET) {
		;
	}

	uint32_t spi_control_start = (24 << CSR_ADC_SPI_CONTROL_LENGTH_OFFSET) | (1 << CSR_ADC_SPI_CONTROL_START_OFFSET);


	uint32_t payload = (1 << 22) + (addr << 8) + value;
	adc_spi_cs_write(1);
	adc_spi_mosi_write(payload);
	adc_spi_control_write(spi_control_start);

	while(adc_spi_status_read() != 1 << CSR_ADC_SPI_STATUS_DONE_OFFSET) {
		;
	}

	adc_spi_cs_write(0);

	uint8_t r = adc_spi_read(addr);

	if(r != value) {
		printf("adc readback after write to %x failed!, expected %x got %x\n", addr, value, r);
	}
	return r;
}

static uint16_t synth_spi_read(uint8_t addr)
{
	while(synth_spi_status_read() != 1 << CSR_SYNTH_SPI_STATUS_DONE_OFFSET) {
		;
	}
	uint32_t spi_control_start = (24 << CSR_SYNTH_SPI_CONTROL_LENGTH_OFFSET) | (1 << CSR_SYNTH_SPI_CONTROL_START_OFFSET);
	uint32_t payload = (1 << 23) + (addr << 16);

	synth_spi_cs_write(1);
	synth_spi_mosi_write(payload);
	synth_spi_control_write(spi_control_start);

	while(synth_spi_status_read() != 1 << CSR_SYNTH_SPI_STATUS_DONE_OFFSET) {
		;
	}

	synth_spi_cs_write(0);
	uint32_t r = synth_spi_miso_read() & 0xFFFF;
	return r;
}

static uint16_t synth_spi_write(uint16_t addr, uint16_t value, uint8_t readback)
{
	// https://github.com/loxodes/vna/blob/devel/software/vna_controller/bbone_spi_bitbang.py
	while(synth_spi_status_read() != 1 << CSR_SYNTH_SPI_STATUS_DONE_OFFSET) {
		;
	}

	uint32_t spi_control_start = (24 << CSR_SYNTH_SPI_CONTROL_LENGTH_OFFSET) | (1 << CSR_SYNTH_SPI_CONTROL_START_OFFSET);
	uint32_t payload = (0 << 23) + (addr << 16) + value;
	uint16_t r = 0;

	synth_spi_cs_write(1);
	synth_spi_mosi_write(payload);
	synth_spi_control_write(spi_control_start);
	while(synth_spi_status_read() != 1 << CSR_SYNTH_SPI_STATUS_DONE_OFFSET) {
		;
	}
	synth_spi_cs_write(0);

	if(readback) {
		r = synth_spi_read(addr);

		if(r != value) {
			printf("synth readback after write to %x failed!, expected %x got %x\n", addr, value, r);
		}
	}

	return r;
}



static void adc_init(void)
{
	// setup for 2-Wire (6x serialization)
	// Fs = 25 MSPS, Fbit = 150 MHz
	
	// soft reset
	adc_spi_write(0x06, 0x01);
	adc_spi_write(0x06, 0x00);
	// high pulse on reset, minimum duration 10 nanoseconds
	// max SPI SCLK 20 MHz
	// 0x01, default ok, dithering on both channels
	// 0x03, default ok, bits 0,1,2 on wire 0, bits 7,8,9 on wire 1
	// 0x04, default ok, do not flip output wires
	// 0x05, default ok, transmit on two output wires
	// 0x06, default ok, normal output (not a test pattern)
	// 0x07, default ok, bit 0 is lsb
	adc_spi_write(0x09, 0x01); // 0x09, set data format as offset binary
	// 0x0a, default ok, normal operation (not a test pattern)
	// 0x0b, default ok, normal operation (not a test pattern)
	// 0x0e, default ok
	// 0x0f, default ok
	// 0x13, default ok, >25 MSPS
	// 0x15, default ok, enable both channels and normal operation
	// 0x25, default ok, max LVDS swing
	// 0x27, default ok, no sample clock division
	// 0x41D, default ok, <100 MHz operation
	// 0x422, default ok, chopper enabled on ch a
	// 0x434, default ok, dithering on cha
	adc_spi_write(0x439, 0x08);
	// 0x439, write 0b1000 after reset for best performance on ch a
	// 0x51D, default ok, <100 MHz operation
	// 0x522, default ok, chopper enabled on ch b
	// 0x534, default ok, dithering on channel a
	adc_spi_write(0x539, 0x08);
	// 0x539, write 0b1000 after reset for best performance on ch b
	// 0x608, default ok, <100 MHz operation

	adc_spi_write(0x70A, 0x01);
	// 0x70A, 0b1, disable sysref buffer
}


static void adc_testpattern_en(void)
{
	adc_spi_write(0x06, 0x02);
	adc_spi_write(0x0a, 0x04);
	adc_spi_write(0x0b, 0x09<<4);


	// custom pattern:
	adc_spi_write(0x0e, 0x16);
	adc_spi_write(0x0f, 0x50); // 0x05

	// 0a
	// 0 - normal
	// 1 - all 0
	// 2 - all 1
	// 3 - alternate 010101 101010 
	// 4 - ramp, datasheet is incorrect, value increments every 4 samples (https://e2e.ti.com/support/data-converters/f/73/t/469423)
	// 5 - custom pattern
	// 9 - 8 point sine wave, [0, 599,2048,3496,4095,3496,2048,599]
	// 10 - Deskew pattern, data are AAAh
}

static void adc_testpattern_disable(void)
{
	adc_spi_write(0x06, 0x00);
	adc_spi_write(0x0a, 0x00);
	adc_spi_write(0x0b, 0x00);
}

static void adc_test(void)
{
	// capture a burst, 20 MSPS, a
	// provide a 20 MHz sample clock
	// read in data at .. 120 MHz
	//
	uint16_t burst_size = 10;
	volatile uint32_t *dram_array = (uint32_t *)(HYPERRAM_BASE);
	adc_init();
	adc_testpattern_disable();

	adc_burst_size_write(burst_size);
	adc_base_write(HYPERRAM_BASE);
	adc_offset_write(0);

	adc_start_write(1 << CSR_ADC_START_START_BURST_OFFSET);

	printf("waiting for ready!\n");

	// flush cache before accessing shared memory..
	flush_cpu_icache();
	flush_cpu_dcache();

	while(!adc_ready_read())
	{
		;
	}

	printf("memory readback!\n");
	for(uint16_t i=0; i<burst_size; i++) {
		printf("memory[%d]: %d\n", i, dram_array[i]);
	}


}


static void memory_test(void)
{
	// offset data in RAM from the start to avoid overwriting firmware..
	volatile uint32_t *dram_array = (unsigned int *)(HYPERRAM_BASE);

	int i;
	printf("memory test...\n");
	
	printf("writing memory to base %x!\n", dram_array);
	printf("HYPERRAM_BASE is %x!\n", HYPERRAM_BASE);
	for(i=0; i<500000; i++) {
		//#printf("writing memory, %d!\n", i);
		dram_array[i] = 0;
	}
	
	printf("memory readback!\n");
	for(i=0; i<1024; i++) {
		// 	printf("reading memory[%d] = %d\n", i, dram_array[i]);
		if(dram_array[i] == 0) {
			;
		}
		else {
			printf("pattern mismatch!, read %d expected %d\n", dram_array[i], i*4);
		}

	}
	printf("test complete!\n");
	
}

static void synth_test(void)
{
	// hardcoded for 500 MHz output on channel B
	printf("resetting LMX2594...\n");
	// program RESET=1 to reset registers
	synth_spi_write(0, 2, NO_READBACK);

	// program RESET=0 to remove reset, set MUXOUT to readback
	synth_spi_write(0, 0x2518, READBACK);

	printf("programming LMX2594...\n");
	// program register values in reverse order, from lowest to highest
	synth_spi_write(112,0x0000,READBACK);
	synth_spi_write(111,0x0000,READBACK);
	synth_spi_write(110,0x0000,READBACK);
	synth_spi_write(109,0x0000,READBACK);
	synth_spi_write(108,0x0000,READBACK);
	synth_spi_write(107,0x0000,READBACK);
	synth_spi_write(106,0x0000,READBACK);
	synth_spi_write(105,0x0021,READBACK);
	synth_spi_write(104,0x0000,READBACK);
	synth_spi_write(103,0x0000,READBACK);
	synth_spi_write(102,0x0000,READBACK);
	synth_spi_write(101,0x0011,READBACK);
	synth_spi_write(100,0x0000,READBACK);
	synth_spi_write(99,0x0000,READBACK);
	synth_spi_write(98,0x0000,READBACK);
	synth_spi_write(97,0x0888,READBACK);
	synth_spi_write(96,0x0000,READBACK);
	synth_spi_write(95,0x0000,READBACK);
	synth_spi_write(94,0x0000,READBACK);
	synth_spi_write(93,0x0000,READBACK);
	synth_spi_write(92,0x0000,READBACK);
	synth_spi_write(91,0x0000,READBACK);
	synth_spi_write(90,0x0000,READBACK);
	synth_spi_write(89,0x0000,READBACK);
	synth_spi_write(88,0x0000,READBACK);
	synth_spi_write(87,0x0000,READBACK);
	synth_spi_write(86,0x0000,READBACK);
	synth_spi_write(85,0x0000,READBACK);
	synth_spi_write(84,0x0000,READBACK);
	synth_spi_write(83,0x0000,READBACK);
	synth_spi_write(82,0x0000,READBACK);
	synth_spi_write(81,0x0000,READBACK);
	synth_spi_write(80,0x0000,READBACK);
	synth_spi_write(79,0x0000,READBACK);
	synth_spi_write(78,0x0003,READBACK);
	synth_spi_write(77,0x0000,READBACK);
	synth_spi_write(76,0x000C,READBACK);
	synth_spi_write(75,0x0940,READBACK);
	synth_spi_write(74,0x0000,READBACK);
	synth_spi_write(73,0x003F,READBACK);
	synth_spi_write(72,0x0001,READBACK);
	synth_spi_write(71,0x0081,READBACK);
	synth_spi_write(70,0xC350,READBACK);
	synth_spi_write(69,0x0000,READBACK);
	synth_spi_write(68,0x03E8,READBACK);
	synth_spi_write(67,0x0000,READBACK);
	synth_spi_write(66,0x01F4,READBACK);
	synth_spi_write(65,0x0000,READBACK);
	synth_spi_write(64,0x1388,READBACK);
	synth_spi_write(63,0x0000,READBACK);
	synth_spi_write(62,0x0322,READBACK);
	synth_spi_write(61,0x00A8,READBACK);
	synth_spi_write(60,0x0000,READBACK);
	synth_spi_write(59,0x0001,READBACK);
	synth_spi_write(58,0x9001,READBACK);
	synth_spi_write(57,0x0020,READBACK);
	synth_spi_write(56,0x0000,READBACK);
	synth_spi_write(55,0x0000,READBACK);
	synth_spi_write(54,0x0000,READBACK);
	synth_spi_write(53,0x0000,READBACK);
	synth_spi_write(52,0x0820,READBACK);
	synth_spi_write(51,0x0080,READBACK);
	synth_spi_write(50,0x0000,READBACK);
	synth_spi_write(49,0x4180,READBACK);
	synth_spi_write(48,0x0300,READBACK);
	synth_spi_write(47,0x0300,READBACK);
	synth_spi_write(46,0x07FC,READBACK);
	synth_spi_write(45,0xC0DF,READBACK);
	synth_spi_write(44,0x1F63,READBACK);
	synth_spi_write(43,0x0000,READBACK);
	synth_spi_write(42,0x0000,READBACK);
	synth_spi_write(41,0x0000,READBACK);
	synth_spi_write(40,0x0000,READBACK);
	synth_spi_write(39,0x03E8,READBACK);
	synth_spi_write(38,0x0000,READBACK);
	synth_spi_write(37,0x0304,READBACK);
	synth_spi_write(36,0x0028,READBACK);
	synth_spi_write(35,0x0004,READBACK);
	synth_spi_write(34,0x0000,READBACK);
	synth_spi_write(33,0x1E21,READBACK);
	synth_spi_write(32,0x0393,READBACK);
	synth_spi_write(31,0x43EC,READBACK);
	synth_spi_write(30,0x318C,READBACK);
	synth_spi_write(29,0x318C,READBACK);
	synth_spi_write(28,0x0488,READBACK);
	synth_spi_write(27,0x0002,READBACK);
	synth_spi_write(26,0x0DB0,READBACK);
	synth_spi_write(25,0x0C2B,READBACK);
	synth_spi_write(24,0x071A,READBACK);
	synth_spi_write(23,0x007C,READBACK);
	synth_spi_write(22,0x0001,READBACK);
	synth_spi_write(21,0x0401,READBACK);
	synth_spi_write(20,0xE048,READBACK);
	synth_spi_write(19,0x27B7,READBACK);
	synth_spi_write(18,0x0064,READBACK);
	synth_spi_write(17,0x012C,READBACK);
	synth_spi_write(16,0x0080,READBACK);
	synth_spi_write(15,0x064F,READBACK);
	synth_spi_write(14,0x1E70,READBACK);
	synth_spi_write(13,0x4000,READBACK);
	synth_spi_write(12,0x5001,READBACK);
	synth_spi_write(11,0x0018,READBACK);
	synth_spi_write(10,0x10D8,READBACK);
	synth_spi_write(9,0x1604,READBACK);
	synth_spi_write(8,0x2000,READBACK);
	synth_spi_write(7,0x40B2,READBACK);
	synth_spi_write(6,0xC802,READBACK);
	synth_spi_write(5,0x00C8,READBACK);
	synth_spi_write(4,0x0A43,READBACK);
	synth_spi_write(3,0x0642,READBACK);
	synth_spi_write(2,0x0500,READBACK);
	synth_spi_write(1,0x0808,READBACK);
	synth_spi_write(0,0x2518,READBACK);
	// wait 10 ms
	printf("initialization complete, waiting for final FCAL_EN...\n");
	busy_wait(1000);

	// program register 0 one more time with FCAL_EN = 1
	// set MUXOUT to lock detect
	synth_spi_write(0, 0x251C, NO_READBACK);
	printf("programming complete\n");
}

static void console_service(void)
{
	char *str;
	char *token;

	str = readstr();
	if(str == NULL) return;
	token = get_token(&str);
	if(strcmp(token, "help") == 0)
		help();
	else if(strcmp(token, "reboot") == 0)
		reboot();
	else if(strcmp(token, "memory") == 0)
		memory_test();
	else if(strcmp(token, "adc") == 0)
		adc_test();
	else if(strcmp(token, "synth") == 0)
		synth_test();
	prompt();
}


static void pn_init(void)
{
	// enable 
	// bit
	// 0	if_g1
	// 1	if_g2
	// 2	buf_pd
	// 3 	synth_ce
	pn_gpio_out_write(0x08);//8 for synth_ce only
}


int main(void)
{
	irq_setmask(0);
	irq_setie(1);
	uart_init();
	pn_init();

	puts("\nCPU testing software built "__DATE__" "__TIME__"\n");
	help();
	prompt();

	while(1) {
		console_service();
	}

	return 0;
}
