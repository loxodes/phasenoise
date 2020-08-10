EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 5400 6050 0    39   ~ 0
"The last shunt capacitor of the loop filter should be placed close to the Vtune pin."
$Comp
L power:GND #PWR0112
U 1 1 5F223E44
P 5300 5650
F 0 "#PWR0112" H 5300 5400 50  0001 C CNN
F 1 "GND" H 5305 5477 50  0000 C CNN
F 2 "" H 5300 5650 50  0001 C CNN
F 3 "" H 5300 5650 50  0001 C CNN
	1    5300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5450 4800 5550
Wire Wire Line
	4800 5550 4900 5550
Wire Wire Line
	5800 5550 5800 5450
Wire Wire Line
	5300 5650 5300 5550
Connection ~ 5300 5550
Wire Wire Line
	5300 5550 5400 5550
Wire Wire Line
	5300 5550 5300 5450
Wire Wire Line
	4900 5450 4900 5550
Connection ~ 4900 5550
Wire Wire Line
	4900 5550 5000 5550
Wire Wire Line
	5000 5450 5000 5550
Connection ~ 5000 5550
Wire Wire Line
	5100 5450 5100 5550
Wire Wire Line
	5000 5550 5100 5550
Connection ~ 5100 5550
Wire Wire Line
	5100 5550 5200 5550
Wire Wire Line
	5200 5450 5200 5550
Connection ~ 5200 5550
Wire Wire Line
	5200 5550 5300 5550
Wire Wire Line
	5400 5450 5400 5550
Connection ~ 5400 5550
Wire Wire Line
	5400 5550 5500 5550
Wire Wire Line
	5500 5450 5500 5550
Connection ~ 5500 5550
Wire Wire Line
	5500 5550 5600 5550
Wire Wire Line
	5600 5450 5600 5550
Connection ~ 5600 5550
Wire Wire Line
	5600 5550 5700 5550
Wire Wire Line
	5700 5450 5700 5550
Connection ~ 5700 5550
Wire Wire Line
	5700 5550 5800 5550
$Comp
L vna:LMX2594_pn U202
U 1 1 5F22D9C3
P 5300 4150
F 0 "U202" H 4100 5700 50  0000 L CNN
F 1 "LMX2594" H 4100 5600 50  0000 L CNN
F 2 "Package_DFN_QFN:Texas_S-PVQFN-N40_EP4.6x4.6mm" H 5250 6050 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/lmx2594.pdf" H 5300 4150 50  0001 C CNN
	1    5300 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C214
U 1 1 5F2355E7
P 6500 2100
F 0 "C214" H 6592 2146 50  0000 L CNN
F 1 "1 uF" H 6592 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6500 2100 50  0001 C CNN
F 3 "~" H 6500 2100 50  0001 C CNN
	1    6500 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C210
U 1 1 5F240856
P 3900 5300
F 0 "C210" H 3992 5346 50  0000 L CNN
F 1 "10 uF" H 3992 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3900 5300 50  0001 C CNN
F 3 "~" H 3900 5300 50  0001 C CNN
	1    3900 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C208
U 1 1 5F242D5D
P 3500 5300
F 0 "C208" H 3592 5346 50  0000 L CNN
F 1 "10 uF" H 3592 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3500 5300 50  0001 C CNN
F 3 "~" H 3500 5300 50  0001 C CNN
	1    3500 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5F244121
P 3900 5650
F 0 "#PWR0113" H 3900 5400 50  0001 C CNN
F 1 "GND" H 3905 5477 50  0000 C CNN
F 2 "" H 3900 5650 50  0001 C CNN
F 3 "" H 3900 5650 50  0001 C CNN
	1    3900 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5400 3900 5650
$Comp
L power:GND #PWR0114
U 1 1 5F246092
P 3500 5650
F 0 "#PWR0114" H 3500 5400 50  0001 C CNN
F 1 "GND" H 3505 5477 50  0000 C CNN
F 2 "" H 3500 5650 50  0001 C CNN
F 3 "" H 3500 5650 50  0001 C CNN
	1    3500 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5650 3500 5400
Wire Wire Line
	4200 5050 3900 5050
Wire Wire Line
	3900 5050 3900 5200
Wire Wire Line
	4200 4950 3500 4950
Wire Wire Line
	3500 4950 3500 5200
