EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L vna:ADM7170 U502
U 1 1 5F2686CF
P 5500 2250
F 0 "U502" H 5500 2665 50  0000 C CNN
F 1 "ADM7171ACPZ-3.3-R7" H 5500 2574 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_3x3mm_P0.5mm_EP1.66x2.38mm" H 5350 2750 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADM7170.pdf" H 5450 2550 50  0001 C CNN
	1    5500 2250
	1    0    0    -1  
$EndComp
$Comp
L Regulator_SwitchedCapacitor:LM27761 U501
U 1 1 5F891C8B
P 4700 4700
F 0 "U501" H 4700 5267 50  0000 C CNN
F 1 "LM27761" H 4700 5176 50  0000 C CNN
F 2 "Package_SON:WSON-8-1EP_2x2mm_P0.5mm_EP0.9x1.6mm" H 4850 4200 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm27761.pdf" H 7200 4300 50  0001 C CNN
	1    4700 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0169
U 1 1 5F8932AB
P 5500 3000
F 0 "#PWR0169" H 5500 2750 50  0001 C CNN
F 1 "GND" H 5505 2827 50  0000 C CNN
F 2 "" H 5500 3000 50  0001 C CNN
F 3 "" H 5500 3000 50  0001 C CNN
	1    5500 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0170
U 1 1 5F89386D
P 7900 1250
F 0 "#PWR0170" H 7900 1100 50  0001 C CNN
F 1 "+3.3VA" H 7915 1423 50  0000 C CNN
F 2 "" H 7900 1250 50  0001 C CNN
F 3 "" H 7900 1250 50  0001 C CNN
	1    7900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2200 4900 2200
Wire Wire Line
	4900 2200 4900 2100
Wire Wire Line
	4900 2100 5050 2100
$Comp
L power:GND #PWR0171
U 1 1 5F8995B8
P 4650 3000
F 0 "#PWR0171" H 4650 2750 50  0001 C CNN
F 1 "GND" H 4655 2827 50  0000 C CNN
F 2 "" H 4650 3000 50  0001 C CNN
F 3 "" H 4650 3000 50  0001 C CNN
	1    4650 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R503
U 1 1 5F899768
P 4650 2800
F 0 "R503" H 4709 2846 50  0000 L CNN
F 1 "DNI" H 4709 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4650 2800 50  0001 C CNN
F 3 "~" H 4650 2800 50  0001 C CNN
	1    4650 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2550 4650 2550
Wire Wire Line
	4650 2550 4650 2700
Wire Wire Line
	4650 2900 4650 3000
Connection ~ 4650 2550
$Comp
L Device:R_Small R501
U 1 1 5F89C459
P 3950 2550
F 0 "R501" V 3754 2550 50  0000 C CNN
F 1 "0" V 3845 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3950 2550 50  0001 C CNN
F 3 "~" H 3950 2550 50  0001 C CNN
	1    3950 2550
	0    1    1    0   
$EndComp
Connection ~ 4900 2100
$Comp
L Device:C_Small C504
U 1 1 5F8A1A1E
P 4450 1700
F 0 "C504" H 4542 1746 50  0000 L CNN
F 1 "10 uF" H 4542 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4450 1700 50  0001 C CNN
F 3 "~" H 4450 1700 50  0001 C CNN
	1    4450 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C502
U 1 1 5F8A1D23
P 3950 1700
F 0 "C502" H 4042 1746 50  0000 L CNN
F 1 "1 uF" H 4042 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3950 1700 50  0001 C CNN
F 3 "~" H 3950 1700 50  0001 C CNN
	1    3950 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0172
U 1 1 5F8A2958
P 4450 1900
F 0 "#PWR0172" H 4450 1650 50  0001 C CNN
F 1 "GND" H 4455 1727 50  0000 C CNN
F 2 "" H 4450 1900 50  0001 C CNN
F 3 "" H 4450 1900 50  0001 C CNN
	1    4450 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0173
