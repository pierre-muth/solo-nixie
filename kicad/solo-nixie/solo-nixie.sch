EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L solo-nixie-rescue:L-Device L1
U 1 1 6193D3AD
P 8650 1100
F 0 "L1" V 8840 1100 50  0000 C CNN
F 1 "10uH" V 8749 1100 50  0000 C CNN
F 2 "solo-nixie:L_3216Metric" H 8650 1100 50  0001 C CNN
F 3 "~" H 8650 1100 50  0001 C CNN
	1    8650 1100
	0    -1   -1   0   
$EndComp
$Comp
L solo-nixie-rescue:D-Device D1
U 1 1 6193D873
P 9150 1100
F 0 "D1" H 9150 883 50  0000 C CNN
F 1 "D" H 9150 974 50  0000 C CNN
F 2 "solo-nixie:D_3220" H 9150 1100 50  0001 C CNN
F 3 "~" H 9150 1100 50  0001 C CNN
	1    9150 1100
	-1   0    0    1   
$EndComp
$Comp
L solo-nixie-rescue:C-Device C1
U 1 1 6193E198
P 9550 1450
F 0 "C1" H 9665 1496 50  0000 L CNN
F 1 "1nF" H 9665 1405 50  0000 L CNN
F 2 "solo-nixie:0805_HandSoldering" H 9588 1300 50  0001 C CNN
F 3 "~" H 9550 1450 50  0001 C CNN
	1    9550 1450
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:R-Device R2
U 1 1 61950BDE
P 8400 1600
F 0 "R2" H 8470 1646 50  0000 L CNN
F 1 "100K" H 8470 1555 50  0000 L CNN
F 2 "solo-nixie:0805_HandSoldering" V 8330 1600 50  0001 C CNN
F 3 "~" H 8400 1600 50  0001 C CNN
	1    8400 1600
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:R-Device R1
U 1 1 61951E71
P 10050 1250
F 0 "R1" H 10120 1296 50  0000 L CNN
F 1 "10M" H 10120 1205 50  0000 L CNN
F 2 "solo-nixie:0805_HandSoldering" V 9980 1250 50  0001 C CNN
F 3 "~" H 10050 1250 50  0001 C CNN
	1    10050 1250
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:R-Device R3
U 1 1 61952521
P 10050 1650
F 0 "R3" H 10120 1696 50  0000 L CNN
F 1 "100K" H 10120 1605 50  0000 L CNN
F 2 "solo-nixie:0805_HandSoldering" V 9980 1650 50  0001 C CNN
F 3 "~" H 10050 1650 50  0001 C CNN
	1    10050 1650
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:PIC16F18346-GZ-MCU_Microchip_PIC16 U1
U 1 1 619544B6
P 2200 1800
F 0 "U1" H 2200 2681 50  0000 C CNN
F 1 "PIC16F18346-GZ" H 2200 2590 50  0000 C CNN
F 2 "solo-nixie:UQFN-20-1EP_4x4mm_P0.5mm_EP2.8x2.8mm" H 2270 990 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40001839B.pdf" H 2200 1100 50  0001 C CNN
	1    2200 1800
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:MMBTA42-Transistor_BJT Q5
U 1 1 6195A169
P 6400 4000
F 0 "Q5" H 6590 4046 50  0000 L CNN
F 1 "MMBTA42" H 6150 3850 50  0000 L CNN
F 2 "solo-nixie:SOT-23" H 6600 3925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBTA42LT1-D.PDF" H 6400 4000 50  0001 L CNN
	1    6400 4000
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:BSS127S-Transistor_FET Q1
U 1 1 6195B47D
P 8800 1400
F 0 "Q1" H 9005 1446 50  0000 L CNN
F 1 "BSS87" H 9005 1355 50  0000 L CNN
F 2 "solo-nixie:CPH3" H 9000 1325 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/BSS127.pdf" H 8800 1400 50  0001 L CNN
	1    8800 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 850  8250 1100
Wire Wire Line
	8250 1100 8500 1100
Wire Wire Line
	8800 1100 8900 1100
Wire Wire Line
	9300 1100 9550 1100
Wire Wire Line
	9550 1100 9550 1300
Wire Wire Line
	8900 1200 8900 1100
Connection ~ 8900 1100
Wire Wire Line
	8900 1100 9000 1100
$Comp
L power:+5V #PWR03
U 1 1 61966A4E
P 8250 850
F 0 "#PWR03" H 8250 700 50  0001 C CNN
F 1 "+5V" H 8265 1023 50  0000 C CNN
F 2 "" H 8250 850 50  0001 C CNN
F 3 "" H 8250 850 50  0001 C CNN
	1    8250 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 61969454