$Comp
L Device:C_Small C205
U 1 1 5F247131
P 3100 5300
F 0 "C205" H 3192 5346 50  0000 L CNN
F 1 "1 uF" H 3192 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3100 5300 50  0001 C CNN
F 3 "~" H 3100 5300 50  0001 C CNN
	1    3100 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5F247545
P 3100 5650
F 0 "#PWR0115" H 3100 5400 50  0001 C CNN
F 1 "GND" H 3105 5477 50  0000 C CNN
F 2 "" H 3100 5650 50  0001 C CNN
F 3 "" H 3100 5650 50  0001 C CNN
	1    3100 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 5650 3100 5400
Wire Wire Line
	4200 4850 3100 4850
Wire Wire Line
	3100 4850 3100 5200
$Comp
L Device:C_Small C204
U 1 1 5F2482EC
P 2700 5300
F 0 "C204" H 2792 5346 50  0000 L CNN
F 1 "1 uF" H 2792 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2700 5300 50  0001 C CNN
F 3 "~" H 2700 5300 50  0001 C CNN
	1    2700 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5F248776
P 2700 5650
F 0 "#PWR0116" H 2700 5400 50  0001 C CNN
F 1 "GND" H 2705 5477 50  0000 C CNN
F 2 "" H 2700 5650 50  0001 C CNN
F 3 "" H 2700 5650 50  0001 C CNN
	1    2700 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5650 2700 5400
Wire Wire Line
	4200 4750 2700 4750
Wire Wire Line
	2700 4750 2700 5200
$Comp
L Device:C_Small C203
U 1 1 5F24B918
P 2300 5300
F 0 "C203" H 2392 5346 50  0000 L CNN
F 1 "10 uF" H 2392 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2300 5300 50  0001 C CNN
F 3 "~" H 2300 5300 50  0001 C CNN
	1    2300 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4650 2300 4650
Wire Wire Line
	2300 4650 2300 5200
$Comp
L power:GND #PWR0117
U 1 1 5F24D937
P 2300 5650
F 0 "#PWR0117" H 2300 5400 50  0001 C CNN
F 1 "GND" H 2305 5477 50  0000 C CNN
F 2 "" H 2300 5650 50  0001 C CNN
F 3 "" H 2300 5650 50  0001 C CNN
	1    2300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5650 2300 5400
$Comp
L Device:C_Small C202
U 1 1 5F24E0B8
P 1900 5300
F 0 "C202" H 1992 5346 50  0000 L CNN
F 1 "1 uF" H 1992 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1900 5300 50  0001 C CNN
F 3 "~" H 1900 5300 50  0001 C CNN
	1    1900 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4550 1900 4550
Wire Wire Line
	1900 4550 1900 5200
$Comp
L power:GND #PWR0118
U 1 1 5F24F9FB
P 1900 5650
F 0 "#PWR0118" H 1900 5400 50  0001 C CNN
F 1 "GND" H 1905 5477 50  0000 C CNN
F 2 "" H 1900 5650 50  0001 C CNN
F 3 "" H 1900 5650 50  0001 C CNN
	1    1900 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5650 1900 5400
$Comp
L Device:C_Small C201
U 1 1 5F257830
P 1500 5300
F 0 "C201" H 1592 5346 50  0000 L CNN
F 1 "10 uF" H 1592 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1500 5300 50  0001 C CNN
F 3 "~" H 1500 5300 50  0001 C CNN
	1    1500 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5F257837
P 1500 5650
F 0 "#PWR0119" H 1500 5400 50  0001 C CNN
F 1 "GND" H 1505 5477 50  0000 C CNN
F 2 "" H 1500 5650 50  0001 C CNN
F 3 "" H 1500 5650 50  0001 C CNN
	1    1500 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5650 1500 5400
Wire Wire Line
	4200 4450 1500 4450
Wire Wire Line
	1500 4450 1500 5200
$Comp
L Device:C_Small C216
U 1 1 5F262EBB
P 6850 2100
F 0 "C216" H 6942 2146 50  0000 L CNN
F 1 "100 nF" H 6942 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6850 2100 50  0001 C CNN
F 3 "~" H 6850 2100 50  0001 C CNN
	1    6850 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5F2718C9