U 1 1 5F8A2C8F
P 3950 1900
F 0 "#PWR0173" H 3950 1650 50  0001 C CNN
F 1 "GND" H 3955 1727 50  0000 C CNN
F 2 "" H 3950 1900 50  0001 C CNN
F 3 "" H 3950 1900 50  0001 C CNN
	1    3950 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1900 3950 1800
Wire Wire Line
	4450 1900 4450 1800
Wire Wire Line
	3950 1600 3950 1450
Wire Wire Line
	3950 1450 4450 1450
Wire Wire Line
	4900 1450 4900 2100
Wire Wire Line
	4450 1600 4450 1450
Connection ~ 4450 1450
Wire Wire Line
	4450 1450 4900 1450
$Comp
L power:+3.3V #PWR0174
U 1 1 5F8A5315
P 7350 1250
F 0 "#PWR0174" H 7350 1100 50  0001 C CNN
F 1 "+3.3V" H 7365 1423 50  0000 C CNN
F 2 "" H 7350 1250 50  0001 C CNN
F 3 "" H 7350 1250 50  0001 C CNN
	1    7350 1250
	1    0    0    -1  
$EndComp
Connection ~ 3950 1450
$Comp
L Connector:TestPoint TP504
U 1 1 5F8BC5B9
P 7050 1300
F 0 "TP504" H 7108 1418 50  0000 L CNN
F 1 "TestPoint" H 7108 1327 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5015_Micro-Minature" H 7250 1300 50  0001 C CNN
F 3 "~" H 7250 1300 50  0001 C CNN
	1    7050 1300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5950 2200 6100 2200
Wire Wire Line
	6100 2200 6100 2100
Wire Wire Line
	6100 2100 5950 2100
Connection ~ 6100 2100
$Comp
L Device:C_Small C508
U 1 1 5F8BC5CA
P 6550 1700
F 0 "C508" H 6642 1746 50  0000 L CNN
F 1 "1 uF" H 6642 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6550 1700 50  0001 C CNN
F 3 "~" H 6550 1700 50  0001 C CNN
	1    6550 1700
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C509
U 1 1 5F8BC5D0
P 7050 1700
F 0 "C509" H 7142 1746 50  0000 L CNN
F 1 "10 uF" H 7142 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7050 1700 50  0001 C CNN
F 3 "~" H 7050 1700 50  0001 C CNN
	1    7050 1700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0175
U 1 1 5F8BC5D6
P 6550 1900
F 0 "#PWR0175" H 6550 1650 50  0001 C CNN
F 1 "GND" H 6555 1727 50  0000 C CNN
F 2 "" H 6550 1900 50  0001 C CNN
F 3 "" H 6550 1900 50  0001 C CNN
	1    6550 1900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0176
U 1 1 5F8BC5DC
P 7050 1900
F 0 "#PWR0176" H 7050 1650 50  0001 C CNN
F 1 "GND" H 7055 1727 50  0000 C CNN
F 2 "" H 7050 1900 50  0001 C CNN
F 3 "" H 7050 1900 50  0001 C CNN
	1    7050 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7050 1900 7050 1800
Wire Wire Line
	6550 1900 6550 1800
Wire Wire Line
	7050 1600 7050 1450
Wire Wire Line
	7050 1450 6550 1450
Wire Wire Line
	6100 1450 6100 2100
Wire Wire Line
	6550 1600 6550 1450
Connection ~ 6550 1450
Wire Wire Line
	6550 1450 6100 1450
Connection ~ 7050 1450
Wire Wire Line
	7050 1300 7050 1450
Wire Wire Line
	7350 1250 7350 1450
Wire Wire Line
	7050 1450 7350 1450
$Comp
L Device:L_Small L501
U 1 1 5F8C93C1
P 7650 1450
F 0 "L501" V 7835 1450 50  0000 C CNN
F 1 "BLM15GG471" V 7744 1450 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 7650 1450 50  0001 C CNN
F 3 "~" H 7650 1450 50  0001 C CNN
	1    7650 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C511
