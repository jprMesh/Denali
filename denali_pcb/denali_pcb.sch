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
L power:+5V #PWR0101
U 1 1 5EAF8C25
P 3150 1500
F 0 "#PWR0101" H 3150 1350 50  0001 C CNN
F 1 "+5V" H 3165 1673 50  0000 C CNN
F 2 "" H 3150 1500 50  0001 C CNN
F 3 "" H 3150 1500 50  0001 C CNN
	1    3150 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1500 3150 1650
$Comp
L power:GND #PWR0102
U 1 1 5EAFA053
P 2750 5300
F 0 "#PWR0102" H 2750 5050 50  0001 C CNN
F 1 "GND" H 2755 5127 50  0000 C CNN
F 2 "" H 2750 5300 50  0001 C CNN
F 3 "" H 2750 5300 50  0001 C CNN
	1    2750 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5300 2750 5250
$Comp
L Device:R_Small R4
U 1 1 5EAFB10C
P 4200 4050
F 0 "R4" V 4004 4050 50  0000 C CNN
F 1 "10k" V 4095 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4200 4050 50  0001 C CNN
F 3 "~" H 4200 4050 50  0001 C CNN
	1    4200 4050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5EAFC0C8
P 4550 4050
F 0 "#PWR0103" H 4550 3800 50  0001 C CNN
F 1 "GND" H 4555 3877 50  0000 C CNN
F 2 "" H 4550 4050 50  0001 C CNN
F 3 "" H 4550 4050 50  0001 C CNN
	1    4550 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4050 4100 4050
Wire Wire Line
	4300 4050 4550 4050
$Comp
L Device:R_Small R2
U 1 1 5EAFC927
P 2300 2950
F 0 "R2" V 2104 2950 50  0000 C CNN
F 1 "22" V 2195 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2300 2950 50  0001 C CNN
F 3 "~" H 2300 2950 50  0001 C CNN
	1    2300 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5EAFD106
P 1950 3050
F 0 "R3" V 1754 3050 50  0000 C CNN
F 1 "22" V 1845 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1950 3050 50  0001 C CNN
F 3 "~" H 1950 3050 50  0001 C CNN
	1    1950 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 2950 2400 2950
Wire Wire Line
	2200 2950 1700 2950
Wire Wire Line
	2650 3050 2050 3050
Wire Wire Line
	1850 3050 1700 3050
$Comp
L Device:C_Small C3
U 1 1 5EAFE47B
P 2300 3350
F 0 "C3" H 2392 3396 50  0000 L CNN
F 1 "1uF" H 2392 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2300 3350 50  0001 C CNN
F 3 "~" H 2300 3350 50  0001 C CNN
	1    2300 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5EAFF638
P 2300 3600
F 0 "#PWR0104" H 2300 3350 50  0001 C CNN
F 1 "GND" H 2305 3427 50  0000 C CNN
F 2 "" H 2300 3600 50  0001 C CNN
F 3 "" H 2300 3600 50  0001 C CNN
	1    2300 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3450 2300 3600
Wire Wire Line
	2300 3250 2650 3250
$Comp
L power:+5V #PWR0105
U 1 1 5EB1A579
P 2500 2750
F 0 "#PWR0105" H 2500 2600 50  0001 C CNN
F 1 "+5V" H 2515 2923 50  0000 C CNN
F 2 "" H 2500 2750 50  0001 C CNN
F 3 "" H 2500 2750 50  0001 C CNN
	1    2500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2750 2650 2750
$Comp
L Device:Crystal_GND24_Small Y1
U 1 1 5EB1BD08
P 2050 2250
F 0 "Y1" V 2004 2394 50  0000 L CNN
F 1 "16MHz" V 2095 2394 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 2050 2250 50  0001 C CNN
F 3 "~" H 2050 2250 50  0001 C CNN
	1    2050 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 2150 2650 2150
Wire Wire Line
	2050 2350 2650 2350