P 6500 2250
F 0 "#PWR0120" H 6500 2000 50  0001 C CNN
F 1 "GND" H 6505 2077 50  0000 C CNN
F 2 "" H 6500 2250 50  0001 C CNN
F 3 "" H 6500 2250 50  0001 C CNN
	1    6500 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2250 6500 2200
$Comp
L power:GND #PWR0121
U 1 1 5F27380A
P 6850 2250
F 0 "#PWR0121" H 6850 2000 50  0001 C CNN
F 1 "GND" H 6855 2077 50  0000 C CNN
F 2 "" H 6850 2250 50  0001 C CNN
F 3 "" H 6850 2250 50  0001 C CNN
	1    6850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2250 6850 2200
$Comp
L power:+3V3 #PWR0122
U 1 1 5F2780E8
P 4800 1350
F 0 "#PWR0122" H 4800 1200 50  0001 C CNN
F 1 "+3V3" H 4815 1523 50  0000 C CNN
F 2 "" H 4800 1350 50  0001 C CNN
F 3 "" H 4800 1350 50  0001 C CNN
	1    4800 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C213
U 1 1 5F281924
P 6050 2100
F 0 "C213" H 6142 2146 50  0000 L CNN
F 1 "1 uF" H 6142 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6050 2100 50  0001 C CNN
F 3 "~" H 6050 2100 50  0001 C CNN
	1    6050 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5F28192A
P 6050 2250
F 0 "#PWR0123" H 6050 2000 50  0001 C CNN
F 1 "GND" H 6055 2077 50  0000 C CNN
F 2 "" H 6050 2250 50  0001 C CNN
F 3 "" H 6050 2250 50  0001 C CNN
	1    6050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2250 6050 2200
$Comp
L Device:C_Small C211
U 1 1 5F264861
P 4100 2100
F 0 "C211" H 4192 2146 50  0000 L CNN
F 1 "1 uF" H 4192 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4100 2100 50  0001 C CNN
F 3 "~" H 4100 2100 50  0001 C CNN
	1    4100 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C212
U 1 1 5F26553D
P 4450 2100
F 0 "C212" H 4542 2146 50  0000 L CNN
F 1 "1 uF" H 4542 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4450 2100 50  0001 C CNN
F 3 "~" H 4450 2100 50  0001 C CNN
	1    4450 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5F27515C
P 4100 2250
F 0 "#PWR0124" H 4100 2000 50  0001 C CNN
F 1 "GND" H 4105 2077 50  0000 C CNN
F 2 "" H 4100 2250 50  0001 C CNN
F 3 "" H 4100 2250 50  0001 C CNN
	1    4100 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2250 4100 2200
$Comp
L power:GND #PWR0125
U 1 1 5F2771EA
P 4450 2250
F 0 "#PWR0125" H 4450 2000 50  0001 C CNN
F 1 "GND" H 4455 2077 50  0000 C CNN
F 2 "" H 4450 2250 50  0001 C CNN
F 3 "" H 4450 2250 50  0001 C CNN
	1    4450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2250 4450 2200
Wire Wire Line
	3750 2250 3750 2200
$Comp
L power:GND #PWR0126
U 1 1 5F2744B8
P 3750 2250
F 0 "#PWR0126" H 3750 2000 50  0001 C CNN
F 1 "GND" H 3755 2077 50  0000 C CNN
F 2 "" H 3750 2250 50  0001 C CNN
F 3 "" H 3750 2250 50  0001 C CNN
	1    3750 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C209
U 1 1 5F263C62
P 3750 2100
F 0 "C209" H 3842 2146 50  0000 L CNN
F 1 "1 uF" H 3842 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3750 2100 50  0001 C CNN
F 3 "~" H 3750 2100 50  0001 C CNN
	1    3750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1350 4800 1950
Wire Wire Line
	4800 1950 4450 1950
Wire Wire Line
	4450 1950 4450 2000
Connection ~ 4800 1950
Wire Wire Line
	4800 1950 4800 2700
Wire Wire Line
	5000 2700 5000 1850
$Comp
L power:+3V3 #PWR0127
U 1 1 5F29C982
P 5000 1350
F 0 "#PWR0127" H 5000 1200 50  0001 C CNN
F 1 "+3V3" H 5015 1523 50  0000 C CNN
F 2 "" H 5000 1350 50  0001 C CNN
F 3 "" H 5000 1350 50  0001 C CNN
	1    5000 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1850 4100 1850
