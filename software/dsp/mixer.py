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

        print("mixer bits: {}".format(sample_bits + nco_bits - (sample_bits + nco_bits - output_bits)))
        print("intended mixer bits: {}".format(output_bits))
        self.comb += [
            i_temp.eq(self.i_nco_i * self.i_sample),
            q_temp.eq(self.i_nco_q * self.i_sample),
            self.o_i.eq(i_temp[sample_bits + nco_bits - output_bits:]),
            self.o_q.eq(q_temp[sample_bits + nco_bits - output_bits:])]

            #self.o_i.eq(i_temp[sample_bits + nco_bits - output_bits:]),
            #self.o_q.eq(q_temp[sample_bits + nco_bits - output_bits:])]
    

def mixer_test(dut):
    import numpy as np
    import matplotlib.pyplot as plt


    def twos_comp(val, bits):
        if (val & (1 << (bits - 1))) != 0:
            val = val - (1 << bits)
        return val

    f_in = 5e6
    f_nco = 4.9e6
    f_s = 30e6
    duration = .0001
    t_s = 1/f_s 

    t = np.arange(0,duration,t_s)

    s_nco = np.int16(np.sin(2 * np.pi * f_nco * t) * (2 ** 15))
    s_in = np.int16(np.sin(2 * np.pi * f_in * t) * (2 ** 11))

    s_output = []
    for i, s_i in enumerate(s_in):
        yield dut.i_sample.eq(int(s_i))
        yield dut.i_nco_i.eq(int(s_nco[i]))
        result = twos_comp((yield dut.o_i), bits = 16)
        s_output.append(result)
        yield

    plt.plot(result)

    plt.show()
if __name__ == '__main__':
    dut = Mixer()
    run_simulation(dut, mixer_test(dut), vcd_name="mixer_test.vcd")



    

