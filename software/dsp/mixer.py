from migen import *

class Mixer(Module):
    def __init__(self, sample_bits = 12, nco_bits = 16, output_bits = 16):
        self.i_sample = Signal(sample_bits)

        self.i_nco_i = Signal(nco_bits)
        self.i_nco_q = Signal(nco_bits)

        self.o_i = Signal(output_bits)
        self.o_q = Signal(output_bits)

        i_temp = Signal(sample_bits + nco_bits)
        q_temp = Signal(sample_bits + nco_bits)

        self.comb += [
            i_temp.eq(self.i_nco_i * self.i_sample),
            q_temp.eq(self.i_nco_q * self.i_sample),
            self.o_i.eq(i_temp[sample_bits + nco_bits - output_bits:]),
            self.o_q.eq(q_temp[sample_bits + nco_bits - output_bits:])]
    

def mixer_test(dut):
    yield

if __name__ == '__main__':
    dut = Mixer()
    run_simulation(dut, mixer_test(dut), vcd_name="mixer_test.vcd")



    