P 9550 1850
F 0 "#PWR012" H 9550 1600 50  0001 C CNN
F 1 "GND" H 9555 1677 50  0000 C CNN
F 2 "" H 9550 1850 50  0001 C CNN
F 3 "" H 9550 1850 50  0001 C CNN
	1    9550 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 61969DD7
P 8900 1850
F 0 "#PWR011" H 8900 1600 50  0001 C CNN
F 1 "GND" H 8905 1677 50  0000 C CNN
F 2 "" H 8900 1850 50  0001 C CNN
F 3 "" H 8900 1850 50  0001 C CNN
	1    8900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1850 8900 1600
Wire Wire Line
	9550 1850 9550 1600
Wire Wire Line
	8600 1400 8400 1400
Wire Wire Line
	8400 1400 8400 1450
$Comp
L power:GND #PWR010
U 1 1 6196C9C4
P 8400 1850
F 0 "#PWR010" H 8400 1600 50  0001 C CNN
F 1 "GND" H 8405 1677 50  0000 C CNN
F 2 "" H 8400 1850 50  0001 C CNN
F 3 "" H 8400 1850 50  0001 C CNN
	1    8400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1850 8400 1750
Wire Wire Line
	10050 1100 9550 1100
Connection ~ 9550 1100
Wire Wire Line
	10050 1400 10050 1450
$Comp
L power:GND #PWR013
U 1 1 6197CD97
P 10050 1850
F 0 "#PWR013" H 10050 1600 50  0001 C CNN
F 1 "GND" H 10055 1677 50  0000 C CNN
F 2 "" H 10050 1850 50  0001 C CNN
F 3 "" H 10050 1850 50  0001 C CNN
	1    10050 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 1850 10050 1800
$Comp
L power:GND #PWR017
U 1 1 61984DBB
P 10650 4800
F 0 "#PWR017" H 10650 4550 50  0001 C CNN
F 1 "GND" H 10655 4627 50  0000 C CNN
F 2 "" H 10650 4800 50  0001 C CNN
F 3 "" H 10650 4800 50  0001 C CNN
	1    10650 4800
	1    0    0    -1  
$EndComp
Connection ~ 8400 1400
Text GLabel 8300 1400 0    50   Input ~ 0
HV_drive
Wire Wire Line
	8300 1400 8400 1400
Wire Wire Line
	10050 1450 10450 1450
Connection ~ 10050 1450
Wire Wire Line
	10050 1450 10050 1500