$Comp
L Device:C_Small C2
U 1 1 5EB1E484
P 1750 2350
F 0 "C2" V 1521 2350 50  0000 C CNN
F 1 "22pF" V 1612 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1750 2350 50  0001 C CNN
F 3 "~" H 1750 2350 50  0001 C CNN
	1    1750 2350
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5EB1F66B
P 1750 2000
F 0 "C1" V 1521 2000 50  0000 C CNN
F 1 "22pF" V 1612 2000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1750 2000 50  0001 C CNN
F 3 "~" H 1750 2000 50  0001 C CNN
	1    1750 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5EB1FDBA
P 1550 2500
F 0 "#PWR0106" H 1550 2250 50  0001 C CNN
F 1 "GND" H 1555 2327 50  0000 C CNN
F 2 "" H 1550 2500 50  0001 C CNN
F 3 "" H 1550 2500 50  0001 C CNN
	1    1550 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2150 2050 2000
Wire Wire Line
	2050 2000 1850 2000
Connection ~ 2050 2150
Wire Wire Line
	2050 2350 1850 2350
Connection ~ 2050 2350
Wire Wire Line
	1950 2250 1950 2500
Wire Wire Line
	1950 2500 1650 2500
Wire Wire Line
	2150 2250 2150 2500
Wire Wire Line
	2150 2500 1950 2500
Connection ~ 1950 2500
Wire Wire Line
	1650 2350 1650 2500
Connection ~ 1650 2500
Wire Wire Line
	1650 2500 1550 2500
Wire Wire Line
	1650 2000 1650 2350
Connection ~ 1650 2350
$Comp
L power:GND #PWR0107
U 1 1 5EB2373D
P 2000 1750
F 0 "#PWR0107" H 2000 1500 50  0001 C CNN
F 1 "GND" H 2005 1577 50  0000 C CNN
F 2 "" H 2000 1750 50  0001 C CNN
F 3 "" H 2000 1750 50  0001 C CNN
	1    2000 1750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5EB24035
P 2400 1750
F 0 "SW1" H 2400 2035 50  0000 C CNN
F 1 "SW_Push" H 2400 1944 50  0000 C CNN
F 2 "random-keyboard-parts:SKQG-1155865" H 2400 1950 50  0001 C CNN
F 3 "~" H 2400 1950 50  0001 C CNN
	1    2400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1950 2650 1950
Wire Wire Line
	2200 1750 2000 1750
Wire Wire Line
	2600 1950 2600 1750
$Comp
L Device:R_Small R1
U 1 1 5EB27766
P 2600 1550
F 0 "R1" H 2659 1596 50  0000 L CNN
F 1 "10k" H 2659 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2600 1550 50  0001 C CNN
F 3 "~" H 2600 1550 50  0001 C CNN
	1    2600 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5EB27EC8
P 2600 1350
F 0 "#PWR0108" H 2600 1200 50  0001 C CNN
F 1 "+5V" H 2615 1523 50  0000 C CNN
F 2 "" H 2600 1350 50  0001 C CNN
F 3 "" H 2600 1350 50  0001 C CNN
	1    2600 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1350 2600 1450
Wire Wire Line
	2600 1650 2600 1750
Connection ~ 2600 1750
Text GLabel 1700 2950 0    50   Input ~ 0
D+
Text GLabel 1700 3050 0    50   Input ~ 0
D-
Connection ~ 3150 5250
Wire Wire Line
	3150 5250 3250 5250
Wire Wire Line
	2750 5250 3150 5250
Connection ~ 3150 1650
Connection ~ 3250 1650
Wire Wire Line
	3250 1650 3150 1650
Wire Wire Line
	3250 1650 3350 1650
Wire Wire Line
	1800 4450 2000 4450
Connection ~ 1800 4450
Wire Wire Line
	1800 4450 1800 4550
Wire Wire Line
	2000 4450 2400 4450
Connection ~ 2000 4450
Wire Wire Line
	1600 4450 1800 4450
Connection ~ 1600 4450
Wire Wire Line
	1200 4450 1600 4450
Wire Wire Line
	1800 4250 2000 4250
Connection ~ 1800 4250
Wire Wire Line
	1800 4150 1800 4250
Wire Wire Line
	2000 4250 2400 4250
Connection ~ 2000 4250
Wire Wire Line
	1600 4250 1800 4250
Connection ~ 1600 4250
Wire Wire Line
	1200 4250 1600 4250