Wire Wire Line
	4100 1850 4100 2000
Connection ~ 5000 1850
Wire Wire Line
	5000 1850 5000 1350
$Comp
L power:+3V3 #PWR0128
U 1 1 5F29F719
P 5200 1350
F 0 "#PWR0128" H 5200 1200 50  0001 C CNN
F 1 "+3V3" H 5215 1523 50  0000 C CNN
F 2 "" H 5200 1350 50  0001 C CNN
F 3 "" H 5200 1350 50  0001 C CNN
	1    5200 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2700 5200 1750
Wire Wire Line
	5200 1750 3750 1750
Wire Wire Line
	3750 1750 3750 2000
Connection ~ 5200 1750
Wire Wire Line
	5200 1750 5200 1350
Wire Wire Line
	5400 2700 5400 1750
Wire Wire Line
	5400 1750 6850 1750
Wire Wire Line
	6850 1750 6850 2000
Wire Wire Line
	5600 2700 5600 1850
Wire Wire Line
	5600 1850 6500 1850
Wire Wire Line
	6500 1850 6500 2000
Wire Wire Line
	5800 2700 5800 1950
Wire Wire Line
	5800 1950 6050 1950
Wire Wire Line
	6050 1950 6050 2000
$Comp
L power:+3V3 #PWR0129
U 1 1 5F2BD105
P 5400 1350
F 0 "#PWR0129" H 5400 1200 50  0001 C CNN
F 1 "+3V3" H 5415 1523 50  0000 C CNN
F 2 "" H 5400 1350 50  0001 C CNN
F 3 "" H 5400 1350 50  0001 C CNN
	1    5400 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0130
U 1 1 5F2BD10B
P 5600 1350
F 0 "#PWR0130" H 5600 1200 50  0001 C CNN
F 1 "+3V3" H 5615 1523 50  0000 C CNN
F 2 "" H 5600 1350 50  0001 C CNN
F 3 "" H 5600 1350 50  0001 C CNN
	1    5600 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0131
U 1 1 5F2BD111
P 5800 1350
F 0 "#PWR0131" H 5800 1200 50  0001 C CNN
F 1 "+3V3" H 5815 1523 50  0000 C CNN
F 2 "" H 5800 1350 50  0001 C CNN
F 3 "" H 5800 1350 50  0001 C CNN
	1    5800 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1350 5400 1750
Connection ~ 5400 1750
Wire Wire Line
	5600 1350 5600 1850
Connection ~ 5600 1850
Wire Wire Line
	5800 1350 5800 1950
Connection ~ 5800 1950
$Comp
L power:GND #PWR0132
U 1 1 5F2D4214
P 4000 3800
F 0 "#PWR0132" H 4000 3550 50  0001 C CNN
F 1 "GND" V 4005 3672 50  0000 R CNN
F 2 "" H 4000 3800 50  0001 C CNN
F 3 "" H 4000 3800 50  0001 C CNN
	1    4000 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 3800 4100 3800
Wire Wire Line
	4200 3900 4100 3900
Wire Wire Line
	4100 3900 4100 3800
Connection ~ 4100 3800
Wire Wire Line
	4100 3800 4000 3800
Wire Wire Line
	4200 3700 4100 3700
Wire Wire Line
	4100 3700 4100 3800
$Comp
L Device:C_Small C206
U 1 1 5F2DB5AF
P 3500 4100
F 0 "C206" V 3450 3950 50  0000 C CNN
F 1 "10 nF" V 3450 4250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3500 4100 50  0001 C CNN
F 3 "~" H 3500 4100 50  0001 C CNN
	1    3500 4100
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C207
U 1 1 5F2DBC0F
P 3500 4250
F 0 "C207" V 3450 4100 50  0000 C CNN
F 1 "10 nF" V 3450 4400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3500 4250 50  0001 C CNN
F 3 "~" H 3500 4250 50  0001 C CNN
	1    3500 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R202
U 1 1 5F2DF2DA
P 3150 4250
F 0 "R202" V 3050 4300 50  0000 L CNN
F 1 "50" V 3050 4150 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3150 4250 50  0001 C CNN
F 3 "~" H 3150 4250 50  0001 C CNN
	1    3150 4250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5F2E11A6
