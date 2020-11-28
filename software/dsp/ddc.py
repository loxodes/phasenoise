from migen import *  
from nco import NCO
from mixer import Mixer
from cic import CIC, CompensationFilter


import numpy as np
import matplotlib.pyplot as plt

class DDC(Module):
    def __init__(self, input_bits = 12, output_bits = 16, phaseinc_bits = 18, nco_bits = 18, if_bits = 20):
        self.i_sample = Signal((input_bits, True))

        self.o_i = Signal((output_bits, True))
        self.o_q = Signal((output_bits, True))
        self.o_valid = Signal()

        self.i_nco_freq = Signal(phaseinc_bits)

        self.input_bits = input_bits
        self.output_bits = output_bits
        self.phase_bits = phaseinc_bits
        self.if_bits = if_bits
        self.nco_bits = nco_bits

        self.nco = nco = NCO(output_bits = nco_bits, phaseinc_bits = phaseinc_bits)

        self.mixer = mixer = Mixer(sample_bits = input_bits, nco_bits = nco_bits, output_bits = if_bits)
        self.cic_i = cic_i = CIC(input_bits = if_bits)
        self.cic_q = cic_q = CIC(input_bits = if_bits)

        self.comb += [
            mixer.i_sample.eq(self.i_sample),
            mixer.i_nco_i.eq(nco.o_nco_i),
            mixer.i_nco_q.eq(nco.o_nco_q),
            cic_i.i_sample.eq(mixer.o_i),
            cic_q.i_sample.eq(mixer.o_q),
            self.o_valid.eq(cic_i.o_valid),
            self.o_i.eq(cic_i.o_result[(cic_i.filter_bits - output_bits):]),
            self.o_q.eq(cic_q.o_result[(cic_q.filter_bits - output_bits):])]

        self.submodules += [nco, mixer, cic_i, cic_q,]


        #comp_fir = CompensationFilter()
        #self.submodules += comp_fir

    
def ddc_test(dut):
    f_s = 25e6
    f_in = 5e6
    f_nco = -4.9e6

    duration = .0001
    t_s = 1/f_s 

    t = np.arange(0,duration,t_s)
    s_in = np.sin(2 * np.pi * f_in * t) * (2 ** 10)

    phase_inc = dut.nco.calc_phase_inc(f_s, f_nco)
    yield dut.nco.i_phase_inc.eq(phase_inc)

    i_results = []
    q_results = []
    mixer_out = []
    nco_out = []

    for s_i in s_in:
        yield dut.i_sample.eq(int(s_i))

        m_i = (yield dut.o_i)
        n_i = (yield dut.nco.o_nco_i)
        mixer_out.append(m_i)
        nco_out.append(n_i)

        if (yield dut.o_valid):
            i_result = (yield dut.o_i)
            q_result = (yield dut.o_q)
            i_results.append(i_result)
            q_results.append(q_result)
        yield

    nco_out = np.array(nco_out)
    mixer_out = np.array(mixer_out)
    synth_mixer = nco_out * s_in
    i_results = np.array(i_results)
    q_results = np.array(q_results)
    s_results = i_results + 1j * q_results
    s_results = s_results - np.mean(s_results)

    plt.subplot(3,1,1)
    plt.plot(nco_out)
    plt.plot(mixer_out)
    plt.title('NCO and mixer output')

    plt.subplot(3,1,2)
    plt.plot(np.real(s_results))
    plt.plot(np.imag(s_results))
    plt.title('real and imag output of ddc')
    
    plt.subplot(3,1,3)
    plt.magnitude_spectrum(s_results, f_s/8, scale='dB', alpha=.5)
    plt.title('ddc output spectrum')
    plt.show()

if __name__ == '__main__':
    dut = DDC()
    run_simulation(dut, ddc_test(dut), vcd_name="ddc_test.vcd")



    

