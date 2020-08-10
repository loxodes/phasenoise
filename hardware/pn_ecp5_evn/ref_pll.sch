EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 9
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
L power:+3.3VA #PWR?
U 1 1 5F4F26F5
P 7400 1000
AR Path="/5F265927/5F4F26F5" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F4F26F5" Ref="#PWR0197"  Part="1" 
F 0 "#PWR0197" H 7400 850 50  0001 C CNN
F 1 "+3.3VA" H 7415 1173 50  0000 C CNN
F 2 "" H 7400 1000 50  0001 C CNN
F 3 "" H 7400 1000 50  0001 C CNN
	1    7400 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6950 1100 7050
Wire Wire Line
	1600 6950 1100 6950
Wire Wire Line
	1100 7250 1100 7400
$Comp
L power:GND #PWR?
U 1 1 5F4F26FF
P 1100 7400
AR Path="/5F265927/5F4F26FF" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F4F26FF" Ref="#PWR0198"  Part="1" 
F 0 "#PWR0198" H 1100 7150 50  0001 C CNN
F 1 "GND" H 1105 7227 50  0000 C CNN
F 2 "" H 1100 7400 50  0001 C CNN
F 3 "" H 1100 7400 50  0001 C CNN
	1    1100 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F4F2705
P 1100 7150
AR Path="/5F265927/5F4F2705" Ref="C?"  Part="1" 
AR Path="/5F4ECD93/5F4F2705" Ref="C601"  Part="1" 
F 0 "C601" H 1008 7104 50  0000 R CNN
F 1 "C_Small" H 1008 7195 50  0000 R CNN
F 2 "" H 1100 7150 50  0001 C CNN
F 3 "~" H 1100 7150 50  0001 C CNN
	1    1100 7150
	-1   0    0    1   
$EndComp
Text Label 1350 6500 0    50   ~ 0
VT_REF
Text Label 6750 2400 0    50   ~ 0
VT_REF
Wire Wire Line
	1600 6500 1600 6650
Wire Wire Line
	1350 6500 1600 6500
Wire Wire Line
	1600 6950 1600 7050
Connection ~ 1600 6950
$Comp
L power:GND #PWR?
U 1 1 5F4F2712
P 1600 7400
AR Path="/5F265927/5F4F2712" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F4F2712" Ref="#PWR0199"  Part="1" 
F 0 "#PWR0199" H 1600 7150 50  0001 C CNN
F 1 "GND" H 1605 7227 50  0000 C CNN
F 2 "" H 1600 7400 50  0001 C CNN
F 3 "" H 1600 7400 50  0001 C CNN
	1    1600 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F4F2718
P 1600 7150
AR Path="/5F265927/5F4F2718" Ref="R?"  Part="1" 
AR Path="/5F4ECD93/5F4F2718" Ref="R602"  Part="1" 
F 0 "R602" H 1541 7104 50  0000 R CNN
F 1 "R_Small" H 1541 7195 50  0000 R CNN
F 2 "" H 1600 7150 50  0001 C CNN
F 3 "~" H 1600 7150 50  0001 C CNN
	1    1600 7150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 6850 1600 6950
Wire Wire Line
	1600 7250 1600 7400
$Comp
L Device:R_Small R?
U 1 1 5F4F2720
P 1600 6750
AR Path="/5F265927/5F4F2720" Ref="R?"  Part="1" 
AR Path="/5F4ECD93/5F4F2720" Ref="R601"  Part="1" 
F 0 "R601" H 1541 6704 50  0000 R CNN
F 1 "R_Small" H 1541 6795 50  0000 R CNN
F 2 "" H 1600 6750 50  0001 C CNN
F 3 "~" H 1600 6750 50  0001 C CNN
	1    1600 6750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4F2726
P 6050 2950
AR Path="/5F265927/5F4F2726" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F4F2726" Ref="#PWR0200"  Part="1" 
F 0 "#PWR0200" H 6050 2700 50  0001 C CNN
F 1 "GND" H 6055 2777 50  0000 C CNN
F 2 "" H 6050 2950 50  0001 C CNN
F 3 "" H 6050 2950 50  0001 C CNN
	1    6050 2950
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:ABLNO X?
U 1 1 5F4F272D
P 7400 2400
AR Path="/5F4F272D" Ref="X?"  Part="1" 
AR Path="/5F1F4C00/5F4F272D" Ref="X?"  Part="1" 
AR Path="/5F1F863E/5F4F272D" Ref="X?"  Part="1" 
AR Path="/5F265927/5F4F272D" Ref="X?"  Part="1" 
AR Path="/5F4ECD93/5F4F272D" Ref="X601"  Part="1" 
F 0 "X601" H 7650 2650 50  0000 L CNN
F 1 "ABLNO" H 7650 2750 50  0000 L CNN
F 2 "Oscillator:Oscillator_SMD_Abracon_ABLNO" H 7400 2050 50  0001 C CNN
F 3 "https://abracon.com/Precisiontiming/ABLNO.pdf" H 7200 2500 50  0001 C CNN
	1    7400 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4F2733