$Comp
L power:GND #PWR0109
U 1 1 5EB0478A
P 1800 4550
F 0 "#PWR0109" H 1800 4300 50  0001 C CNN
F 1 "GND" H 1805 4377 50  0000 C CNN
F 2 "" H 1800 4550 50  0001 C CNN
F 3 "" H 1800 4550 50  0001 C CNN
	1    1800 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5EB03C6E
P 1800 4150
F 0 "#PWR0110" H 1800 4000 50  0001 C CNN
F 1 "+5V" H 1815 4323 50  0000 C CNN
F 2 "" H 1800 4150 50  0001 C CNN
F 3 "" H 1800 4150 50  0001 C CNN
	1    1800 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5EB03626
P 2400 4350
F 0 "C7" H 2492 4396 50  0000 L CNN
F 1 "10uF" H 2492 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2400 4350 50  0001 C CNN
F 3 "~" H 2400 4350 50  0001 C CNN
	1    2400 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5EB00C29
P 2000 4350
F 0 "C6" H 2092 4396 50  0000 L CNN
F 1 "0.1uF" H 2092 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2000 4350 50  0001 C CNN
F 3 "~" H 2000 4350 50  0001 C CNN
	1    2000 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5EB0099F
P 1600 4350
F 0 "C5" H 1692 4396 50  0000 L CNN
F 1 "0.1uF" H 1692 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1600 4350 50  0001 C CNN
F 3 "~" H 1600 4350 50  0001 C CNN
	1    1600 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5EB0015D
P 1200 4350
F 0 "C4" H 1292 4396 50  0000 L CNN
F 1 "0.1uF" H 1292 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1200 4350 50  0001 C CNN
F 3 "~" H 1200 4350 50  0001 C CNN
	1    1200 4350
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega32U4-AU U1
U 1 1 5EAF5DC4
P 3250 3450
F 0 "U1" H 3250 1561 50  0000 C CNN
F 1 "ATmega32U4-AU" H 3250 1470 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 3250 3450 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7766-8-bit-AVR-ATmega16U4-32U4_Datasheet.pdf" H 3250 3450 50  0001 C CNN
	1    3250 3450
	1    0    0    -1  
$EndComp
$Comp
L random-keyboard-parts:Molex-0548190589 USB1
U 1 1 5EB480C6
P 1650 6700
F 0 "USB1" V 2187 6667 60  0000 C CNN
F 1 "Molex-0548190589" V 2081 6667 60  0000 C CNN
F 2 "random-keyboard-parts:Molex-0548190589" H 1650 6700 60  0001 C CNN
F 3 "" H 1650 6700 60  0001 C CNN
	1    1650 6700
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5EB49E67
P 3100 6500
F 0 "#PWR0111" H 3100 6350 50  0001 C CNN
F 1 "+5V" H 3115 6673 50  0000 C CNN
F 2 "" H 3100 6500 50  0001 C CNN
F 3 "" H 3100 6500 50  0001 C CNN
	1    3100 6500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0112
U 1 1 5EB4AD4D
P 2250 6500
F 0 "#PWR0112" H 2250 6350 50  0001 C CNN
F 1 "VCC" H 2267 6673 50  0000 C CNN
F 2 "" H 2250 6500 50  0001 C CNN
F 3 "" H 2250 6500 50  0001 C CNN
	1    2250 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:Polyfuse_Small F1
U 1 1 5EB4BB90
P 2650 6500
F 0 "F1" V 2445 6500 50  0000 C CNN
F 1 "500mA" V 2536 6500 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric" H 2700 6300 50  0001 L CNN
F 3 "~" H 2650 6500 50  0001 C CNN
	1    2650 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 6500 2250 6500
Connection ~ 2250 6500
Wire Wire Line
	2250 6500 2550 6500
Wire Wire Line
	2750 6500 3100 6500
Text GLabel 1950 6700 2    50   Input ~ 0
D+
Text GLabel 1950 6600 2    50   Input ~ 0
D-
$Comp
L power:GND #PWR0113
U 1 1 5EB50688
P 2050 6900
F 0 "#PWR0113" H 2050 6650 50  0001 C CNN
F 1 "GND" H 2055 6727 50  0000 C CNN
F 2 "" H 2050 6900 50  0001 C CNN
F 3 "" H 2050 6900 50  0001 C CNN
	1    2050 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 6900 1950 6900