U 1 1 5F8C9CFF
P 7900 1700
F 0 "C511" H 7992 1746 50  0000 L CNN
F 1 "10 uF" H 7992 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7900 1700 50  0001 C CNN
F 3 "~" H 7900 1700 50  0001 C CNN
	1    7900 1700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0177
U 1 1 5F8CB528
P 7900 1900
F 0 "#PWR0177" H 7900 1650 50  0001 C CNN
F 1 "GND" H 7905 1727 50  0000 C CNN
F 2 "" H 7900 1900 50  0001 C CNN
F 3 "" H 7900 1900 50  0001 C CNN
	1    7900 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7900 1900 7900 1800
Wire Wire Line
	7350 1450 7550 1450
Connection ~ 7350 1450
Wire Wire Line
	7750 1450 7900 1450
Wire Wire Line
	7900 1450 7900 1600
Wire Wire Line
	7900 1250 7900 1450
Connection ~ 7900 1450
Wire Wire Line
	5950 2400 6100 2400
Wire Wire Line
	6100 2400 6100 2200
Connection ~ 6100 2200
$Comp
L Device:C_Small C506
U 1 1 5F8D81C9
P 6100 2850
F 0 "C506" H 6192 2896 50  0000 L CNN
F 1 "1 nF" H 6192 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6100 2850 50  0001 C CNN
F 3 "~" H 6100 2850 50  0001 C CNN
	1    6100 2850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0178
U 1 1 5F8D84EF
P 6100 3000
F 0 "#PWR0178" H 6100 2750 50  0001 C CNN
F 1 "GND" H 6105 2827 50  0000 C CNN
F 2 "" H 6100 3000 50  0001 C CNN
F 3 "" H 6100 3000 50  0001 C CNN
	1    6100 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2800 5450 2850
Wire Wire Line
	5450 2850 5500 2850
Wire Wire Line
	5550 2850 5550 2800
Wire Wire Line
	5500 2850 5500 3000
Connection ~ 5500 2850
Wire Wire Line
	5500 2850 5550 2850
Wire Wire Line
	6100 2550 6100 2750
Wire Wire Line
	6100 2950 6100 3000
Wire Wire Line
	5950 2550 6100 2550
$Comp
L Device:C_Small C503
U 1 1 5F8ED168
P 4100 4850
F 0 "C503" H 4192 4896 50  0000 L CNN
F 1 "1 uF" H 4192 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4100 4850 50  0001 C CNN
F 3 "~" H 4100 4850 50  0001 C CNN
	1    4100 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4300 5000 4100 5000
Wire Wire Line
	4100 5000 4100 4950
Wire Wire Line
	4300 4700 4100 4700
Wire Wire Line
	4100 4700 4100 4750
$Comp
L Connector:TestPoint TP503
U 1 1 5F8F0E93
P 5800 4150
F 0 "TP503" H 5858 4268 50  0000 L CNN
F 1 "TestPoint" H 5858 4177 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5015_Micro-Minature" H 6000 4150 50  0001 C CNN
F 3 "~" H 6000 4150 50  0001 C CNN
	1    5800 4150
	-1   0    0    -1  
$EndComp
$Comp
L power:VPP #PWR0179
U 1 1 5F91DCA9
P 3650 1300
F 0 "#PWR0179" H 3650 1150 50  0001 C CNN
F 1 "VPP" H 3665 1473 50  0000 C CNN
F 2 "" H 3650 1300 50  0001 C CNN
F 3 "" H 3650 1300 50  0001 C CNN
	1    3650 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1450 3650 1450
Wire Wire Line
	3650 1450 3650 1300
$Comp
L power:VPP #PWR0180
U 1 1 5F937F00
P 4150 3650
F 0 "#PWR0180" H 4150 3500 50  0001 C CNN
F 1 "VPP" H 4165 3823 50  0000 C CNN
F 2 "" H 4150 3650 50  0001 C CNN
F 3 "" H 4150 3650 50  0001 C CNN
	1    4150 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0181
U 1 1 5F94F0BD
P 4750 5300
F 0 "#PWR0181" H 4750 5050 50  0001 C CNN
F 1 "GND" H 4755 5127 50  0000 C CNN
F 2 "" H 4750 5300 50  0001 C CNN
F 3 "" H 4750 5300 50  0001 C CNN
	1    4750 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5200 4700 5250