P 3200 2650
AR Path="/5F265927/5F4F2733" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F4F2733" Ref="#PWR0201"  Part="1" 
F 0 "#PWR0201" H 3200 2400 50  0001 C CNN
F 1 "GND" H 3205 2477 50  0000 C CNN
F 2 "" H 3200 2650 50  0001 C CNN
F 3 "" H 3200 2650 50  0001 C CNN
	1    3200 2650
	1    0    0    -1  
$EndComp
Text HLabel 9350 2400 2    59   Output ~ 0
REF_OUT
Text Notes 6250 2050 0    50   ~ 0
Vctrl range 0-3.3V\nmin pull +/- 28 ppm\n10k input impedance
Wire Wire Line
	3200 2500 3350 2500
Wire Wire Line
	3200 2500 3200 2650
$Comp
L Device:R_Small R?
U 1 1 5F4F273D
P 2650 2300
AR Path="/5F265927/5F4F273D" Ref="R?"  Part="1" 
AR Path="/5F4ECD93/5F4F273D" Ref="R603"  Part="1" 
F 0 "R603" V 2454 2300 50  0000 C CNN
F 1 "R_Small" V 2545 2300 50  0000 C CNN
F 2 "" H 2650 2300 50  0001 C CNN
F 3 "~" H 2650 2300 50  0001 C CNN
	1    2650 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4F2743
P 4150 2950
AR Path="/5F265927/5F4F2743" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F4F2743" Ref="#PWR0202"  Part="1" 
F 0 "#PWR0202" H 4150 2700 50  0001 C CNN
F 1 "GND" H 4155 2777 50  0000 C CNN
F 2 "" H 4150 2950 50  0001 C CNN
F 3 "" H 4150 2950 50  0001 C CNN
	1    4150 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F4F2749
P 4150 2700
AR Path="/5F265927/5F4F2749" Ref="R?"  Part="1" 
AR Path="/5F4ECD93/5F4F2749" Ref="R609"  Part="1" 
F 0 "R609" H 4091 2654 50  0000 R CNN
F 1 "R_Small" H 4091 2745 50  0000 R CNN
F 2 "" H 4150 2700 50  0001 C CNN
F 3 "~" H 4150 2700 50  0001 C CNN
	1    4150 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 2400 4150 2600
Wire Wire Line
	3950 2400 4150 2400
Wire Wire Line
	4150 2800 4150 2950
Connection ~ 4150 2400
$Comp
L Device:R_Small R?
U 1 1 5F4F2753
P 3650 1900
AR Path="/5F265927/5F4F2753" Ref="R?"  Part="1" 
AR Path="/5F4ECD93/5F4F2753" Ref="R606"  Part="1" 
F 0 "R606" V 3454 1900 50  0000 C CNN
F 1 "R_Small" V 3545 1900 50  0000 C CNN
F 2 "" H 3650 1900 50  0001 C CNN
F 3 "~" H 3650 1900 50  0001 C CNN
	1    3650 1900
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F4F2759
P 3650 1550
AR Path="/5F265927/5F4F2759" Ref="C?"  Part="1" 
AR Path="/5F4ECD93/5F4F2759" Ref="C602"  Part="1" 
F 0 "C602" V 3421 1550 50  0000 C CNN
F 1 "C_Small" V 3512 1550 50  0000 C CNN
F 2 "" H 3650 1550 50  0001 C CNN
F 3 "~" H 3650 1550 50  0001 C CNN
	1    3650 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 1900 4150 1900
Wire Wire Line
	3750 1550 4150 1550
Wire Wire Line
	4150 1550 4150 1900
Wire Wire Line
	3550 1550 3000 1550
Wire Wire Line
	3000 1550 3000 1900
Wire Wire Line
	3550 1900 3000 1900
$Comp
L Device:R_Small R?
U 1 1 5F4F2765
P 6450 2400
AR Path="/5F265927/5F4F2765" Ref="R?"  Part="1" 
AR Path="/5F4ECD93/5F4F2765" Ref="R612"  Part="1" 
F 0 "R612" V 6646 2400 50  0000 C CNN
F 1 "R_Small" V 6555 2400 50  0000 C CNN
F 2 "" H 6450 2400 50  0001 C CNN
F 3 "~" H 6450 2400 50  0001 C CNN
	1    6450 2400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F4F276B
P 6700 2700
AR Path="/5F265927/5F4F276B" Ref="C?"  Part="1" 
AR Path="/5F4ECD93/5F4F276B" Ref="C604"  Part="1" 
F 0 "C604" H 6608 2654 50  0000 R CNN
F 1 "C_Small" H 6608 2745 50  0000 R CNN
F 2 "" H 6700 2700 50  0001 C CNN
F 3 "~" H 6700 2700 50  0001 C CNN
	1    6700 2700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4F2771