Text GLabel 10450 1450 2    50   Input ~ 0
Voltage_meas
Text GLabel 4400 3500 1    50   Input ~ 0
nixie0
$Comp
L solo-nixie-rescue:MMBTA42-Transistor_BJT Q6
U 1 1 6199FE66
P 6950 4000
F 0 "Q6" H 7140 4046 50  0000 L CNN
F 1 "MMBTA42" H 6700 3850 50  0000 L CNN
F 2 "solo-nixie:SOT-23" H 7150 3925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBTA42LT1-D.PDF" H 6950 4000 50  0001 L CNN
	1    6950 4000
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:MMBTA42-Transistor_BJT Q7
U 1 1 619A0699
P 7550 4000
F 0 "Q7" H 7740 4046 50  0000 L CNN
F 1 "MMBTA42" H 7300 3850 50  0000 L CNN
F 2 "solo-nixie:SOT-23" H 7750 3925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBTA42LT1-D.PDF" H 7550 4000 50  0001 L CNN
	1    7550 4000
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:MMBTA42-Transistor_BJT Q8
U 1 1 619ADE08
P 8150 4000
F 0 "Q8" H 8340 4046 50  0000 L CNN
F 1 "MMBTA42" H 7900 3850 50  0000 L CNN
F 2 "solo-nixie:SOT-23" H 8350 3925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBTA42LT1-D.PDF" H 8150 4000 50  0001 L CNN
	1    8150 4000
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:MMBTA42-Transistor_BJT Q9
U 1 1 619AE5D7
P 8750 4000
F 0 "Q9" H 8940 4046 50  0000 L CNN
F 1 "MMBTA42" H 8500 3850 50  0000 L CNN
F 2 "solo-nixie:SOT-23" H 8950 3925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBTA42LT1-D.PDF" H 8750 4000 50  0001 L CNN
	1    8750 4000
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:MMBTA42-Transistor_BJT Q10
U 1 1 619AECBE
P 9350 4000
F 0 "Q10" H 9540 4046 50  0000 L CNN
F 1 "MMBTA42" H 9100 3850 50  0000 L CNN
F 2 "solo-nixie:SOT-23" H 9550 3925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBTA42LT1-D.PDF" H 9350 4000 50  0001 L CNN
	1    9350 4000
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:MMBTA42-Transistor_BJT Q11
U 1 1 619AF29A
P 9950 4000
F 0 "Q11" H 10140 4046 50  0000 L CNN
F 1 "MMBTA42" H 9700 3850 50  0000 L CNN
F 2 "solo-nixie:SOT-23" H 10150 3925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBTA42LT1-D.PDF" H 9950 4000 50  0001 L CNN
	1    9950 4000
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:MMBTA42-Transistor_BJT Q12
U 1 1 619AFB28
P 10550 4000
F 0 "Q12" H 10740 4046 50  0000 L CNN
F 1 "MMBTA42" H 10300 3850 50  0000 L CNN
F 2 "solo-nixie:SOT-23" H 10750 3925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBTA42LT1-D.PDF" H 10550 4000 50  0001 L CNN
	1    10550 4000
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:MMBTA42-Transistor_BJT Q4
U 1 1 619B1332
P 5800 4000
F 0 "Q4" H 5990 4046 50  0000 L CNN
F 1 "MMBTA42" H 5550 3850 50  0000 L CNN
F 2 "solo-nixie:SOT-23" H 6000 3925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBTA42LT1-D.PDF" H 5800 4000 50  0001 L CNN
	1    5800 4000
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:MMBTA42-Transistor_BJT Q3
U 1 1 619B1C86
P 5200 4000
F 0 "Q3" H 5390 4046 50  0000 L CNN
F 1 "MMBTA42" H 4950 3850 50  0000 L CNN
F 2 "solo-nixie:SOT-23" H 5400 3925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBTA42LT1-D.PDF" H 5200 4000 50  0001 L CNN
	1    5200 4000
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:MMBTA42-Transistor_BJT Q2
U 1 1 619B270F
P 4600 4000
F 0 "Q2" H 4790 4046 50  0000 L CNN
F 1 "MMBTA42" H 4350 3850 50  0000 L CNN
F 2 "solo-nixie:SOT-23" H 4800 3925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBTA42LT1-D.PDF" H 4600 4000 50  0001 L CNN
	1    4600 4000
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:R-Device R4
U 1 1 619C3D73
P 4400 3750
F 0 "R4" V 4607 3750 50  0000 C CNN
F 1 "10K" V 4516 3750 50  0000 C CNN
F 2 "solo-nixie:0805_HandSoldering" V 4330 3750 50  0001 C CNN
F 3 "~" H 4400 3750 50  0001 C CNN
	1    4400 3750
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:R-Device R5
U 1 1 619C48C5
P 5000 3750
F 0 "R5" V 5207 3750 50  0000 C CNN
F 1 "10K" V 5116 3750 50  0000 C CNN
F 2 "solo-nixie:0805_HandSoldering" V 4930 3750 50  0001 C CNN
F 3 "~" H 5000 3750 50  0001 C CNN
	1    5000 3750
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:R-Device R6
U 1 1 619C5034
P 5600 3750
F 0 "R6" V 5807 3750 50  0000 C CNN
F 1 "10K" V 5716 3750 50  0000 C CNN
F 2 "solo-nixie:0805_HandSoldering" V 5530 3750 50  0001 C CNN
F 3 "~" H 5600 3750 50  0001 C CNN
	1    5600 3750
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:R-Device R7
U 1 1 619C5765
P 6200 3750
F 0 "R7" V 6407 3750 50  0000 C CNN
F 1 "10K" V 6316 3750 50  0000 C CNN
F 2 "solo-nixie:0805_HandSoldering" V 6130 3750 50  0001 C CNN
F 3 "~" H 6200 3750 50  0001 C CNN
	1    6200 3750
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:R-Device R8
U 1 1 619C5EA9
P 6750 3750
F 0 "R8" V 6957 3750 50  0000 C CNN
F 1 "10K" V 6866 3750 50  0000 C CNN
F 2 "solo-nixie:0805_HandSoldering" V 6680 3750 50  0001 C CNN
F 3 "~" H 6750 3750 50  0001 C CNN
	1    6750 3750
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:R-Device R9
U 1 1 619C66BF
P 7350 3750
F 0 "R9" V 7557 3750 50  0000 C CNN
F 1 "10K" V 7466 3750 50  0000 C CNN
F 2 "solo-nixie:0805_HandSoldering" V 7280 3750 50  0001 C CNN
F 3 "~" H 7350 3750 50  0001 C CNN
	1    7350 3750
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:R-Device R10
U 1 1 619C6F5D
P 7950 3750
F 0 "R10" V 8157 3750 50  0000 C CNN
F 1 "10K" V 8066 3750 50  0000 C CNN
F 2 "solo-nixie:0805_HandSoldering" V 7880 3750 50  0001 C CNN
F 3 "~" H 7950 3750 50  0001 C CNN
	1    7950 3750
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:R-Device R11
U 1 1 619C820D
P 8550 3750
F 0 "R11" V 8757 3750 50  0000 C CNN
F 1 "10K" V 8666 3750 50  0000 C CNN
F 2 "solo-nixie:0805_HandSoldering" V 8480 3750 50  0001 C CNN
F 3 "~" H 8550 3750 50  0001 C CNN
	1    8550 3750
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:R-Device R12
U 1 1 619C8A32
P 9150 3750
F 0 "R12" V 9357 3750 50  0000 C CNN
F 1 "10K" V 9266 3750 50  0000 C CNN
F 2 "solo-nixie:0805_HandSoldering" V 9080 3750 50  0001 C CNN
F 3 "~" H 9150 3750 50  0001 C CNN
	1    9150 3750
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:R-Device R13
U 1 1 619C92C7
P 9750 3750
F 0 "R13" V 9957 3750 50  0000 C CNN
F 1 "10K" V 9866 3750 50  0000 C CNN
F 2 "solo-nixie:0805_HandSoldering" V 9680 3750 50  0001 C CNN
F 3 "~" H 9750 3750 50  0001 C CNN
	1    9750 3750
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:R-Device R14
U 1 1 619C99C0
P 10350 3750
F 0 "R14" V 10557 3750 50  0000 C CNN
F 1 "10K" V 10466 3750 50  0000 C CNN
F 2 "solo-nixie:0805_HandSoldering" V 10280 3750 50  0001 C CNN
F 3 "~" H 10350 3750 50  0001 C CNN
	1    10350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 4300 10050 4200