Wire Wire Line
	4700 5250 4750 5250
Wire Wire Line
	4800 5250 4800 5200
Wire Wire Line
	4750 5250 4750 5300
Connection ~ 4750 5250
Wire Wire Line
	4750 5250 4800 5250
$Comp
L Device:LED_Small D501
U 1 1 5F962842
P 8900 1600
F 0 "D501" V 8946 1530 50  0000 R CNN
F 1 "RED" V 8855 1530 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 8900 1600 50  0001 C CNN
F 3 "~" V 8900 1600 50  0001 C CNN
	1    8900 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8900 1200 8900 1500
$Comp
L Device:R_Small R507
U 1 1 5F966221
P 8900 2000
F 0 "R507" H 8959 2046 50  0000 L CNN
F 1 "10k" H 8959 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8900 2000 50  0001 C CNN
F 3 "~" H 8900 2000 50  0001 C CNN
	1    8900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1700 8900 1900
$Comp
L power:GND #PWR0182
U 1 1 5F967F45
P 8900 2250
F 0 "#PWR0182" H 8900 2000 50  0001 C CNN
F 1 "GND" H 8905 2077 50  0000 C CNN
F 2 "" H 8900 2250 50  0001 C CNN
F 3 "" H 8900 2250 50  0001 C CNN
	1    8900 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2250 8900 2100
$Comp
L Device:LED_Small D502
U 1 1 5F9733EC
P 9550 1600
F 0 "D502" V 9504 1698 50  0000 L CNN
F 1 "RED" V 9595 1698 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 9550 1600 50  0001 C CNN
F 3 "~" V 9550 1600 50  0001 C CNN
	1    9550 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R508
U 1 1 5F973877
P 9550 2000
F 0 "R508" H 9609 2046 50  0000 L CNN
F 1 "10k" H 9609 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9550 2000 50  0001 C CNN
F 3 "~" H 9550 2000 50  0001 C CNN
	1    9550 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0183
U 1 1 5F973C00
P 9550 1200
F 0 "#PWR0183" H 9550 950 50  0001 C CNN
F 1 "GND" H 9555 1027 50  0000 C CNN
F 2 "" H 9550 1200 50  0001 C CNN
F 3 "" H 9550 1200 50  0001 C CNN
	1    9550 1200
	-1   0    0    1   
$EndComp
$Comp
L power:-3V3 #PWR0184
U 1 1 5F976BE4
P 6650 4250
F 0 "#PWR0184" H 6650 4350 50  0001 C CNN
F 1 "-3V3" H 6665 4423 50  0000 C CNN
F 2 "" H 6650 4250 50  0001 C CNN
F 3 "" H 6650 4250 50  0001 C CNN
	1    6650 4250
	1    0    0    -1  
$EndComp
$Comp
L power:-3V3 #PWR0185
U 1 1 5F978178
P 9550 2250
F 0 "#PWR0185" H 9550 2350 50  0001 C CNN
F 1 "-3V3" H 9565 2423 50  0000 C CNN
F 2 "" H 9550 2250 50  0001 C CNN
F 3 "" H 9550 2250 50  0001 C CNN
	1    9550 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9550 2250 9550 2100
Wire Wire Line
	9550 1700 9550 1900
Wire Wire Line
	9550 1500 9550 1200
$Comp
L power:+3.3V #PWR0186
U 1 1 5F9822D1
P 8900 1200
F 0 "#PWR0186" H 8900 1050 50  0001 C CNN
F 1 "+3.3V" H 8915 1373 50  0000 C CNN
F 2 "" H 8900 1200 50  0001 C CNN
F 3 "" H 8900 1200 50  0001 C CNN
	1    8900 1200
	1    0    0    -1  
