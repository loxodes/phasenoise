from migen import *

class DDC(Module):
    def __init__(self, input_bits = 16):
        self.i_sample = Signal(input_bits)

        output_bits = 
        self.o_i = Signal(output_bits)
        self.o_q = Signal(output_bits)

        self.i_nco_freq = Signal(18)

        nco = NCO()
        self.submodules += nco

        mixer = Mixer()
        self.submodules += mixer

        cic = CIC()
        self.submodules += cic

        comp_fir = CompensationFilter()
        self.submodules += comp_fir

    
        self.csgen = csgen = CosSinGen()#z=18, x=15, zl=9, xd=3)
        self.submodules += csgen
        self.sync += csgen.z.eq(csgen.z+self.i_phase_inc) 
        
        self.sync += self.o_nco_i.eq(csgen.x)
        self.sync += self.o_nco_q.eq(csgen.y)


def ddc_test(dut):
    yield dut.i_phase_inc.eq(100)
    for i in range(10000):
        yield
    yield dut.i_phase_inc.eq(1000)
    for i in range(10000):
        yield        
if __name__ == '__main__':
    dut = NCO()
    run_simulation(dut, ddc_test(dut), vcd_name="ddc_test.vcd")



    