Wire Wire Line
	10050 4300 9450 4300
Wire Wire Line
	9450 4300 9450 4200
Wire Wire Line
	8850 4300 8850 4200
Wire Wire Line
	8850 4300 8250 4300
Wire Wire Line
	8250 4300 8250 4200
Connection ~ 8850 4300
Wire Wire Line
	8850 4300 9450 4300
Connection ~ 9450 4300
Wire Wire Line
	8250 4300 7650 4300
Wire Wire Line
	7650 4300 7650 4200
Connection ~ 8250 4300
Wire Wire Line
	7650 4300 7050 4300
Wire Wire Line
	7050 4300 7050 4200
Connection ~ 7650 4300
Wire Wire Line
	7050 4300 6500 4300
Wire Wire Line
	6500 4300 6500 4200
Connection ~ 7050 4300
Wire Wire Line
	6500 4300 5900 4300
Wire Wire Line
	5900 4300 5900 4200
Connection ~ 6500 4300
Wire Wire Line
	5900 4300 5300 4300
Wire Wire Line
	5300 4300 5300 4200
Connection ~ 5900 4300
Wire Wire Line
	5300 4300 4700 4300
Wire Wire Line
	4700 4300 4700 4200
Connection ~ 5300 4300
Wire Wire Line
	4400 4000 4400 3900
Wire Wire Line
	5000 4000 5000 3900
Wire Wire Line
	5600 4000 5600 3900
Wire Wire Line
	6200 4000 6200 3900
Wire Wire Line
	6750 4000 6750 3900
Wire Wire Line
	7350 4000 7350 3900
Wire Wire Line
	7950 4000 7950 3900
Wire Wire Line
	8550 4000 8550 3900
Wire Wire Line
	9150 4000 9150 3900
Wire Wire Line
	9750 4000 9750 3900
Wire Wire Line
	10350 4000 10350 3900
Text GLabel 5000 3500 1    50   Input ~ 0
nixie1
Text GLabel 5600 3500 1    50   Input ~ 0
nixie2
Text GLabel 6200 3500 1    50   Input ~ 0
nixie3
Text GLabel 6750 3500 1    50   Input ~ 0
nixie4
Text GLabel 7350 3500 1    50   Input ~ 0
nixie5
Text GLabel 7950 3500 1    50   Input ~ 0
nixie6
Text GLabel 8550 3500 1    50   Input ~ 0
nixie7
Text GLabel 9150 3500 1    50   Input ~ 0
nixie8
Text GLabel 10350 3500 1    50   Input ~ 0
nixieP
Wire Wire Line
	4400 3500 4400 3600