$EndComp
$Comp
L vna:-1V8 #PWR?
U 1 1 601B950B
P 10700 4250
AR Path="/5F265A44/601B950B" Ref="#PWR?"  Part="1" 
AR Path="/5F2678A0/601B950B" Ref="#PWR0187"  Part="1" 
F 0 "#PWR0187" H 10700 4100 50  0001 C CNN
F 1 "-1V8" H 10715 4423 50  0000 C CNN
F 2 "" H 10700 4250 50  0001 C CNN
F 3 "" H 10700 4250 50  0001 C CNN
	1    10700 4250
	1    0    0    -1  
$EndComp
$Comp
L vna:TPS72301DB U503
U 1 1 603E7A62
P 8450 4500
F 0 "U503" H 8450 4865 50  0000 C CNN
F 1 "TPS72301DB" H 8450 4774 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 8450 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps723.pdf" H 8450 4600 50  0001 C CNN
	1    8450 4500
	1    0    0    -1  
$EndComp
$Comp
L power:-3V3 #PWR0188
U 1 1 603F31AE
P 7700 4300
F 0 "#PWR0188" H 7700 4400 50  0001 C CNN
F 1 "-3V3" H 7715 4473 50  0000 C CNN
F 2 "" H 7700 4300 50  0001 C CNN
F 3 "" H 7700 4300 50  0001 C CNN
	1    7700 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 4300 7700 4400
Wire Wire Line
	3650 2550 3650 1450
Wire Wire Line
	3650 2550 3850 2550
Connection ~ 3650 1450
$Comp
L Device:R_Small R502
U 1 1 6054044D
P 4000 4300
F 0 "R502" V 3804 4300 50  0000 C CNN
F 1 "0" V 3895 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4000 4300 50  0001 C CNN
F 3 "~" H 4000 4300 50  0001 C CNN
	1    4000 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2550 4650 2550
Wire Wire Line
	4300 4400 4150 4400
Wire Wire Line
	4150 3650 4150 4100
Wire Wire Line
	4300 4500 4000 4500
Wire Wire Line
	4000 4500 4000 4400
Wire Wire Line
	4000 4200 4000 4100
Wire Wire Line
	4000 4100 4150 4100
Connection ~ 4150 4100
Wire Wire Line
	4150 4100 4150 4400
Text HLabel 1150 1450 0    50   Input ~ 0
VIN
$Comp
L power:GND #PWR0189
U 1 1 5F6896F1
P 8450 5150
F 0 "#PWR0189" H 8450 4900 50  0001 C CNN
F 1 "GND" H 8455 4977 50  0000 C CNN
F 2 "" H 8450 5150 50  0001 C CNN
F 3 "" H 8450 5150 50  0001 C CNN
	1    8450 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5100 8450 5150
$Comp
L Device:C_Small C505
U 1 1 5F68ED26
P 5500 5100
F 0 "C505" H 5592 5146 50  0000 L CNN
F 1 "10 uF" H 5592 5055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5500 5100 50  0001 C CNN
F 3 "~" H 5500 5100 50  0001 C CNN
	1    5500 5100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0190
U 1 1 5F68F178
P 5500 5300
F 0 "#PWR0190" H 5500 5050 50  0001 C CNN
F 1 "GND" H 5505 5127 50  0000 C CNN
F 2 "" H 5500 5300 50  0001 C CNN
F 3 "" H 5500 5300 50  0001 C CNN
	1    5500 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5200 5500 5300
Wire Wire Line
	5100 4800 5500 4800
Wire Wire Line
	5500 4800 5500 5000
$Comp
L Device:R_Small R504
U 1 1 5F695BEA
P 5800 4500
F 0 "R504" V 5604 4500 50  0000 C CNN
F 1 "88.7k" V 5695 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5800 4500 50  0001 C CNN
F 3 "~" H 5800 4500 50  0001 C CNN
	1    5800 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R505
U 1 1 5F6968E2
P 5800 4850
F 0 "R505" V 5604 4850 50  0000 C CNN
F 1 "49.9k" V 5695 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5800 4850 50  0001 C CNN
F 3 "~" H 5800 4850 50  0001 C CNN
	1    5800 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4600 5800 4600
