from migen import *
import pdb
# http://old.myhdl.org/doku.php/projects:gcicexample
# https://www.dsprelated.com/showarticle/1337.php
# http://www.ee.nmt.edu/~erives/531_14/CIC_filters.pdf
class CIC(Module):
    def __init__(self, input_bits = 12, cic_order = 3, decimation = 8):
        self.filter_bits = filter_bits = input_bits + cic_order * log2_int(decimation, need_pow2 = False)
        print('filter bits: {}'.format(filter_bits))
        self.i_sample = Signal(input_bits)
        self.o_result = Signal(filter_bits)
        self.o_valid = Signal(1)

        # sign extend input
        input_sext = Signal(filter_bits)
        self.sync += input_sext.eq(Cat(self.i_sample, [self.i_sample[input_bits-1]]*(filter_bits-input_bits)))
        # create combs, integrators, and decimator
        combs = [_Comb(bits=filter_bits) for _ in range(cic_order)]
        self.submodules += combs

        integrators = [_Integrator(filter_bits) for _ in range(cic_order)]
        self.submodules += integrators

        decimator = _Decimator(filter_bits, decimation)
        self.submodules += decimator

        # initialize 
        self.comb += [
            integrators[0].i_sample.eq(input_sext),
            integrators[0].i_valid.eq(True),
            decimator.i_sample.eq(integrators[-1].o_sample),
            combs[0].i_sample.eq(decimator.o_sample),
            combs[0].i_valid.eq(decimator.o_valid),
            self.o_valid.eq(decimator.o_valid)]
        self.sync += [
            If(decimator.o_valid,
                self.o_result.eq(combs[-1].o_sample),
            ).Else(
                self.o_result.eq(self.o_result))]

        for i, integrator in enumerate(integrators[1:]):
            self.comb += [
                integrator.i_valid.eq(True),
                integrator.i_sample.eq(integrators[i].o_sample)]

        for i, comb in enumerate(combs[1:]):
            self.comb += [
                comb.i_valid.eq(decimator.o_valid),
                comb.i_sample.eq(combs[i].o_sample)]      

        # eventually add fifo after decimation and switch to different clock domain

class CompensationFilter(Module):
    def __init__(self):
        pass
        # see A Simple and Efficient FIR Compensation Filter
        # https://www.dsprelated.com/showarticle/1337.php
        # 3 tap, 1, -10, 1
        # where -10 is 2**3 + 2**1

class _Comb(Module):
    def __init__(self, bits, delay = 5):
        self.i_sample = Signal(bits)
        self.o_sample = Signal(bits)
        self.i_valid = Signal(1)
        self.o_valid = Signal(1)
        delay = Signal(bits)

        self.comb += self.o_sample.eq(self.i_sample - delay)
        self.sync += [
            If(self.i_valid,
                self.o_valid.eq(1),
                delay.eq(self.i_sample)
            ).Else(
                self.o_valid.eq(0),
            ) 
        ]


class _Integrator(Module):
    def __init__(self, bits):
        self.i_sample = Signal(bits)
        self.o_sample = Signal(bits)
        self.i_valid = Signal()
        self.o_valid = Signal()

        output_delay = Signal(bits)

        self.comb += self.o_sample.eq(self.i_sample + output_delay)
        self.sync += [
            If(self.i_valid,
                output_delay.eq(self.o_sample),
                self.o_valid.eq(1),
            ).Else( 
                self.o_valid.eq(0),
            ) 
        ]
       
class _Decimator(Module):
    def __init__(self, bits, rate):

        self.i_sample = Signal(bits)
        self.o_sample = Signal(bits)
        self.o_valid = Signal(1)

        counter = Signal(log2_int(rate, need_pow2 = False))

        self.sync += [
            If(counter == rate -1,
                counter.eq(0),
            ).Else(
                counter.eq(counter + 1))
        ]

        self.sync += [
            If(counter == 0,
                self.o_sample.eq(self.i_sample),
                self.o_valid.eq(True),
            ).Else(
                self.o_sample.eq(self.o_sample),
                self.o_valid.eq(False))
        ]

def cic_test_sine(dut):
    import numpy as np
    import matplotlib.pyplot as plt


    def twos_comp(val, bits):
        if (val & (1 << (bits - 1))) != 0:
            val = val - (1 << bits)
        return val

    ts = 1./25e6
    fc = 10e6
    t = np.arange(0,.0001,ts)
    print(ts)
    s = np.sin(2 * np.pi * fc * t) * (2 ** 10)

    s_output = []

    for s_i in s:
        yield dut.i_sample.eq(int(s_i))
        if (yield dut.o_valid):
            result = twos_comp((yield dut.o_result), bits = 21)
            s_output.append(result/512)
        yield

    s_output = np.array(s_output)
    plt.plot(t,s)
    t_output = t[::8]
    plt.plot(t_output, s_output)
    plt.show()

def cic_test_noise(dut):
    import numpy as np
    import matplotlib.pyplot as plt
    from scipy.signal import lfilter

    def twos_comp(val, bits):
        if (val & (1 << (bits - 1))) != 0:
            val = val - (1 << bits)
        return val

    fs = 25e6
    ts = 1/fs
    d = 8

    fc = 10e6
    t = np.arange(0,.001,ts)
    print(ts)
    s = np.int16(np.random.normal(0,1024,len(t)))

    s_output = []

    for s_i in s:
        yield dut.i_sample.eq(int(s_i))
        if (yield dut.o_valid):
            result = twos_comp((yield dut.o_result), bits = 21)
            s_output.append(result/512)
        yield

    s_output = np.array(s_output)
    t_output = t[::d]
    s_output_filtered = lfilter([1,-10,1], 1.0, s_output)/8
    plt.subplot(2,1,1)
    plt.plot(t,s)
    plt.plot(t_output, s_output)
    plt.plot(t_output, s_output_filtered)
    plt.subplot(2,1,2)
    plt.magnitude_spectrum(s, fs, scale='dB', alpha=.5)
    plt.magnitude_spectrum(s_output, fs/d, scale='dB', alpha=.5)
    plt.magnitude_spectrum(s_output_filtered, fs/d, scale='dB', alpha=.5)
    plt.show()

if __name__ == '__main__':
    dut = CIC()
    run_simulation(dut, cic_test_noise(dut), vcd_name="cic_test.vcd")



    

