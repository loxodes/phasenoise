from migen import *
from cossin import CosSinGen
import numpy as np

# uses cossin from M-Labs, https://github.com/m-labs/cossin
# https://nbviewer.jupyter.org/github/m-labs/cossin/blob/master/cossin.ipynb

class NCO(Module):
    def __init__(self, output_bits = 16, phaseinc_bits = 18):
        self.i_phase_inc = Signal(phaseinc_bits)

        self.o_nco_i = Signal(output_bits)
        self.o_nco_q = Signal(output_bits)

        self.output_bits = output_bits
        self.phaseinc_bits = phaseinc_bits

    
        # z is total phase depth at the input, resolution of 1/(1<<z) radians
        # x is width, excluding sign bit
        # zl is number of bits in lookup table
        # xd is "derivative coefficient bit width in LUT"???
    
        self.csgen = csgen = CosSinGen()#z=18, x=15, zl=9, xd=3)
        self.submodules += csgen
        self.sync += csgen.z.eq(csgen.z+self.i_phase_inc) 
        
        self.sync += self.o_nco_i.eq(csgen.x)
        self.sync += self.o_nco_q.eq(csgen.y)
    
    def calc_phase_inc(self, f_s, f_nco):
        # calculate the setting for the phase increment for a frequency
        # not synthesizable
        return int((f_nco / f_s) * ((2 ** self.phaseinc_bits) - 1))


def nco_test(dut):
    yield dut.i_phase_inc.eq(100)
    for i in range(10000):
        yield
    yield dut.i_phase_inc.eq(1000)
    for i in range(10000):
        yield        
if __name__ == '__main__':
    dut = NCO()
    run_simulation(dut, nco_test(dut), vcd_name="nco_test.vcd")



    