P 2900 4250
F 0 "#PWR0133" H 2900 4000 50  0001 C CNN
F 1 "GND" V 2905 4122 50  0000 R CNN
F 2 "" H 2900 4250 50  0001 C CNN
F 3 "" H 2900 4250 50  0001 C CNN
	1    2900 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 4250 3050 4250
Wire Wire Line
	3250 4250 3400 4250
Wire Wire Line
	3600 4250 4200 4250
Wire Wire Line
	3600 4100 4200 4100
Text HLabel 2350 4100 0    59   Input ~ 0
REF_IN
$Comp
L vna:VEMI65AB-HCI U201
U 1 1 5F2FEFFE
P 3050 3200
F 0 "U201" H 3050 3715 50  0000 C CNN
F 1 "VEMI65AB-HCI" H 3050 3624 50  0000 C CNN
F 2 "vna:LLP2513-13L" H 3100 3000 50  0001 C CNN
F 3 "" H 3100 3000 50  0001 C CNN
	1    3050 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 5F30071E
P 3050 3800
F 0 "#PWR0134" H 3050 3550 50  0001 C CNN
F 1 "GND" H 3055 3627 50  0000 C CNN
F 2 "" H 3050 3800 50  0001 C CNN
F 3 "" H 3050 3800 50  0001 C CNN
	1    3050 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3750 3050 3800
Wire Wire Line
	3400 3450 4200 3450
Wire Wire Line
	4200 3350 3400 3350
Wire Wire Line
	3400 3250 4200 3250
Wire Wire Line
	4200 3150 3400 3150
Wire Wire Line
	3400 3050 4200 3050
NoConn ~ 3400 2950
Text HLabel 2350 3050 0    59   Input ~ 0
LMX_CE
Wire Wire Line
	2350 4100 3400 4100
Text HLabel 2350 3150 0    59   Input ~ 0
LMX_SCK
Text HLabel 2350 3250 0    59   Input ~ 0
LMX_SDI
Text HLabel 1150 3350 0    59   Output ~ 0
LMX_MUXout
Text HLabel 2350 3450 0    59   Input ~ 0
LMX_CSB
Wire Wire Line
	2350 3050 2700 3050
Wire Wire Line
	2350 3150 2700 3150
Wire Wire Line
	2350 3250 2700 3250
Wire Wire Line
	2350 3450 2700 3450
$Comp
L Device:R_Small R203
U 1 1 5F33A873
P 3900 3600
F 0 "R203" V 4000 3650 50  0000 C CNN
F 1 "0" V 4000 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3900 3600 50  0001 C CNN
F 3 "~" H 3900 3600 50  0001 C CNN
	1    3900 3600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 5F33B9D2
P 3700 3600
F 0 "#PWR0135" H 3700 3350 50  0001 C CNN
F 1 "GND" V 3705 3472 50  0000 R CNN
F 2 "" H 3700 3600 50  0001 C CNN
F 3 "" H 3700 3600 50  0001 C CNN
	1    3700 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 3600 3800 3600
Wire Wire Line
	4000 3600 4200 3600
$Comp
L Device:C_Small C215
U 1 1 5F44ECFF
P 6600 5150
F 0 "C215" H 6692 5196 50  0000 L CNN
F 1 "1800 pF" H 6692 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6600 5150 50  0001 C CNN
F 3 "~" H 6600 5150 50  0001 C CNN
	1    6600 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 5F451881
P 6600 5300
F 0 "#PWR0136" H 6600 5050 50  0001 C CNN
F 1 "GND" H 6605 5127 50  0000 C CNN
F 2 "" H 6600 5300 50  0001 C CNN
F 3 "" H 6600 5300 50  0001 C CNN
	1    6600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4950 6600 4950
Wire Wire Line
	6600 4950 6600 5050
Wire Wire Line
	6600 5250 6600 5300
$Comp
L Device:C_Small C218
U 1 1 5F45E133
P 8650 5150
F 0 "C218" H 8742 5196 50  0000 L CNN
F 1 "DNI" H 8742 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8650 5150 50  0001 C CNN
F 3 "~" H 8650 5150 50  0001 C CNN
	1    8650 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R204
U 1 1 5F464449
P 7150 5100
F 0 "R204" H 7209 5146 50  0000 L CNN
F 1 "47k" H 7209 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 7150 5100 50  0001 C CNN
F 3 "~" H 7150 5100 50  0001 C CNN
	1    7150 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4950 7150 4950