Wire Wire Line
	5000 3500 5000 3600
Wire Wire Line
	5600 3500 5600 3600
Wire Wire Line
	6200 3500 6200 3600
Wire Wire Line
	6750 3600 6750 3500
Wire Wire Line
	7350 3500 7350 3600
Wire Wire Line
	7950 3600 7950 3500
Wire Wire Line
	8550 3600 8550 3500
Wire Wire Line
	9150 3600 9150 3500
Wire Wire Line
	9750 3600 9750 3500
Wire Wire Line
	10350 3600 10350 3500
Text GLabel 9750 3500 1    50   Input ~ 0
nixie9
Text GLabel 4700 3700 1    50   Input ~ 0
cathode0
Text GLabel 5300 3700 1    50   Input ~ 0
cathode1
Text GLabel 5900 3700 1    50   Input ~ 0
cathode2
Text GLabel 6500 3700 1    50   Input ~ 0
cathode3
Text GLabel 7050 3700 1    50   Input ~ 0
cathode4
Text GLabel 7650 3700 1    50   Input ~ 0
cathode5
Text GLabel 8250 3700 1    50   Input ~ 0
cathode6
Text GLabel 8850 3700 1    50   Input ~ 0
cathode7
Text GLabel 9450 3700 1    50   Input ~ 0
cathode8
Text GLabel 10050 3700 1    50   Input ~ 0
cathode9
Text GLabel 10650 3700 1    50   Input ~ 0
cathodeP
Wire Wire Line
	8850 3800 8850 3700
Wire Wire Line
	9450 3800 9450 3700
Wire Wire Line
	10050 3800 10050 3700
Wire Wire Line
	10650 3800 10650 3700
Wire Wire Line
	8250 3700 8250 3800
Wire Wire Line
	7650 3800 7650 3700
Wire Wire Line
	7050 3700 7050 3800
Wire Wire Line
	6500 3800 6500 3700
Wire Wire Line
	4700 3800 4700 3700
Wire Wire Line
	5300 3800 5300 3700
Wire Wire Line
	5900 3800 5900 3700
$Comp
L solo-nixie-rescue:C-Device C2
U 1 1 61A3D5CA
P 7600 1600
F 0 "C2" H 7715 1646 50  0000 L CNN
F 1 "1uF" H 7715 1555 50  0000 L CNN
F 2 "solo-nixie:0805_HandSoldering" H 7638 1450 50  0001 C CNN
F 3 "~" H 7600 1600 50  0001 C CNN
	1    7600 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 61A500BE
P 7600 1850
F 0 "#PWR09" H 7600 1600 50  0001 C CNN
F 1 "GND" H 7605 1677 50  0000 C CNN
F 2 "" H 7600 1850 50  0001 C CNN
F 3 "" H 7600 1850 50  0001 C CNN
	1    7600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1850 7600 1750
$Comp
L power:+5V #PWR05
U 1 1 61A53034
P 7600 1300
F 0 "#PWR05" H 7600 1150 50  0001 C CNN
F 1 "+5V" H 7615 1473 50  0000 C CNN
F 2 "" H 7600 1300 50  0001 C CNN
F 3 "" H 7600 1300 50  0001 C CNN
	1    7600 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1450 7600 1300
$Comp
L solo-nixie-rescue:Conn_01x05_Male-Connector J1
U 1 1 61A6D31A
P 4450 1050
F 0 "J1" H 4558 1431 50  0000 C CNN
F 1 "RTC" H 4558 1340 50  0000 C CNN
F 2 "solo-nixie:Pin_Header_RTC_5x2.54mm_SMD" H 4450 1050 50  0001 C CNN
F 3 "~" H 4450 1050 50  0001 C CNN
	1    4450 1050
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:Conn_01x05_Male-Connector J2
U 1 1 61A6E278
P 4450 2150
F 0 "J2" H 4558 2531 50  0000 C CNN
F 1 "ICSP" H 4558 2440 50  0000 C CNN
F 2 "solo-nixie:PinHeader_1x05_P1.27mm_Vertical" H 4450 2150 50  0001 C CNN
F 3 "~" H 4450 2150 50  0001 C CNN
	1    4450 2150
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:SW_Push-Switch SW1
U 1 1 61A748E2
P 6850 1400
F 0 "SW1" H 6850 1685 50  0000 C CNN
F 1 "SW_Push" H 6850 1594 50  0000 C CNN
F 2 "solo-nixie:SW_SPST_EVQP7A" H 6850 1600 50  0001 C CNN
F 3 "~" H 6850 1600 50  0001 C CNN
	1    6850 1400
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie-rescue:SW_Push-Switch SW2
U 1 1 61A70E15
P 6850 1700
F 0 "SW2" H 6900 1600 50  0000 R CNN
F 1 "SW_Push" H 7000 1500 50  0000 R CNN
F 2 "solo-nixie:SW_SPST_EVQP7A" H 6850 1900 50  0001 C CNN
F 3 "~" H 6850 1900 50  0001 C CNN
	1    6850 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 61A8C723