$Comp
L power:GND #PWR0191
U 1 1 5F69B1BA
P 5800 5300
F 0 "#PWR0191" H 5800 5050 50  0001 C CNN
F 1 "GND" H 5805 5127 50  0000 C CNN
F 2 "" H 5800 5300 50  0001 C CNN
F 3 "" H 5800 5300 50  0001 C CNN
	1    5800 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5300 5800 4950
Wire Wire Line
	5800 4750 5800 4600
Connection ~ 5800 4600
Wire Wire Line
	5100 4400 5800 4400
$Comp
L Device:C_Small C507
U 1 1 5F6A18F5
P 6200 4850
F 0 "C507" H 5850 4900 50  0000 L CNN
F 1 "10 uF" H 5800 4800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6200 4850 50  0001 C CNN
F 3 "~" H 6200 4850 50  0001 C CNN
	1    6200 4850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0192
U 1 1 5F6A1CDE
P 6200 5300
F 0 "#PWR0192" H 6200 5050 50  0001 C CNN
F 1 "GND" H 6205 5127 50  0000 C CNN
F 2 "" H 6200 5300 50  0001 C CNN
F 3 "" H 6200 5300 50  0001 C CNN
	1    6200 5300
	1    0    0    -1  
$EndComp
Connection ~ 5800 4400
Wire Wire Line
	5800 4150 5800 4400
Wire Wire Line
	5800 4400 6200 4400
Wire Wire Line
	6200 4950 6200 5300
Wire Wire Line
	6200 4750 6200 4400
Connection ~ 6200 4400
$Comp
L Device:R_Small R506
U 1 1 5F6BD795
P 6450 4400
F 0 "R506" V 6254 4400 50  0000 C CNN
F 1 "0" V 6345 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6450 4400 50  0001 C CNN
F 3 "~" H 6450 4400 50  0001 C CNN
	1    6450 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 4400 6350 4400
Wire Wire Line
	6550 4400 6650 4400
Wire Wire Line
	6650 4250 6650 4400
$Comp
L Device:C_Small C501
U 1 1 5F6C541F
P 3600 4850
F 0 "C501" H 3692 4896 50  0000 L CNN
F 1 "10 uF" H 3692 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3600 4850 50  0001 C CNN
F 3 "~" H 3600 4850 50  0001 C CNN
	1    3600 4850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0193
U 1 1 5F6C5BB7
P 3600 5300
F 0 "#PWR0193" H 3600 5050 50  0001 C CNN
F 1 "GND" H 3605 5127 50  0000 C CNN
F 2 "" H 3600 5300 50  0001 C CNN
F 3 "" H 3600 5300 50  0001 C CNN
	1    3600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4950 3600 5300
Wire Wire Line
	3600 4750 3600 4100
Wire Wire Line
	3600 4100 4000 4100
Connection ~ 4000 4100
$Comp
L Device:C_Small C510
U 1 1 5F6DCDCB
P 7700 4850
F 0 "C510" H 7792 4896 50  0000 L CNN
F 1 "1 uF" H 7792 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7700 4850 50  0001 C CNN
F 3 "~" H 7700 4850 50  0001 C CNN
	1    7700 4850
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C512
U 1 1 5F6E2542
P 10100 4800
F 0 "C512" H 10192 4846 50  0000 L CNN
F 1 "10 uF" H 10192 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10100 4800 50  0001 C CNN
F 3 "~" H 10100 4800 50  0001 C CNN
	1    10100 4800
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R509
U 1 1 5F6E2548
P 9600 4550
F 0 "R509" V 9404 4550 50  0000 C CNN
F 1 "33k" V 9495 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9600 4550 50  0001 C CNN
F 3 "~" H 9600 4550 50  0001 C CNN
	1    9600 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R510
U 1 1 5F6E254E
P 9600 4950
F 0 "R510" V 9404 4950 50  0000 C CNN
F 1 "64.9k" V 9495 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9600 4950 50  0001 C CNN
F 3 "~" H 9600 4950 50  0001 C CNN
	1    9600 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4700 9600 4700