Wire Wire Line
	7150 4950 7150 5000
Connection ~ 6600 4950
Wire Wire Line
	7150 5200 7150 5300
$Comp
L power:GND #PWR0137
U 1 1 5F4776BD
P 7150 5700
F 0 "#PWR0137" H 7150 5450 50  0001 C CNN
F 1 "GND" H 7155 5527 50  0000 C CNN
F 2 "" H 7150 5700 50  0001 C CNN
F 3 "" H 7150 5700 50  0001 C CNN
	1    7150 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5600 7150 5700
$Comp
L Device:C_Small C217
U 1 1 5F47B9B3
P 7500 5500
F 0 "C217" H 7592 5546 50  0000 L CNN
F 1 "10 nF" H 7592 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7500 5500 50  0001 C CNN
F 3 "~" H 7500 5500 50  0001 C CNN
	1    7500 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5300 7500 5300
Wire Wire Line
	7500 5300 7500 5400
Connection ~ 7150 5300
Wire Wire Line
	7150 5300 7150 5400
$Comp
L power:GND #PWR0138
U 1 1 5F480367
P 7500 5700
F 0 "#PWR0138" H 7500 5450 50  0001 C CNN
F 1 "GND" H 7505 5527 50  0000 C CNN
F 2 "" H 7500 5700 50  0001 C CNN
F 3 "" H 7500 5700 50  0001 C CNN
	1    7500 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5700 7500 5600
Connection ~ 7500 5300
Text HLabel 7950 5300 2    59   Output ~ 0
VT_TLM
$Comp
L power:GND #PWR0139
U 1 1 5F494E0E
P 8650 5300
F 0 "#PWR0139" H 8650 5050 50  0001 C CNN
F 1 "GND" H 8655 5127 50  0000 C CNN
F 2 "" H 8650 5300 50  0001 C CNN
F 3 "" H 8650 5300 50  0001 C CNN
	1    8650 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R205
U 1 1 5F46F082
P 7150 5500
F 0 "R205" H 7209 5546 50  0000 L CNN
F 1 "47k" H 7209 5455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 7150 5500 50  0001 C CNN
F 3 "~" H 7150 5500 50  0001 C CNN
	1    7150 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R207
U 1 1 5F4A3408
P 9100 4950
F 0 "R207" V 9296 4950 50  0000 C CNN
F 1 "0k" V 9205 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9100 4950 50  0001 C CNN
F 3 "~" H 9100 4950 50  0001 C CNN
	1    9100 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8650 4950 9000 4950
Connection ~ 8650 4950
Wire Wire Line
	8650 5300 8650 5250
Wire Wire Line
	8650 4950 8650 5050
$Comp
L Device:C_Small C219
U 1 1 5F4C34D0
P 9400 5150
F 0 "C219" H 9492 5196 50  0000 L CNN
F 1 "68 nF" H 9492 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9400 5150 50  0001 C CNN
F 3 "~" H 9400 5150 50  0001 C CNN
	1    9400 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R208
U 1 1 5F4C3A22
P 9400 5450
F 0 "R208" H 9459 5496 50  0000 L CNN
F 1 "68" H 9459 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9400 5450 50  0001 C CNN
F 3 "~" H 9400 5450 50  0001 C CNN
	1    9400 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0140
U 1 1 5F4C956E
P 9400 5700
F 0 "#PWR0140" H 9400 5450 50  0001 C CNN
F 1 "GND" H 9405 5527 50  0000 C CNN
F 2 "" H 9400 5700 50  0001 C CNN
F 3 "" H 9400 5700 50  0001 C CNN
	1    9400 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5700 9400 5600
Wire Wire Line
	9400 5350 9400 5250
Wire Wire Line
	9200 4950 9400 4950
Wire Wire Line
	9400 4950 9400 5050
$Comp
L Device:C_Small C220
U 1 1 5F4D7BAC
P 9900 5150
F 0 "C220" H 9992 5196 50  0000 L CNN
F 1 "390 pF" H 9992 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9900 5150 50  0001 C CNN
F 3 "~" H 9900 5150 50  0001 C CNN
	1    9900 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 4950 9900 4950
Wire Wire Line
	9900 4950 9900 5050