P 6700 2950
AR Path="/5F265927/5F4F2771" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F4F2771" Ref="#PWR0203"  Part="1" 
F 0 "#PWR0203" H 6700 2700 50  0001 C CNN
F 1 "GND" H 6705 2777 50  0000 C CNN
F 2 "" H 6700 2950 50  0001 C CNN
F 3 "" H 6700 2950 50  0001 C CNN
	1    6700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2950 6700 2800
Wire Wire Line
	6050 2400 6350 2400
Wire Wire Line
	6550 2400 6700 2400
Wire Wire Line
	6700 2600 6700 2400
Connection ~ 6700 2400
Wire Wire Line
	6700 2400 7000 2400
$Comp
L power:GND #PWR?
U 1 1 5F4F277D
P 7400 2950
AR Path="/5F265927/5F4F277D" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F4F277D" Ref="#PWR0204"  Part="1" 
F 0 "#PWR0204" H 7400 2700 50  0001 C CNN
F 1 "GND" H 7405 2777 50  0000 C CNN
F 2 "" H 7400 2950 50  0001 C CNN
F 3 "" H 7400 2950 50  0001 C CNN
	1    7400 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2950 7400 2700
$Comp
L Device:C_Small C?
U 1 1 5F4F2784
P 7650 1600
AR Path="/5F265927/5F4F2784" Ref="C?"  Part="1" 
AR Path="/5F4ECD93/5F4F2784" Ref="C605"  Part="1" 
F 0 "C605" H 7742 1646 50  0000 L CNN
F 1 "C_Small" H 7742 1555 50  0000 L CNN
F 2 "" H 7650 1600 50  0001 C CNN
F 3 "~" H 7650 1600 50  0001 C CNN
	1    7650 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F4F278A
P 8200 1600
AR Path="/5F265927/5F4F278A" Ref="C?"  Part="1" 
AR Path="/5F4ECD93/5F4F278A" Ref="C606"  Part="1" 
F 0 "C606" H 8292 1646 50  0000 L CNN
F 1 "C_Small" H 8292 1555 50  0000 L CNN
F 2 "" H 8200 1600 50  0001 C CNN
F 3 "~" H 8200 1600 50  0001 C CNN
	1    8200 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L?
U 1 1 5F4F2790
P 7400 1200
AR Path="/5F265927/5F4F2790" Ref="L?"  Part="1" 
AR Path="/5F4ECD93/5F4F2790" Ref="L601"  Part="1" 
F 0 "L601" H 7448 1246 50  0000 L CNN
F 1 "L_Small" H 7448 1155 50  0000 L CNN
F 2 "" H 7400 1200 50  0001 C CNN
F 3 "~" H 7400 1200 50  0001 C CNN
	1    7400 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1000 7400 1100
Wire Wire Line
	7400 1300 7400 1400
Wire Wire Line
	7650 1750 7650 1700
$Comp
L power:GND #PWR?
U 1 1 5F4F2799
P 7650 1750
AR Path="/5F265927/5F4F2799" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F4F2799" Ref="#PWR0205"  Part="1" 
F 0 "#PWR0205" H 7650 1500 50  0001 C CNN
F 1 "GND" H 7655 1577 50  0000 C CNN
F 2 "" H 7650 1750 50  0001 C CNN
F 3 "" H 7650 1750 50  0001 C CNN
	1    7650 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4F279F
P 8200 1750
AR Path="/5F265927/5F4F279F" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F4F279F" Ref="#PWR0206"  Part="1" 
F 0 "#PWR0206" H 8200 1500 50  0001 C CNN
F 1 "GND" H 8205 1577 50  0000 C CNN
F 2 "" H 8200 1750 50  0001 C CNN
F 3 "" H 8200 1750 50  0001 C CNN
	1    8200 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1750 8200 1700
Wire Wire Line
	7400 1400 7650 1400
Wire Wire Line
	8200 1400 8200 1500
Connection ~ 7400 1400
Wire Wire Line
	7400 1400 7400 2100
Wire Wire Line
	7650 1500 7650 1400
Connection ~ 7650 1400
Wire Wire Line
	7650 1400 8200 1400
$Comp
L Device:C_Small C?
U 1 1 5F4F27AD
P 9100 2400
AR Path="/5F265927/5F4F27AD" Ref="C?"  Part="1" 
AR Path="/5F4ECD93/5F4F27AD" Ref="C607"  Part="1" 
F 0 "C607" V 9329 2400 50  0000 C CNN
F 1 "C_Small" V 9238 2400 50  0000 C CNN
F 2 "" H 9100 2400 50  0001 C CNN
F 3 "~" H 9100 2400 50  0001 C CNN
	1    9100 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9200 2400 9350 2400