Wire Wire Line
	9600 4850 9600 4700
Wire Wire Line
	8900 4400 9600 4400
Connection ~ 9600 4400
$Comp
L power:GND #PWR0194
U 1 1 5F6F4A4E
P 9600 5150
F 0 "#PWR0194" H 9600 4900 50  0001 C CNN
F 1 "GND" H 9605 4977 50  0000 C CNN
F 2 "" H 9600 5150 50  0001 C CNN
F 3 "" H 9600 5150 50  0001 C CNN
	1    9600 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 5150 9600 5050
$Comp
L power:GND #PWR0195
U 1 1 5F6F9FB4
P 10100 5150
F 0 "#PWR0195" H 10100 4900 50  0001 C CNN
F 1 "GND" H 10105 4977 50  0000 C CNN
F 2 "" H 10100 5150 50  0001 C CNN
F 3 "" H 10100 5150 50  0001 C CNN
	1    10100 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 4900 10100 5150
Wire Wire Line
	9600 4400 10100 4400
Wire Wire Line
	10100 4400 10100 4700
$Comp
L power:GND #PWR0196
U 1 1 5F70E98E
P 7700 5150
F 0 "#PWR0196" H 7700 4900 50  0001 C CNN
F 1 "GND" H 7705 4977 50  0000 C CNN
F 2 "" H 7700 5150 50  0001 C CNN
F 3 "" H 7700 5150 50  0001 C CNN
	1    7700 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 4950 7700 5150
Wire Wire Line
	7700 4750 7700 4600
Connection ~ 7700 4400
Wire Wire Line
	7700 4400 8000 4400
Text Notes 7950 3900 0    50   ~ 0
Vout = -1.186 * (1 + Rout_fb / Rfb_gnd)\nRout_fb + Rfb_gnd = 100k
Text Notes 4900 3900 0    50   ~ 0
Vout = -1.22 * ((Rout_fb + Rfb_gnd) / Rfb_gnd)\nRfb_gnd > 50k\n
$Comp
L Connector:TestPoint TP505
U 1 1 5F7276ED
P 10100 4250
F 0 "TP505" H 10158 4368 50  0000 L CNN
F 1 "TestPoint" H 10158 4277 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5015_Micro-Minature" H 10300 4250 50  0001 C CNN
F 3 "~" H 10300 4250 50  0001 C CNN
	1    10100 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10100 4250 10100 4400
Connection ~ 10100 4400
Wire Wire Line
	9600 4650 9600 4700
Connection ~ 9600 4700
Wire Wire Line
	9600 4450 9600 4400
$Comp
L Device:L_Small L502
U 1 1 5F396605
P 10400 4400
F 0 "L502" V 10585 4400 50  0000 C CNN
F 1 "BLM15GG471" V 10494 4400 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 10400 4400 50  0001 C CNN
F 3 "~" H 10400 4400 50  0001 C CNN
	1    10400 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10100 4400 10300 4400
Wire Wire Line
	10500 4400 10700 4400
Wire Wire Line
	10700 4250 10700 4400
Text Notes 7250 5650 0    50   ~ 0
"Driving EN over 1.5 V or below –1.5 V turns on the regulator."
Wire Wire Line
	8000 4600 7700 4600
Connection ~ 7700 4600
Wire Wire Line
	7700 4600 7700 4400
$Comp
L Device:D_Small D?
U 1 1 5F4B5FE0
P 1500 1450
AR Path="/5F265927/5F4B5FE0" Ref="D?"  Part="1" 
AR Path="/5F4ECD93/5F4B5FE0" Ref="D?"  Part="1" 
AR Path="/5F2678A0/5F4B5FE0" Ref="D503"  Part="1" 
F 0 "D503" V 1546 1380 50  0000 R CNN
F 1 "B3L30LP" V 1455 1380 50  0000 R CNN
F 2 "vna:AP02002_DFN8_DIODE" V 1500 1450 50  0001 C CNN
F 3 "~" V 1500 1450 50  0001 C CNN
	1    1500 1450
	-1   0    0    1   
