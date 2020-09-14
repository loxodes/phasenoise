from migen import *

class Mixer(Module):
    def __init__(self, bits = 16):
        self.i_sample = Signal(18)

        self.i_nco_i = Signal(bits)
        self.i_nco_q = Signal(bits)

        self.o_i = Signal(bits)
        self.o_q = Signal(bits)

        self.comb += [ /
            self.o_i.eq(i_nco_i * self.i_sample),
            self.o_q.eq(i_nco_q * self.i_sample)]
    

def mixer_test(dut):
    yield dut.i_phase_inc.eq(100)
    for i in range(10000):
        yield
    yield dut.i_phase_inc.eq(1000)
    for i in range(10000):
        yield        
if __name__ == '__main__':
    dut = NCO()
    run_simulation(dut, nco_test(dut), vcd_name="nco_test.vcd")



    