$Comp
L vna:OPA2211 U?
U 1 1 5F4F27B6
P 3650 2400
AR Path="/5F265927/5F4F27B6" Ref="U?"  Part="1" 
AR Path="/5F4ECD93/5F4F27B6" Ref="U602"  Part="1" 
F 0 "U602" H 3650 2033 50  0000 C CNN
F 1 "OPA2211" H 3650 2124 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.514x3.2mm" H 3650 2400 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/opa2211a.pdf" H 3650 2400 50  0001 C CNN
	1    3650 2400
	1    0    0    1   
$EndComp
$Comp
L vna:OPA2211 U?
U 2 1 5F4F27BC
P 5250 2300
AR Path="/5F265927/5F4F27BC" Ref="U?"  Part="2" 
AR Path="/5F4ECD93/5F4F27BC" Ref="U602"  Part="2" 
F 0 "U602" H 5250 1933 50  0000 C CNN
F 1 "OPA2211" H 5250 2024 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.514x3.2mm" H 5250 2300 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/opa2211a.pdf" H 5250 2300 50  0001 C CNN
	2    5250 2300
	1    0    0    1   
$EndComp
Wire Wire Line
	2750 2300 3000 2300
Wire Wire Line
	4150 1900 4150 2400
Connection ~ 4150 1900
Wire Wire Line
	3000 1900 3000 2300
Connection ~ 3000 1900
Connection ~ 3000 2300
Wire Wire Line
	3000 2300 3350 2300
$Comp
L Device:R_Small R?
U 1 1 5F4F27C9
P 4650 2400
AR Path="/5F265927/5F4F27C9" Ref="R?"  Part="1" 
AR Path="/5F4ECD93/5F4F27C9" Ref="R610"  Part="1" 
F 0 "R610" V 4846 2400 50  0000 C CNN
F 1 "R_Small" V 4755 2400 50  0000 C CNN
F 2 "" H 4650 2400 50  0001 C CNN
F 3 "~" H 4650 2400 50  0001 C CNN
	1    4650 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 2400 4550 2400
Wire Wire Line
	4750 2400 4950 2400
$Comp
L Device:D_Small D?
U 1 1 5F4F27D1
P 5750 2000
AR Path="/5F265927/5F4F27D1" Ref="D?"  Part="1" 
AR Path="/5F4ECD93/5F4F27D1" Ref="D601"  Part="1" 
F 0 "D601" V 5796 1930 50  0000 R CNN
F 1 "D_Small" V 5705 1930 50  0000 R CNN
F 2 "" V 5750 2000 50  0001 C CNN
F 3 "~" V 5750 2000 50  0001 C CNN
	1    5750 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 1800 5750 1900
Wire Wire Line
	5750 2100 5750 2300
Wire Wire Line
	5750 2300 5550 2300
Wire Wire Line
	4750 1800 4750 2200
Wire Wire Line
	4750 2200 4950 2200
Wire Wire Line
	4750 1800 5750 1800
$Comp
L Device:R_Small R?
U 1 1 5F4F27DD
P 6050 2700
AR Path="/5F265927/5F4F27DD" Ref="R?"  Part="1" 
AR Path="/5F4ECD93/5F4F27DD" Ref="R611"  Part="1" 
F 0 "R611" H 5991 2654 50  0000 R CNN
F 1 "R_Small" H 5991 2745 50  0000 R CNN
F 2 "" H 6050 2700 50  0001 C CNN
F 3 "~" H 6050 2700 50  0001 C CNN
	1    6050 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 2400 6050 2600
Wire Wire Line
	6050 2800 6050 2950
Wire Wire Line
	5750 2300 6050 2300
Wire Wire Line
	6050 2300 6050 2400
Connection ~ 5750 2300
Connection ~ 6050 2400
Wire Wire Line
	9500 4250 9500 4400
$Comp
L power:+3.3VA #PWR?
U 1 1 5F4F27EA
P 9500 4250
AR Path="/5F265927/5F4F27EA" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F4F27EA" Ref="#PWR0207"  Part="1" 
F 0 "#PWR0207" H 9500 4100 50  0001 C CNN
F 1 "+3.3VA" H 9515 4423 50  0000 C CNN
F 2 "" H 9500 4250 50  0001 C CNN
F 3 "" H 9500 4250 50  0001 C CNN
	1    9500 4250
	1    0    0    -1  
$EndComp
Connection ~ 9750 4750
Wire Wire Line
	10250 4750 10250 4850
Wire Wire Line
	9750 4750 10250 4750
Wire Wire Line
	9500 4750 9500 5150
Connection ~ 9500 4750
Wire Wire Line
	9750 4750 9750 4850
Wire Wire Line
	9500 4750 9750 4750
Wire Wire Line
	9500 4600 9500 4750
