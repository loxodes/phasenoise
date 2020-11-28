from migen import *
import pdb


class Mixer(Module):
    def __init__(self, sample_bits = 12, nco_bits = 16, output_bits = 16):
        self.i_sample = Signal((sample_bits, True))

        self.i_nco_i = Signal((nco_bits, True))
        self.i_nco_q = Signal((nco_bits, True))

        self.o_i = Signal((output_bits, True))
        self.o_q = Signal((output_bits, True))

        self.i_temp = Signal((sample_bits + nco_bits, True))
        self.q_temp = Signal((sample_bits + nco_bits, True))

        print("mixer bits: {}".format(sample_bits + nco_bits - (sample_bits + nco_bits - output_bits)))
        print("intended mixer bits: {}".format(output_bits))

        self.comb += [
            self.i_temp.eq(self.i_nco_i * self.i_sample),
            self.q_temp.eq(self.i_nco_q * self.i_sample),
            self.o_i.eq(self.i_temp[sample_bits + nco_bits - output_bits:]),
            self.o_q.eq(self.q_temp[sample_bits + nco_bits - output_bits:])]
    

def mixer_test(dut):
    import numpy as np
    import matplotlib.pyplot as plt


    def twos_comp(val, bits):
        if (val & (1 << (bits - 1))) != 0:
            val = val - (1 << bits)
        return val

    f_in = 1e6
    f_nco = .1e6
    f_s = 30e6
    duration = .0001
    t_s = 1/f_s 

    t = np.arange(0,duration,t_s)

    s_nco = np.int16(np.sin(2 * np.pi * f_nco * t) * (2 ** 15))
    #s_nco_comp = [int(np.binary_repr(s, width=16), 2) for s in s_nco]

    s_in = np.int16(np.sin(2 * np.pi * f_in * t) * (2 ** 10))
    s_in_comp = [int(np.binary_repr(s, width=12), 2) for s in s_in]

    s_output = []
    s_temp = []
    for i, s_i in enumerate(s_in):
        yield dut.i_sample.eq(int(s_i))
        yield dut.i_nco_i.eq(int(s_nco[i]))
        s_output.append((yield dut.o_i))
        s_temp.append((yield dut.i_temp))
        yield

    plt.subplot(3,1,1)
    plt.plot(s_output)
    plt.subplot(3,1,2)
    plt.plot(s_temp)
    plt.subplot(3,1,3)
    plt.plot(s_in)

    plt.show()
    pdb.set_trace()
if __name__ == '__main__':
    dut = Mixer()
    run_simulation(dut, mixer_test(dut), vcd_name="mixer_test.vcd")



    