P 7200 1850
F 0 "#PWR08" H 7200 1600 50  0001 C CNN
F 1 "GND" H 7205 1677 50  0000 C CNN
F 2 "" H 7200 1850 50  0001 C CNN
F 3 "" H 7200 1850 50  0001 C CNN
	1    7200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1400 7050 1400
Wire Wire Line
	7050 1700 7200 1700
Wire Wire Line
	7200 1400 7200 1700
Connection ~ 7200 1700
Wire Wire Line
	7200 1700 7200 1850
$Comp
L power:GND #PWR015
U 1 1 61AB26AB
P 2200 2550
F 0 "#PWR015" H 2200 2300 50  0001 C CNN
F 1 "GND" H 2205 2377 50  0000 C CNN
F 2 "" H 2200 2550 50  0001 C CNN
F 3 "" H 2200 2550 50  0001 C CNN
	1    2200 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2550 2200 2500
$Comp
L power:+5V #PWR02
U 1 1 61AB6B4A
P 2200 850
F 0 "#PWR02" H 2200 700 50  0001 C CNN
F 1 "+5V" H 2215 1023 50  0000 C CNN
F 2 "" H 2200 850 50  0001 C CNN
F 3 "" H 2200 850 50  0001 C CNN
	1    2200 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 850  2200 1100
Text GLabel 1000 1300 0    50   Input ~ 0
ICSPDAT
Text GLabel 1000 1400 0    50   Input ~ 0
ICSPCLK
Text GLabel 1000 1600 0    50   Input ~ 0
VPP
Wire Wire Line
	1000 1300 1250 1300
Wire Wire Line
	1400 1400 1350 1400
Wire Wire Line
	1000 1600 1400 1600
Text GLabel 5000 2250 2    50   Input ~ 0
ICSPDAT
Text GLabel 5000 2350 2    50   Input ~ 0
ICSPCLK
Text GLabel 5000 1950 2    50   Input ~ 0
VPP
Wire Wire Line
	5000 1950 4650 1950
$Comp
L power:GND #PWR014
U 1 1 61ADE6F2
P 4800 2450
F 0 "#PWR014" H 4800 2200 50  0001 C CNN
F 1 "GND" H 4805 2277 50  0000 C CNN
F 2 "" H 4800 2450 50  0001 C CNN
F 3 "" H 4800 2450 50  0001 C CNN
	1    4800 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 61ADEC4D
P 4800 1800
F 0 "#PWR07" H 4800 1650 50  0001 C CNN
F 1 "+5V" H 4815 1973 50  0000 C CNN
F 2 "" H 4800 1800 50  0001 C CNN
F 3 "" H 4800 1800 50  0001 C CNN
	1    4800 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2250 4650 2250
Wire Wire Line
	5000 2350 4650 2350
Wire Wire Line
	4650 2050 4800 2050
Wire Wire Line
	4800 2050 4800 1800
Wire Wire Line
	4650 2150 4800 2150
Wire Wire Line
	4800 2150 4800 2450
Text GLabel 5050 950  2    50   Input ~ 0
RTCI2C_DAT
Text GLabel 5050 1050 2    50   Input ~ 0
RTCI2C_CLK
$Comp
L power:+5V #PWR01
U 1 1 6197A509
P 4800 750
F 0 "#PWR01" H 4800 600 50  0001 C CNN
F 1 "+5V" H 4815 923 50  0000 C CNN
F 2 "" H 4800 750 50  0001 C CNN
F 3 "" H 4800 750 50  0001 C CNN
	1    4800 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6197AFB5
