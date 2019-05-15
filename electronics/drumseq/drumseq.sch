EESchema Schematic File Version 4
LIBS:drumseq-cache
EELAYER 26 0
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
L Driver_Motor:L293D U1
U 1 1 5C6C9B9C
P 5950 3850
F 0 "U1" H 5950 5028 50  0000 C CNN
F 1 "L293D" H 5950 4937 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6200 3100 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 5650 4550 50  0001 C CNN
	1    5950 3850
	1    0    0    -1  
$EndComp
$Comp
L Motor:Stepper_Motor_bipolar M1
U 1 1 5C6CBD64
P 7600 3950
F 0 "M1" H 7788 4073 50  0000 L CNN
F 1 "Stepper_Motor_bipolar" H 7788 3982 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-4_P5.08mm" H 7610 3940 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 7610 3940 50  0001 C CNN
	1    7600 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5C6CBF9C
P 4400 2650
F 0 "D1" V 4300 2500 50  0000 C CNN
F 1 "LED" V 4400 2500 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_FlatTop" H 4400 2650 50  0001 C CNN
F 3 "~" H 4400 2650 50  0001 C CNN
	1    4400 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5C6CC04D
P 4400 2300
F 0 "R1" H 4250 2350 50  0000 C CNN
F 1 "330" H 4250 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4330 2300 50  0001 C CNN
F 3 "~" H 4400 2300 50  0001 C CNN
	1    4400 2300
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5C6CCC3A
P 3050 2050
F 0 "J1" H 2970 1725 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2970 1816 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 3050 2050 50  0001 C CNN
F 3 "~" H 3050 2050 50  0001 C CNN
	1    3050 2050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5C6CE30F
P 3750 2200
F 0 "#PWR0101" H 3750 1950 50  0001 C CNN
F 1 "GND" H 3755 2027 50  0000 C CNN
F 2 "" H 3750 2200 50  0001 C CNN
F 3 "" H 3750 2200 50  0001 C CNN
	1    3750 2200
	1    0    0    -1  
$EndComp
Text GLabel 4550 2050 2    50   Output ~ 10
VCC
Wire Wire Line
	4150 3600 4900 3600
Wire Wire Line
	4900 3600 4900 3250
Wire Wire Line
	4900 3250 5450 3250
Wire Wire Line
	4150 3700 4950 3700
Wire Wire Line
	4950 3700 4950 3450
Wire Wire Line
	4950 3450 5450 3450
Wire Wire Line
	5450 3850 4950 3850
Wire Wire Line
	4950 3850 4950 3800
Wire Wire Line
	4950 3800 4150 3800
Wire Wire Line
	5450 4050 4900 4050
Wire Wire Line
	4900 4050 4900 3900
Wire Wire Line
	4900 3900 4150 3900
Text GLabel 5450 3650 0    50   Input ~ 10
VCC
Text GLabel 5450 4250 0    50   Input ~ 10
VCC
Text GLabel 5450 2700 0    50   Input ~ 10
VCC
Wire Wire Line
	5850 2850 5850 2700
Wire Wire Line
	5850 2700 5450 2700
Wire Wire Line
	6050 2850 6050 2700
Wire Wire Line
	6050 2700 5850 2700
Connection ~ 5850 2700
$Comp
L power:GND #PWR0102
U 1 1 5C6CF2EB
P 5950 4800
F 0 "#PWR0102" H 5950 4550 50  0001 C CNN
F 1 "GND" H 5955 4627 50  0000 C CNN
F 2 "" H 5950 4800 50  0001 C CNN
F 3 "" H 5950 4800 50  0001 C CNN
	1    5950 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4650 6050 4750
Wire Wire Line
	6050 4800 5950 4800
Wire Wire Line
	6150 4650 6150 4750
Wire Wire Line
	6150 4750 6050 4750
Connection ~ 6050 4750
Wire Wire Line
	6050 4750 6050 4800
Wire Wire Line
	5850 4650 5850 4750
Wire Wire Line
	5850 4800 5950 4800
Connection ~ 5950 4800
Wire Wire Line
	5750 4650 5750 4750
Wire Wire Line
	5750 4750 5850 4750
Connection ~ 5850 4750
Wire Wire Line
	5850 4750 5850 4800
Wire Wire Line
	4400 2450 4400 2500