$EndComp
$Comp
L Device:L_Small L503
U 1 1 5F4C31C5
P 1900 1450
F 0 "L503" V 2085 1450 50  0000 C CNN
F 1 "1 uH, LPWI252010S1R0T" V 2000 1200 50  0000 C CNN
F 2 "Inductor_SMD:L_1008_2520Metric" H 1900 1450 50  0001 C CNN
F 3 "~" H 1900 1450 50  0001 C CNN
	1    1900 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1150 1450 1400 1450
Wire Wire Line
	1600 1450 1700 1450
$Comp
L power:GND #PWR0282
U 1 1 5F4CE732
P 1700 2050
F 0 "#PWR0282" H 1700 1800 50  0001 C CNN
F 1 "GND" H 1705 1877 50  0000 C CNN
F 2 "" H 1700 2050 50  0001 C CNN
F 3 "" H 1700 2050 50  0001 C CNN
	1    1700 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1450 1700 1650
Connection ~ 1700 1450
Wire Wire Line
	1700 1450 1800 1450
Wire Wire Line
	1700 1850 1700 2050
$Comp
L Device:CP_Small C514
U 1 1 5F4FEB95
P 3050 1750
F 0 "C514" H 3142 1796 50  0000 L CNN
F 1 "270 uF" H 3142 1705 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.9" H 3050 1750 50  0001 C CNN
F 3 "~" H 3050 1750 50  0001 C CNN
F 4 "875105245014" H 3050 1750 50  0001 C CNN "MPN"
	1    3050 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0284
U 1 1 5F4FEEA6
P 3050 2050
F 0 "#PWR0284" H 3050 1800 50  0001 C CNN
F 1 "GND" H 3055 1877 50  0000 C CNN
F 2 "" H 3050 2050 50  0001 C CNN
F 3 "" H 3050 2050 50  0001 C CNN
	1    3050 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1850 3050 2050
Wire Wire Line
	3050 1650 3050 1450
Connection ~ 3050 1450
Wire Wire Line
	3050 1450 3650 1450
$Comp
L Device:D_Zener_Small D504
U 1 1 5F51275A
P 1700 1750
F 0 "D504" V 1654 1820 50  0000 L CNN
F 1 "5.1V" V 1745 1820 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323" V 1700 1750 50  0001 C CNN
F 3 "~" V 1700 1750 50  0001 C CNN
	1    1700 1750
	0    1    1    0   
$EndComp
Connection ~ 4900 1450
Wire Wire Line
	4900 1300 4900 1450
$Comp
L Connector:TestPoint TP?
U 1 1 5F74588A
P 4900 1300
AR Path="/5F4ECD93/5F74588A" Ref="TP?"  Part="1" 
AR Path="/5F2678A0/5F74588A" Ref="TP502"  Part="1" 
F 0 "TP502" H 4958 1418 50  0000 L CNN
F 1 "TestPoint" H 4958 1327 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5015_Micro-Minature" H 5100 1300 50  0001 C CNN
F 3 "~" H 5100 1300 50  0001 C CNN
	1    4900 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1450 3050 1450
Wire Wire Line
	2000 1450 2550 1450
Connection ~ 2550 1450
Wire Wire Line
	2550 1650 2550 1450
Wire Wire Line
	2550 2050 2550 1850
$Comp
L power:GND #PWR0283
U 1 1 5F4FAD3F
P 2550 2050
F 0 "#PWR0283" H 2550 1800 50  0001 C CNN
F 1 "GND" H 2555 1877 50  0000 C CNN
F 2 "" H 2550 2050 50  0001 C CNN
F 3 "" H 2550 2050 50  0001 C CNN
	1    2550 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C513
U 1 1 5F4FA838
P 2550 1750
F 0 "C513" H 2642 1796 50  0000 L CNN
F 1 "270 uF" H 2642 1705 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.9" H 2550 1750 50  0001 C CNN
F 3 "~" H 2550 1750 50  0001 C CNN
F 4 "875105245014" H 2550 1750 50  0001 C CNN "MPN"
	1    2550 1750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