$Comp
L Device:R_Small R?
U 1 1 5F4F27F8
P 9500 4500
AR Path="/5F265927/5F4F27F8" Ref="R?"  Part="1" 
AR Path="/5F4ECD93/5F4F27F8" Ref="R617"  Part="1" 
F 0 "R617" H 9559 4546 50  0000 L CNN
F 1 "R_Small" H 9559 4455 50  0000 L CNN
F 2 "" H 9500 4500 50  0001 C CNN
F 3 "~" H 9500 4500 50  0001 C CNN
	1    9500 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 5100 10250 5050
$Comp
L power:GND #PWR?
U 1 1 5F4F27FF
P 10250 5100
AR Path="/5F265927/5F4F27FF" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F4F27FF" Ref="#PWR0208"  Part="1" 
F 0 "#PWR0208" H 10250 4850 50  0001 C CNN
F 1 "GND" H 10255 4927 50  0000 C CNN
F 2 "" H 10250 5100 50  0001 C CNN
F 3 "" H 10250 5100 50  0001 C CNN
	1    10250 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 5050 9750 5100
$Comp
L power:GND #PWR?
U 1 1 5F4F2806
P 9750 5100
AR Path="/5F265927/5F4F2806" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F4F2806" Ref="#PWR0209"  Part="1" 
F 0 "#PWR0209" H 9750 4850 50  0001 C CNN
F 1 "GND" H 9755 4927 50  0000 C CNN
F 2 "" H 9750 5100 50  0001 C CNN
F 3 "" H 9750 5100 50  0001 C CNN
	1    9750 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F4F280C
P 10250 4950
AR Path="/5F265927/5F4F280C" Ref="C?"  Part="1" 
AR Path="/5F4ECD93/5F4F280C" Ref="C610"  Part="1" 
F 0 "C610" H 10158 4904 50  0000 R CNN
F 1 "C_Small" H 10158 4995 50  0000 R CNN
F 2 "" H 10250 4950 50  0001 C CNN
F 3 "~" H 10250 4950 50  0001 C CNN
	1    10250 4950
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F4F2812
P 9750 4950
AR Path="/5F265927/5F4F2812" Ref="C?"  Part="1" 
AR Path="/5F4ECD93/5F4F2812" Ref="C609"  Part="1" 
F 0 "C609" H 9658 4904 50  0000 R CNN
F 1 "C_Small" H 9658 4995 50  0000 R CNN
F 2 "" H 9750 4950 50  0001 C CNN
F 3 "~" H 9750 4950 50  0001 C CNN
	1    9750 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	9700 5800 9700 5850
$Comp
L power:GND #PWR?
U 1 1 5F4F2819
P 9700 5800
AR Path="/5F265927/5F4F2819" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F4F2819" Ref="#PWR0210"  Part="1" 
F 0 "#PWR0210" H 9700 5550 50  0001 C CNN
F 1 "GND" H 9705 5627 50  0000 C CNN
F 2 "" H 9700 5800 50  0001 C CNN
F 3 "" H 9700 5800 50  0001 C CNN
	1    9700 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	9500 6100 9500 6150
Connection ~ 9500 6100
Wire Wire Line
	9700 6100 9700 6050
Wire Wire Line
	9500 6100 9700 6100
$Comp
L Device:C_Small C?
U 1 1 5F4F2823
P 9700 5950
AR Path="/5F265927/5F4F2823" Ref="C?"  Part="1" 
AR Path="/5F4ECD93/5F4F2823" Ref="C608"  Part="1" 
F 0 "C608" H 9608 5904 50  0000 R CNN
F 1 "C_Small" H 9608 5995 50  0000 R CNN
F 2 "" H 9700 5950 50  0001 C CNN
F 3 "~" H 9700 5950 50  0001 C CNN
	1    9700 5950
	-1   0    0    1   
$EndComp
Connection ~ 9500 5850
Wire Wire Line
	9500 5850 9500 6100
$Comp
L power:-3V3 #PWR?
U 1 1 5F4F282B
P 9500 6150
AR Path="/5F265927/5F4F282B" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F4F282B" Ref="#PWR0211"  Part="1" 
F 0 "#PWR0211" H 9500 6250 50  0001 C CNN
F 1 "-3V3" H 9515 6323 50  0000 C CNN
F 2 "" H 9500 6150 50  0001 C CNN
F 3 "" H 9500 6150 50  0001 C CNN
	1    9500 6150
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 5750 9400 5850
Wire Wire Line
	9400 5850 9500 5850
Wire Wire Line
	9500 5750 9500 5850
$Comp
L vna:OPA2211 U?
U 3 1 5F4F2834
P 9600 5450
AR Path="/5F265927/5F4F2834" Ref="U?"  Part="3" 
AR Path="/5F4ECD93/5F4F2834" Ref="U602"  Part="3" 
F 0 "U602" H 9558 5496 50  0000 L CNN
F 1 "OPA2211" H 9558 5405 50  0000 L CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.514x3.2mm" H 9600 5450 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/opa2211a.pdf" H 9600 5450 50  0001 C CNN
	3    9600 5450
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM2904 U601
U 3 1 5F502103
P 5600 6650
F 0 "U601" H 5558 6696 50  0000 L CNN
F 1 "LM2904" H 5558 6605 50  0000 L CNN
F 2 "" H 5600 6650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H 5600 6650 50  0001 C CNN
	3    5600 6650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0212
