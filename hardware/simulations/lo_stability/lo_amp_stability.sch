<Qucs Schematic 0.0.19>
<Properties>
  <View=-1100,-116,2460,1231,1,356,0>
  <Grid=10,10,1>
  <DataSet=lo_amp_stability.dat>
  <DataDisplay=lo_amp_stability.dpl>
  <OpenDisplay=1>
  <Script=lo_amp_stability.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <.SP SP1 1 -740 740 0 67 0 0 "log" 1 "1MHz" 1 "7GHz" 1 "201" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <GND * 1 -510 670 0 0 0 0>
  <Pac P2 1 -310 640 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 -310 670 0 0 0 0>
  <Pac P1 1 -800 640 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 -800 670 0 0 0 0>
  <C C1 1 -650 560 -26 -55 0 2 "10 nF" 1 "" 0 "neutral" 0>
  <C C2 1 -380 560 -26 -55 0 2 "10 nF" 1 "" 0 "neutral" 0>
  <C C3 1 -270 390 -86 -26 0 3 "10 uF" 1 "" 0 "neutral" 0>
  <GND * 1 -270 420 0 0 0 0>
  <GND * 1 -390 390 0 0 0 0>
  <SPfile X1 1 -510 560 -26 -59 0 0 "/home/jtklein/repos/phasenoise/hardware/simulations/TRF37A73.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X2 1 -390 360 -26 -59 0 0 "/home/jtklein/repos/phasenoise/hardware/simulations/BLM15GG471SN1.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Eqn Eqn1 1 -520 750 -28 15 0 0 "dBS21=dB(S[2,1])" 1 "Mu=Mu(S)" 1 "Mu2=Mu2(S)" 1 "dBS11=dB(S[1,1])" 1 "dBS22=dB(S[2,2])" 1 "yes" 0>
</Components>
<Wires>
  <-510 590 -510 670 "" 0 0 0 "">
  <-310 560 -310 610 "" 0 0 0 "">
  <-480 560 -430 560 "" 0 0 0 "">
  <-800 560 -800 610 "" 0 0 0 "">
  <-800 560 -680 560 "" 0 0 0 "">
  <-620 560 -540 560 "" 0 0 0 "">
  <-430 560 -410 560 "" 0 0 0 "">
  <-350 560 -310 560 "" 0 0 0 "">
  <-430 360 -420 360 "" 0 0 0 "">
  <-430 360 -430 560 "" 0 0 0 "">
  <-360 360 -270 360 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