$Comp
L Switch:SW_DPDT_x2 SW1
U 1 1 5C6D0314
P 4050 1950
F 0 "SW1" H 4050 2235 50  0000 C CNN
F 1 "SW_DPDT_x2" H 4050 2144 50  0000 C CNN
F 2 "Button_Switch_THT:SW_CuK_JS202011CQN_DPDT_Straight" H 4050 1950 50  0001 C CNN
F 3 "" H 4050 1950 50  0001 C CNN
	1    4050 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2050 4250 2050
Wire Wire Line
	4400 2050 4400 2150
Wire Wire Line
	4550 2050 4400 2050
Connection ~ 4400 2050
$Comp
L power:GND #PWR0103
U 1 1 5C6D2D40
P 4400 2900
F 0 "#PWR0103" H 4400 2650 50  0001 C CNN
F 1 "GND" H 4405 2727 50  0000 C CNN
F 2 "" H 4400 2900 50  0001 C CNN
F 3 "" H 4400 2900 50  0001 C CNN
	1    4400 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2800 4400 2900
$Comp
L Device:LED D2
U 1 1 5C6D3DFE
P 4650 4650
F 0 "D2" V 4550 4500 50  0000 C CNN
F 1 "LED" V 4650 4500 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_FlatTop" H 4650 4650 50  0001 C CNN
F 3 "~" H 4650 4650 50  0001 C CNN
	1    4650 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5C6D3E05
P 4650 4300
F 0 "R2" H 4500 4350 50  0000 C CNN
F 1 "330" H 4500 4250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4580 4300 50  0001 C CNN
F 3 "~" H 4650 4300 50  0001 C CNN
	1    4650 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 4450 4650 4500
$Comp
L power:GND #PWR0104
U 1 1 5C6D3E0D
P 4650 4900
F 0 "#PWR0104" H 4650 4650 50  0001 C CNN
F 1 "GND" H 4655 4727 50  0000 C CNN
F 2 "" H 4650 4900 50  0001 C CNN
F 3 "" H 4650 4900 50  0001 C CNN
	1    4650 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4800 4650 4900
Wire Wire Line
	6450 4050 7300 4050
Wire Wire Line
	6450 3850 7300 3850
Wire Wire Line
	6450 3250 7500 3250
Wire Wire Line
	7500 3250 7500 3650
Wire Wire Line
	6450 3450 7700 3450
Wire Wire Line
	7700 3450 7700 3650
$Comp
L Connector:Conn_01x06_Male J3
U 1 1 5C6D7131
P 3950 3800
F 0 "J3" H 4056 4178 50  0000 C CNN
F 1 "Conn_01x06_Male" H 4056 4087 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 3950 3800 50  0001 C CNN
F 3 "~" H 3950 3800 50  0001 C CNN
	1    3950 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4000 4650 4000
Wire Wire Line
	4650 4000 4650 4150
$Comp
L power:GND #PWR0105
U 1 1 5C6D86FB
P 4250 4200
F 0 "#PWR0105" H 4250 3950 50  0001 C CNN
F 1 "GND" H 4255 4027 50  0000 C CNN
F 2 "" H 4250 4200 50  0001 C CNN
F 3 "" H 4250 4200 50  0001 C CNN
	1    4250 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4100 4250 4100
Wire Wire Line
	4250 4100 4250 4200
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5C6D97E3
P 3050 2550
F 0 "J2" H 2970 2225 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2970 2316 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 3050 2550 50  0001 C CNN
F 3 "~" H 3050 2550 50  0001 C CNN
	1    3050 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 1950 3450 1950
Wire Wire Line
	3250 2050 3550 2050
Wire Wire Line
	3750 2050 3750 2200
Wire Wire Line
	3450 1950 3450 2450
Wire Wire Line
	3450 2450 3250 2450
Connection ~ 3450 1950
Wire Wire Line
	3450 1950 3850 1950
Wire Wire Line
	3250 2550 3550 2550
Wire Wire Line
	3550 2550 3550 2050
Connection ~ 3550 2050
Wire Wire Line
	3550 2050 3750 2050
Text Notes 6500 4000 0    50   Italic 0
Negro\n\nCafé\n\n\n\n\nAmarillo\n\nNaranja
$EndSCHEMATC