U 1 1 5F5109D2
P 5500 6100
F 0 "#PWR0212" H 5500 5950 50  0001 C CNN
F 1 "+3.3V" H 5515 6273 50  0000 C CNN
F 2 "" H 5500 6100 50  0001 C CNN
F 3 "" H 5500 6100 50  0001 C CNN
	1    5500 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F51A608
P 5500 7200
AR Path="/5F265927/5F51A608" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F51A608" Ref="#PWR0213"  Part="1" 
F 0 "#PWR0213" H 5500 6950 50  0001 C CNN
F 1 "GND" H 5505 7027 50  0000 C CNN
F 2 "" H 5500 7200 50  0001 C CNN
F 3 "" H 5500 7200 50  0001 C CNN
	1    5500 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6950 5500 7200
$Comp
L Device:C_Small C?
U 1 1 5F51E98F
P 6100 6350
AR Path="/5F265927/5F51E98F" Ref="C?"  Part="1" 
AR Path="/5F4ECD93/5F51E98F" Ref="C603"  Part="1" 
F 0 "C603" H 6008 6304 50  0000 R CNN
F 1 "C_Small" H 6008 6395 50  0000 R CNN
F 2 "" H 6100 6350 50  0001 C CNN
F 3 "~" H 6100 6350 50  0001 C CNN
	1    6100 6350
	-1   0    0    1   
$EndComp
Wire Wire Line
	6100 6200 6100 6250
$Comp
L power:GND #PWR?
U 1 1 5F520E4F
P 6100 6500
AR Path="/5F265927/5F520E4F" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F520E4F" Ref="#PWR0214"  Part="1" 
F 0 "#PWR0214" H 6100 6250 50  0001 C CNN
F 1 "GND" H 6105 6327 50  0000 C CNN
F 2 "" H 6100 6500 50  0001 C CNN
F 3 "" H 6100 6500 50  0001 C CNN
	1    6100 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6500 6100 6450
Wire Wire Line
	5500 6100 5500 6200
Wire Wire Line
	5500 6200 6100 6200
Connection ~ 5500 6200
Wire Wire Line
	5500 6200 5500 6350
Wire Wire Line
	3200 6850 2950 6850
Wire Wire Line
	3200 6350 3200 6850
Wire Wire Line
	2050 6350 3200 6350
Wire Wire Line
	2050 6750 2050 6350
Wire Wire Line
	2350 6750 2050 6750
$Comp
L Amplifier_Operational:LM2904 U601
U 1 1 5F4FF9B7
P 2650 6850
F 0 "U601" H 2650 6483 50  0000 C CNN
F 1 "LM2904" H 2650 6574 50  0000 C CNN
F 2 "" H 2650 6850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H 2650 6850 50  0001 C CNN
	1    2650 6850
	1    0    0    1   
$EndComp
Wire Wire Line
	3200 5650 2950 5650
Wire Wire Line
	3200 5150 3200 5650
Wire Wire Line
	2050 5150 3200 5150
Wire Wire Line
	2050 5550 2050 5150
Wire Wire Line
	2350 5550 2050 5550
$Comp
L Amplifier_Operational:LM2904 U601
U 2 1 5F500F4B
P 2650 5650
F 0 "U601" H 2650 5283 50  0000 C CNN
F 1 "LM2904" H 2650 5374 50  0000 C CNN
F 2 "" H 2650 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H 2650 5650 50  0001 C CNN
	2    2650 5650
	1    0    0    1   
$EndComp
Text HLabel 4150 6850 2    59   Output ~ 0
VT_REF_TLM
Text HLabel 2000 5750 0    50   Input ~ 0
VT_SYNTH_UNBUF
Text HLabel 4000 5650 2    50   Input ~ 0
VT_SYNTH_TLM
Wire Wire Line
	2000 5750 2350 5750
$Comp
L Device:R_Small R?
U 1 1 5F5DF4CA
P 3450 6850
AR Path="/5F265927/5F5DF4CA" Ref="R?"  Part="1" 
AR Path="/5F4ECD93/5F5DF4CA" Ref="R605"  Part="1" 
F 0 "R605" V 3646 6850 50  0000 C CNN
F 1 "R_Small" V 3555 6850 50  0000 C CNN
F 2 "" H 3450 6850 50  0001 C CNN
F 3 "~" H 3450 6850 50  0001 C CNN
	1    3450 6850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 6850 3350 6850