$Comp
L MX_Alps_Hybrid:MX-NoLED MX1
U 1 1 5EB57FA6
P 5300 1650
F 0 "MX1" H 5333 1873 60  0000 C CNN
F 1 "MX-NoLED" H 5333 1799 20  0000 C CNN
F 2 "Kailh_Choc:KailhChoc-1U" H 4675 1625 60  0001 C CNN
F 3 "" H 4675 1625 60  0001 C CNN
	1    5300 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D1
U 1 1 5EB590FE
P 5150 1900
F 0 "D1" V 5196 1832 50  0000 R CNN
F 1 "SOD-123" V 5105 1832 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" V 5150 1900 50  0001 C CNN
F 3 "~" V 5150 1900 50  0001 C CNN
	1    5150 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 1800 5150 1800
$Comp
L MX_Alps_Hybrid:MX-NoLED MX2
U 1 1 5EB654B7
P 5850 1650
F 0 "MX2" H 5883 1873 60  0000 C CNN
F 1 "MX-NoLED" H 5883 1799 20  0000 C CNN
F 2 "Kailh_Choc:KailhChoc-1U" H 5225 1625 60  0001 C CNN
F 3 "" H 5225 1625 60  0001 C CNN
	1    5850 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D2
U 1 1 5EB654BD
P 5700 1900
F 0 "D2" V 5746 1832 50  0000 R CNN
F 1 "SOD-123" V 5655 1832 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" V 5700 1900 50  0001 C CNN
F 3 "~" V 5700 1900 50  0001 C CNN
	1    5700 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 1800 5700 1800
$Comp
L MX_Alps_Hybrid:MX-NoLED MX3
U 1 1 5EB674B8
P 5300 2300
F 0 "MX3" H 5333 2523 60  0000 C CNN
F 1 "MX-NoLED" H 5333 2449 20  0000 C CNN
F 2 "Kailh_Choc:KailhChoc-1U" H 4675 2275 60  0001 C CNN
F 3 "" H 4675 2275 60  0001 C CNN
	1    5300 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D3
U 1 1 5EB674BE
P 5150 2550
F 0 "D3" V 5196 2482 50  0000 R CNN
F 1 "SOD-123" V 5105 2482 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" V 5150 2550 50  0001 C CNN
F 3 "~" V 5150 2550 50  0001 C CNN
	1    5150 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 2450 5150 2450
$Comp
L MX_Alps_Hybrid:MX-NoLED MX4
U 1 1 5EB68E72
P 5850 2300
F 0 "MX4" H 5883 2523 60  0000 C CNN
F 1 "MX-NoLED" H 5883 2449 20  0000 C CNN
F 2 "Kailh_Choc:KailhChoc-1U" H 5225 2275 60  0001 C CNN
F 3 "" H 5225 2275 60  0001 C CNN
	1    5850 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D4
U 1 1 5EB68E78
P 5700 2550
F 0 "D4" V 5746 2482 50  0000 R CNN
F 1 "SOD-123" V 5655 2482 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" V 5700 2550 50  0001 C CNN
F 3 "~" V 5700 2550 50  0001 C CNN
	1    5700 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 2450 5700 2450
Wire Wire Line
	4800 2000 5150 2000
Connection ~ 5150 2000
Wire Wire Line
	5150 2000 5700 2000
Wire Wire Line
	4800 2650 5150 2650
Connection ~ 5150 2650
Wire Wire Line
	5150 2650 5700 2650
Wire Wire Line
	5450 1600 5450 1250
Wire Wire Line
	6000 1250 6000 1600
Wire Wire Line
	5450 1600 5450 2250
Connection ~ 5450 1600
Wire Wire Line
	6000 1600 6000 2250
Connection ~ 6000 1600
Text GLabel 4800 2000 0    50   Input ~ 0
ROW0
Text GLabel 4800 2650 0    50   Input ~ 0
ROW1
Text GLabel 5450 1250 1    50   Input ~ 0
COL0
Text GLabel 6000 1250 1    50   Input ~ 0
COL1
$EndSCHEMATC
