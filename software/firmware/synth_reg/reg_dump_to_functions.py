# converts txt register dump from TICS Pro to c register writes

filename = 'cha_100mhz.txt'

regs = []

REGS_PER_LINE = 8

with open(filename, 'r') as f:
    for line in f:
        l = line.split()
        reg = l[0][1:]
        value = '0x' + l[1][4:]
        regs.append((reg, value))


for i,reg in enumerate(regs):
    print('synth_spi_write({},{},READBACK);'.format(reg[0], reg[1]))