Connection ~ 3200 6850
$Comp
L Device:R_Small R?
U 1 1 5F5E5DDA
P 3750 7150
AR Path="/5F265927/5F5E5DDA" Ref="R?"  Part="1" 
AR Path="/5F4ECD93/5F5E5DDA" Ref="R608"  Part="1" 
F 0 "R608" H 3809 7196 50  0000 L CNN
F 1 "R_Small" H 3809 7105 50  0000 L CNN
F 2 "" H 3750 7150 50  0001 C CNN
F 3 "~" H 3750 7150 50  0001 C CNN
	1    3750 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6850 3750 6850
Wire Wire Line
	3750 6850 3750 7050
Connection ~ 3750 6850
Wire Wire Line
	3750 6850 4150 6850
$Comp
L power:GND #PWR?
U 1 1 5F5EEE70
P 3750 7400
AR Path="/5F265927/5F5EEE70" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F5EEE70" Ref="#PWR0215"  Part="1" 
F 0 "#PWR0215" H 3750 7150 50  0001 C CNN
F 1 "GND" H 3755 7227 50  0000 C CNN
F 2 "" H 3750 7400 50  0001 C CNN
F 3 "" H 3750 7400 50  0001 C CNN
	1    3750 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 7250 3750 7400
$Comp
L Device:R_Small R?
U 1 1 5F5F4DE2
P 3450 5650
AR Path="/5F265927/5F5F4DE2" Ref="R?"  Part="1" 
AR Path="/5F4ECD93/5F5F4DE2" Ref="R604"  Part="1" 
F 0 "R604" V 3646 5650 50  0000 C CNN
F 1 "R_Small" V 3555 5650 50  0000 C CNN
F 2 "" H 3450 5650 50  0001 C CNN
F 3 "~" H 3450 5650 50  0001 C CNN
	1    3450 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 5650 3350 5650
$Comp
L Device:R_Small R?
U 1 1 5F5F4DE9
P 3750 5950
AR Path="/5F265927/5F5F4DE9" Ref="R?"  Part="1" 
AR Path="/5F4ECD93/5F5F4DE9" Ref="R607"  Part="1" 
F 0 "R607" H 3809 5996 50  0000 L CNN
F 1 "R_Small" H 3809 5905 50  0000 L CNN
F 2 "" H 3750 5950 50  0001 C CNN
F 3 "~" H 3750 5950 50  0001 C CNN
	1    3750 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5650 3750 5650
Wire Wire Line
	3750 5650 3750 5850
$Comp
L power:GND #PWR?
U 1 1 5F5F4DF3
P 3750 6200
AR Path="/5F265927/5F5F4DF3" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F5F4DF3" Ref="#PWR0216"  Part="1" 
F 0 "#PWR0216" H 3750 5950 50  0001 C CNN
F 1 "GND" H 3755 6027 50  0000 C CNN
F 2 "" H 3750 6200 50  0001 C CNN
F 3 "" H 3750 6200 50  0001 C CNN
	1    3750 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 6050 3750 6200
Connection ~ 3200 5650
Wire Wire Line
	4000 5650 3750 5650
Connection ~ 3750 5650
Wire Wire Line
	1600 6950 2350 6950
$Comp
L Device:R_Small R?
U 1 1 5F6D0307
P 8250 2400
AR Path="/5F265927/5F6D0307" Ref="R?"  Part="1" 
AR Path="/5F4ECD93/5F6D0307" Ref="R613"  Part="1" 
F 0 "R613" V 8446 2400 50  0000 C CNN
F 1 "R_Small" V 8355 2400 50  0000 C CNN
F 2 "" H 8250 2400 50  0001 C CNN
F 3 "~" H 8250 2400 50  0001 C CNN
	1    8250 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 2400 8150 2400
$Comp
L Device:R_Small R?
U 1 1 5F6DDC7F
P 8700 2400
AR Path="/5F265927/5F6DDC7F" Ref="R?"  Part="1" 
AR Path="/5F4ECD93/5F6DDC7F" Ref="R616"  Part="1" 
F 0 "R616" V 8896 2400 50  0000 C CNN
F 1 "R_Small" V 8805 2400 50  0000 C CNN
F 2 "" H 8700 2400 50  0001 C CNN
F 3 "~" H 8700 2400 50  0001 C CNN
	1    8700 2400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F6DE0EC
P 8450 2650
AR Path="/5F265927/5F6DE0EC" Ref="R?"  Part="1" 
AR Path="/5F4ECD93/5F6DE0EC" Ref="R614"  Part="1" 
F 0 "R614" H 8509 2696 50  0000 L CNN
F 1 "R_Small" H 8509 2605 50  0000 L CNN
F 2 "" H 8450 2650 50  0001 C CNN
F 3 "~" H 8450 2650 50  0001 C CNN
	1    8450 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J601
U 1 1 5F6DEC9D
P 8950 3050
F 0 "J601" H 9050 3025 50  0000 L CNN
F 1 "Conn_Coaxial" H 9050 2934 50  0000 L CNN
F 2 "" H 8950 3050 50  0001 C CNN
F 3 " ~" H 8950 3050 50  0001 C CNN
	1    8950 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F6DF760
