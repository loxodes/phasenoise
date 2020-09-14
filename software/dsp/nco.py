from migen import *
from cossin import CosSinGen
# uses cossin from M-Labs, https://github.com/m-labs/cossin
# https://nbviewer.jupyter.org/github/m-labs/cossin/blob/master/cossin.ipynb

class NCO(Module):
    def __init__(self, bits = 16):
        self.i_phase_inc = Signal(18)

        self.o_nco_i = Signal(bits)
        self.o_nco_q = Signal(bits)
    
        # z is total phase depth at the input, resolution of 1/(1<<z) radians
        # x is width, excluding sign bit
        # zl is number of bits in lookup table
        # xd is "derivative coefficient bit width in LUT"???
    
        self.csgen = csgen = CosSinGen()#z=18, x=15, zl=9, xd=3)
        self.submodules += csgen
        self.sync += csgen.z.eq(csgen.z+self.i_phase_inc) 
        
        self.sync += self.o_nco_i.eq(csgen.x)
        self.sync += self.o_nco_q.eq(csgen.y)


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



    