P 4800 1350
F 0 "#PWR06" H 4800 1100 50  0001 C CNN
F 1 "GND" H 4805 1177 50  0000 C CNN
F 2 "" H 4800 1350 50  0001 C CNN
F 3 "" H 4800 1350 50  0001 C CNN
	1    4800 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 750  4800 850 
Wire Wire Line
	4800 850  4650 850 
Wire Wire Line
	4650 1250 4800 1250
Wire Wire Line
	4800 1250 4800 1350
Text GLabel 6550 1400 0    50   Input ~ 0
BUTTON_1
Text GLabel 6550 1700 0    50   Input ~ 0
BUTTON_2
Wire Wire Line
	6650 1400 6550 1400
Wire Wire Line
	6550 1700 6650 1700
Text GLabel 1150 1200 0    50   Input ~ 0
nixie0
Text GLabel 1150 1100 0    50   Input ~ 0
nixie1
Wire Wire Line
	1150 1200 1250 1200
Wire Wire Line
	1250 1200 1250 1300
Connection ~ 1250 1300
Wire Wire Line
	1250 1300 1400 1300
Wire Wire Line
	1150 1100 1350 1100
Wire Wire Line
	1350 1100 1350 1400
Connection ~ 1350 1400
Wire Wire Line
	1350 1400 1000 1400
Text GLabel 1150 2000 0    50   Input ~ 0
nixie2
Text GLabel 1150 2100 0    50   Input ~ 0
nixie3
Text GLabel 1150 2200 0    50   Input ~ 0
nixie4
Text GLabel 1150 2300 0    50   Input ~ 0
nixie5
Text GLabel 3250 1600 2    50   Input ~ 0
nixie6
Text GLabel 3250 1700 2    50   Input ~ 0
nixie7
Text GLabel 3250 1800 2    50   Input ~ 0
nixie8
Text GLabel 3250 1900 2    50   Input ~ 0
nixie9
Text GLabel 3250 2000 2    50   Input ~ 0
nixieP
Text GLabel 1150 1500 0    50   Input ~ 0
HV_drive
Wire Wire Line
	1150 1500 1400 1500
Wire Wire Line
	1150 2000 1400 2000
Wire Wire Line
	1400 2100 1150 2100
Wire Wire Line
	1150 2200 1400 2200
Wire Wire Line
	1400 2300 1150 2300
Text GLabel 3250 1300 2    50   Input ~ 0
BUTTON_1
Text GLabel 3250 1500 2    50   Input ~ 0
BUTTON_2
Wire Wire Line
	3250 1500 3000 1500
Wire Wire Line
	3000 1300 3250 1300
Wire Wire Line
	3000 2000 3250 2000
Wire Wire Line
	3250 1900 3000 1900
Wire Wire Line
	3000 1800 3250 1800
Wire Wire Line
	3250 1700 3000 1700
Wire Wire Line
	3000 1600 3250 1600
Text GLabel 3250 1400 2    50   Input ~ 0
Voltage_meas
Wire Wire Line
	3250 1400 3000 1400
Text GLabel 2900 3950 3    50   Input ~ 0
cathodeP
Text GLabel 3100 3950 3    50   Input ~ 0
cathode9
Text GLabel 3000 3950 3    50   Input ~ 0
cathode8
Text GLabel 2800 3950 3    50   Input ~ 0
cathode7
Text GLabel 2700 3950 3    50   Input ~ 0
cathode6
Text GLabel 2600 3950 3    50   Input ~ 0
cathode5
Text GLabel 2500 3950 3    50   Input ~ 0
cathode4
Text GLabel 2300 3950 3    50   Input ~ 0
cathode2
Text GLabel 2400 3950 3    50   Input ~ 0
cathode3
Text GLabel 2200 3950 3    50   Input ~ 0
cathode1
Text GLabel 3200 3950 3    50   Input ~ 0
cathode0
$Comp
L power:HT #PWR04
U 1 1 61A02563
P 9550 850
F 0 "#PWR04" H 9550 970 50  0001 C CNN
F 1 "HT" H 9570 993 50  0000 C CNN
F 2 "" H 9550 850 50  0001 C CNN
F 3 "" H 9550 850 50  0001 C CNN
	1    9550 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 850  9550 1100
$Comp
L power:HT #PWR016
U 1 1 61A07F4D
P 3050 2900
F 0 "#PWR016" H 3050 3020 50  0001 C CNN
F 1 "HT" H 3070 3043 50  0000 C CNN
F 2 "" H 3050 2900 50  0001 C CNN
F 3 "" H 3050 2900 50  0001 C CNN
	1    3050 2900
	1    0    0    -1  