P 8950 3450
AR Path="/5F265927/5F6DF760" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F6DF760" Ref="#PWR0217"  Part="1" 
F 0 "#PWR0217" H 8950 3200 50  0001 C CNN
F 1 "GND" H 8955 3277 50  0000 C CNN
F 2 "" H 8950 3450 50  0001 C CNN
F 3 "" H 8950 3450 50  0001 C CNN
	1    8950 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3050 8450 2750
Wire Wire Line
	8350 2400 8450 2400
Wire Wire Line
	8450 2550 8450 2400
Connection ~ 8450 2400
Wire Wire Line
	8450 2400 8600 2400
$Comp
L Device:R_Small R?
U 1 1 5F6ED4C4
P 8450 3250
AR Path="/5F265927/5F6ED4C4" Ref="R?"  Part="1" 
AR Path="/5F4ECD93/5F6ED4C4" Ref="R615"  Part="1" 
F 0 "R615" H 8509 3296 50  0000 L CNN
F 1 "R_Small" H 8509 3205 50  0000 L CNN
F 2 "" H 8450 3250 50  0001 C CNN
F 3 "~" H 8450 3250 50  0001 C CNN
	1    8450 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3050 8750 3050
$Comp
L power:GND #PWR?
U 1 1 5F704076
P 8450 3450
AR Path="/5F265927/5F704076" Ref="#PWR?"  Part="1" 
AR Path="/5F4ECD93/5F704076" Ref="#PWR0218"  Part="1" 
F 0 "#PWR0218" H 8450 3200 50  0001 C CNN
F 1 "GND" H 8455 3277 50  0000 C CNN
F 2 "" H 8450 3450 50  0001 C CNN
F 3 "" H 8450 3450 50  0001 C CNN
	1    8450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3350 8450 3450
Wire Wire Line
	8450 3050 8450 3150
Connection ~ 8450 3050
Wire Wire Line
	8950 3250 8950 3450
Wire Wire Line
	8800 2400 9000 2400
$Comp
L Connector:TestPoint TP601
U 1 1 5F71DFF3
P 1100 6700
F 0 "TP601" H 1158 6818 50  0000 L CNN
F 1 "TestPoint" H 1158 6727 50  0000 L CNN
F 2 "" H 1300 6700 50  0001 C CNN
F 3 "~" H 1300 6700 50  0001 C CNN
	1    1100 6700
	-1   0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP605
U 1 1 5F7225E6
P 4150 1400
F 0 "TP605" H 4208 1518 50  0000 L CNN
F 1 "TestPoint" H 4208 1427 50  0000 L CNN
F 2 "" H 4350 1400 50  0001 C CNN
F 3 "~" H 4350 1400 50  0001 C CNN
	1    4150 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1400 4150 1550
Connection ~ 4150 1550
$Comp
L Connector:TestPoint TP602
U 1 1 5F72900B
P 1950 2100
F 0 "TP602" H 2008 2218 50  0000 L CNN
F 1 "TestPoint" H 2008 2127 50  0000 L CNN
F 2 "" H 2150 2100 50  0001 C CNN
F 3 "~" H 2150 2100 50  0001 C CNN
	1    1950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2100 1950 2300
Wire Wire Line
	1950 2300 2550 2300
$Comp
L Connector:TestPoint TP603
U 1 1 5F72D051
P 3750 5450
F 0 "TP603" H 3808 5568 50  0000 L CNN
F 1 "TestPoint" H 3808 5477 50  0000 L CNN
F 2 "" H 3950 5450 50  0001 C CNN
F 3 "~" H 3950 5450 50  0001 C CNN
	1    3750 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5450 3750 5650
$Comp
L Connector:TestPoint TP604
U 1 1 5F735362
P 3750 6700
F 0 "TP604" H 3808 6818 50  0000 L CNN
F 1 "TestPoint" H 3808 6727 50  0000 L CNN
F 2 "" H 3950 6700 50  0001 C CNN
F 3 "~" H 3950 6700 50  0001 C CNN
	1    3750 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 6700 3750 6850
Wire Wire Line
	1100 6700 1100 6950
Connection ~ 1100 6950
Wire Wire Line
	1950 2300 1700 2300
Connection ~ 1950 2300
Text HLabel 1700 2300 0    50   Input ~ 0
PHDET_IN
Text Notes 4100 950  0    50   ~ 0
TODO:\ncalculate stability?\nverify clamping circuit
Text Notes 2600 4900 0    50   ~ 0
TODO:\nverify buffer circuit
Text Notes 3600 650  0    50   ~ 0
TODO: check number of inversions prior to vtune, maybe have one amp be select 
Text Notes 3150 1150 0    118  ~ 0
integrator
Text Notes 4950 1150 0    118  ~ 0
ideal diode
$EndSCHEMATC