Connection ~ 9400 4950
Wire Wire Line
	9900 5250 9900 5600
Wire Wire Line
	9900 5600 9400 5600
Connection ~ 9400 5600
Wire Wire Line
	9400 5600 9400 5550
Wire Wire Line
	9900 4950 9900 4700
Wire Wire Line
	9900 4700 8650 4700
Wire Wire Line
	8650 4700 8650 4800
Connection ~ 9900 4950
$Sheet
S 6750 3100 950  600 
U 5F5F4CC2
F0 "lo_amp" 59
F1 "lo_amp.sch" 59
F2 "LO_OUT" O R 7700 3350 59 
F3 "IN_P" I L 6750 3200 59 
F4 "IN_N" I L 6750 3600 59 
$EndSheet
$Sheet
S 6750 3900 950  600 
U 5F6340DA
F0 "aux_output" 59
F1 "lo_amp.sch" 59
F2 "LO_OUT" O R 7700 4150 59 
F3 "IN_P" I L 6750 4000 59 
F4 "IN_N" I L 6750 4400 59 
$EndSheet
Wire Wire Line
	6400 4000 6750 4000
Wire Wire Line
	6400 4400 6750 4400
Wire Wire Line
	6400 3200 6750 3200
$Comp
L Connector:Conn_Coaxial J201
U 1 1 5F1FE536
P 8750 4150
F 0 "J201" H 8850 4125 50  0000 L CNN
F 1 "Conn_Coaxial" H 8850 4034 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Molex_73251-1153_EdgeMount_Horizontal" H 8750 4150 50  0001 C CNN
F 3 " ~" H 8750 4150 50  0001 C CNN
	1    8750 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0141
U 1 1 5F1FE53C
P 8750 4400
F 0 "#PWR0141" H 8750 4150 50  0001 C CNN
F 1 "GND" H 8755 4227 50  0000 C CNN
F 2 "" H 8750 4400 50  0001 C CNN
F 3 "" H 8750 4400 50  0001 C CNN
	1    8750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4400 8750 4350
Wire Wire Line
	7700 3350 8300 3350
Text HLabel 8300 3350 2    59   Output ~ 0
LO_REF_OUT
Wire Wire Line
	6400 3600 6750 3600
Wire Wire Line
	6400 4800 8650 4800
Wire Wire Line
	7150 4950 8650 4950
Connection ~ 7150 4950
$Comp
L Device:R_Small R206
U 1 1 5F2C17A1
P 7700 5300
F 0 "R206" V 7800 5350 50  0000 L CNN
F 1 "0" V 7800 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 7700 5300 50  0001 C CNN
F 3 "~" H 7700 5300 50  0001 C CNN
	1    7700 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7500 5300 7600 5300
Wire Wire Line
	7800 5300 7950 5300
Text Notes 7100 2750 0    50   ~ 10
TODO:\nCheck stability of LO amplifier with bias network
Text Notes 1700 4000 0    50   ~ 0
AC coupled, max input 2Vpp
Wire Wire Line
	7700 4150 8550 4150
$Comp
L Device:LED_Small D201
U 1 1 5F9888B2
P 1250 3550
F 0 "D201" V 1296 3480 50  0000 R CNN
F 1 "RED" V 1205 3480 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 1250 3550 50  0001 C CNN
F 3 "~" V 1250 3550 50  0001 C CNN
	1    1250 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R201
U 1 1 5F9888B9
P 1250 3950
F 0 "R201" H 1309 3996 50  0000 L CNN
F 1 "10k" H 1309 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1250 3950 50  0001 C CNN
F 3 "~" H 1250 3950 50  0001 C CNN
	1    1250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3650 1250 3850
$Comp
L power:GND #PWR0142
U 1 1 5F9888C0
P 1250 4200
F 0 "#PWR0142" H 1250 3950 50  0001 C CNN
F 1 "GND" H 1255 4027 50  0000 C CNN
F 2 "" H 1250 4200 50  0001 C CNN
F 3 "" H 1250 4200 50  0001 C CNN
	1    1250 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4200 1250 4050
Wire Wire Line
	1250 3350 2700 3350
Connection ~ 1250 3350
Wire Wire Line
	1250 3350 1250 3450
Wire Wire Line
	1150 3350 1250 3350
$EndSCHEMATC