$EndComp
$Comp
L solo-nixie:Nixie_0-9P N1
U 1 1 61A14442
P 2700 3250
F 0 "N1" H 3428 3121 50  0000 L CNN
F 1 "Nixie_0-9P" H 3428 3030 50  0000 L CNN
F 2 "solo-nixie:LD8007" H 2700 3250 50  0001 C CNN
F 3 "" H 2700 3250 50  0001 C CNN
	1    2700 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2900 3050 2950
Wire Wire Line
	3200 3900 3200 3950
Wire Wire Line
	3100 3950 3100 3900
Wire Wire Line
	3000 3950 3000 3900
Wire Wire Line
	2900 3950 2900 3900
Wire Wire Line
	2800 3950 2800 3900
Wire Wire Line
	2700 3950 2700 3900
Wire Wire Line
	2600 3950 2600 3900
Wire Wire Line
	2500 3950 2500 3900
Wire Wire Line
	2400 3950 2400 3900
Wire Wire Line
	2300 3950 2300 3900
Wire Wire Line
	2200 3950 2200 3900
Wire Wire Line
	4650 1150 4800 1150
Wire Wire Line
	4800 1150 4800 1250
Connection ~ 4800 1250
$Comp
L solo-nixie-rescue:USB_B_Micro-Connector J3
U 1 1 61A675A5
P 1100 3400
F 0 "J3" H 1157 3867 50  0000 C CNN
F 1 "USB_B_Micro" H 1157 3776 50  0000 C CNN
F 2 "solo-nixie:USB_Micro-B_Wuerth-629105150521_CircularHoles" H 1250 3350 50  0001 C CNN
F 3 "~" H 1250 3350 50  0001 C CNN
	1    1100 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 61A68859
P 1550 3050
F 0 "#PWR018" H 1550 2900 50  0001 C CNN
F 1 "+5V" H 1565 3223 50  0000 C CNN
F 2 "" H 1550 3050 50  0001 C CNN
F 3 "" H 1550 3050 50  0001 C CNN
	1    1550 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 61A68DAC
P 1100 3900
F 0 "#PWR019" H 1100 3650 50  0001 C CNN
F 1 "GND" H 1105 3727 50  0000 C CNN
F 2 "" H 1100 3900 50  0001 C CNN
F 3 "" H 1100 3900 50  0001 C CNN
	1    1100 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3900 1100 3850
Wire Wire Line
	1550 3200 1550 3050
Wire Wire Line
	1400 3200 1550 3200
Wire Wire Line
	1000 3800 1000 3850
Wire Wire Line
	1000 3850 1100 3850
Connection ~ 1100 3850
Wire Wire Line
	1100 3850 1100 3800
Wire Wire Line
	4650 950  5050 950 
Wire Wire Line
	5050 1050 4650 1050
Text GLabel 1150 1700 0    50   Input ~ 0
RTCI2C_CLK
Text GLabel 1150 1800 0    50   Input ~ 0
RTCI2C_DAT
Wire Wire Line
	1150 1800 1400 1800
Wire Wire Line
	1400 1700 1150 1700
$Comp
L solo-nixie-rescue:R-Device R16
U 1 1 619AA0E6
P 10650 4550
F 0 "R16" V 10857 4550 50  0000 C CNN
F 1 "0" V 10766 4550 50  0000 C CNN
F 2 "solo-nixie:0805_HandSoldering" V 10580 4550 50  0001 C CNN
F 3 "~" H 10650 4550 50  0001 C CNN
	1    10650 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 4700 10650 4800
Wire Wire Line
	10650 4200 10650 4400
$Comp
L solo-nixie-rescue:R-Device R15
U 1 1 619B7EA7
P 10050 4550
F 0 "R15" V 10257 4550 50  0000 C CNN
F 1 "0" V 10166 4550 50  0000 C CNN
F 2 "solo-nixie:0805_HandSoldering" V 9980 4550 50  0001 C CNN
F 3 "~" H 10050 4550 50  0001 C CNN
	1    10050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 4300 10050 4400
Connection ~ 10050 4300
$Comp
L power:GND #PWR0101
U 1 1 619BEE9D
P 10050 4800
F 0 "#PWR0101" H 10050 4550 50  0001 C CNN
F 1 "GND" H 10055 4627 50  0000 C CNN
F 2 "" H 10050 4800 50  0001 C CNN
F 3 "" H 10050 4800 50  0001 C CNN
	1    10050 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 4800 10050 4700
$EndSCHEMATC
