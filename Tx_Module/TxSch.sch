EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 11693 16535 portrait
encoding utf-8
Sheet 1 1
Title "Tx_Sch_V1.0 NMEA FO Tx"
Date ""
Rev "1.0"
Comp "T.Spires"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 5C4656F5
P 5800 1650
F 0 "U1" V 5250 3000 50  0000 R CNN
F 1 "ATmega328P-AU" V 5250 900 50  0000 R CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5800 1650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5800 1650 50  0001 C CNN
	1    5800 1650
	0    1    1    0   
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U4
U 1 1 5C46575E
P 5800 3950
F 0 "U4" V 5250 5350 50  0000 R CNN
F 1 "ATmega328P-AU" V 5250 3200 50  0000 R CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5800 3950 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5800 3950 50  0001 C CNN
	1    5800 3950
	0    1    -1   0   
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U5
U 1 1 5C4657FE
P 10100 4700
F 0 "U5" H 10500 6150 50  0000 C CNN
F 1 "ATmega328P-AU" H 9700 6150 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 10100 4700 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 10100 4700 50  0001 C CNN
	1    10100 4700
	-1   0    0    -1  
$EndComp
$Comp
L Interface_UART:MAX485E U8
U 1 1 5C4658DA
P 2200 7600
F 0 "U8" H 1950 8050 50  0000 C CNN
F 1 "MAX485E" H 2450 8050 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2200 6900 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 2200 7650 50  0001 C CNN
	1    2200 7600
	-1   0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U11
U 1 1 5C465A97
P 3600 13100
F 0 "U11" H 3600 13342 50  0000 C CNN
F 1 "L7805" H 3600 13251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3625 12950 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 3600 13050 50  0001 C CNN
	1    3600 13100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U10
U 1 1 5C465BF2
P 3550 10300
F 0 "U10" H 3550 10617 50  0000 C CNN
F 1 "74HC14" H 3550 10526 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3550 10300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 3550 10300 50  0001 C CNN
	1    3550 10300
	1    0    0    -1  
$EndComp
$Comp
L Device:Resonator Y1
U 1 1 5C465F78
P 6350 2450
F 0 "Y1" H 6150 2400 50  0000 C CNN
F 1 "16MHz" H 6650 2500 50  0000 C CNN
F 2 "Crystal:Resonator-3Pin_W6.0mm_H3.0mm" H 6325 2450 50  0001 C CNN
F 3 "~" H 6325 2450 50  0001 C CNN
	1    6350 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female J1
U 1 1 5C466135
P 1300 12800
F 0 "J1" H 1194 12075 50  0000 C CNN
F 1 "PwR & NMEA In" H 1000 12150 50  0000 C CNN
F 2 "TerminalBlock:10PPush_in_Conn" H 1300 12800 50  0001 C CNN
F 3 "~" H 1300 12800 50  0001 C CNN
	1    1300 12800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 13000 1850 13000
Wire Wire Line
	1500 12900 1850 12900
Wire Wire Line
	1500 12800 1850 12800
Wire Wire Line
	1500 12700 1850 12700
Wire Wire Line
	1500 12600 1850 12600
Wire Wire Line
	1500 12500 1850 12500
Wire Wire Line
	1500 12400 1850 12400
Wire Wire Line
	1500 12300 1850 12300
Text Label 1850 12900 2    60   ~ 0
RxA_-
Text Label 1850 12800 2    60   ~ 0
RxB_+
Text Label 1850 12700 2    60   ~ 0
RxB_-
Text Label 1850 12600 2    60   ~ 0
RxC_+
Text Label 1850 12500 2    60   ~ 0
RxC_-
Text Label 1850 12400 2    60   ~ 0
RxD_+
Text Label 1850 12300 2    60   ~ 0
RxD_-
Wire Wire Line
	1850 13200 1850 13300
Wire Wire Line
	1500 13200 1850 13200
$Comp
L power:GND #PWR0101
U 1 1 5C467147
P 1850 13300
F 0 "#PWR0101" H 1850 13050 50  0001 C CNN
F 1 "GND" H 1855 13127 50  0000 C CNN
F 2 "" H 1850 13300 50  0001 C CNN
F 3 "" H 1850 13300 50  0001 C CNN
	1    1850 13300
	1    0    0    -1  
$EndComp
Text Label 1850 13000 2    60   ~ 0
RxA_+
$Comp
L Device:C C12
U 1 1 5C4678D9
P 2900 13350
F 0 "C12" H 3015 13396 50  0000 L CNN
F 1 "0.22uF" H 3015 13305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2938 13200 50  0001 C CNN
F 3 "~" H 2900 13350 50  0001 C CNN
	1    2900 13350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5C4679A9
P 4200 13350
F 0 "C13" H 4315 13396 50  0000 L CNN
F 1 "0.1uF" H 4315 13305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4238 13200 50  0001 C CNN
F 3 "~" H 4200 13350 50  0001 C CNN
	1    4200 13350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 13200 2900 13100
Wire Wire Line
	2900 13100 3300 13100
Wire Wire Line
	3900 13100 4200 13100
Wire Wire Line
	4200 13100 4200 13200
Wire Wire Line
	2900 13500 2900 13650
Wire Wire Line
	2900 13650 3600 13650
Wire Wire Line
	4200 13650 4200 13500
Wire Wire Line
	3600 13400 3600 13650
Connection ~ 3600 13650
Wire Wire Line
	3600 13650 4200 13650
$Comp
L power:GND #PWR0102
U 1 1 5C467F88
P 3600 13750
F 0 "#PWR0102" H 3600 13500 50  0001 C CNN
F 1 "GND" H 3605 13577 50  0000 C CNN
F 2 "" H 3600 13750 50  0001 C CNN
F 3 "" H 3600 13750 50  0001 C CNN
	1    3600 13750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 13750 3600 13650
Wire Wire Line
	4200 13100 4600 13100
Connection ~ 4200 13100
Text Label 4600 13100 2    60   ~ 0
PwR_Sw
$Comp
L Switch:SW_DIP_x02 SW1
U 1 1 5C4685C1
P 6200 13250
F 0 "SW1" V 6246 13120 50  0000 R CNN
F 1 "SW_DIP_x02" V 6155 13120 50  0000 R CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx02_Slide_9.78x7.26mm_W7.62mm_P2.54mm" H 6200 13250 50  0001 C CNN
F 3 "" H 6200 13250 50  0001 C CNN
	1    6200 13250
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5C468818
P 4850 12700
F 0 "#PWR0103" H 4850 12550 50  0001 C CNN
F 1 "+5V" H 4865 12873 50  0000 C CNN
F 2 "" H 4850 12700 50  0001 C CNN
F 3 "" H 4850 12700 50  0001 C CNN
	1    4850 12700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5C4688D8
P 4850 12950
F 0 "R7" H 4920 12996 50  0000 L CNN
F 1 "330R" H 4920 12905 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4780 12950 50  0001 C CNN
F 3 "~" H 4850 12950 50  0001 C CNN
	1    4850 12950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 12800 4850 12700
$Comp
L Device:LED D4
U 1 1 5C468C08
P 4850 13350
F 0 "D4" V 4888 13232 50  0000 R CNN
F 1 "PWR" V 4797 13232 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4850 13350 50  0001 C CNN
F 3 "~" H 4850 13350 50  0001 C CNN
	1    4850 13350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 13100 4850 13200
Wire Wire Line
	4850 13500 4850 13650
Wire Wire Line
	4850 13650 4200 13650
Connection ~ 4200 13650
$Comp
L Device:R_Network05 RN2
U 1 1 5C46A020
P 9650 7750
F 0 "RN2" H 9371 7704 50  0000 R CNN
F 1 "10K" H 9371 7795 50  0000 R CNN
F 2 "Resistor_THT:R_Array_SIP6" V 9925 7750 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 9650 7750 50  0001 C CNN
	1    9650 7750
	1    0    0    1   
$EndComp
$Comp
L Device:D D3
U 1 1 5C46A184
P 2650 13100
F 0 "D3" H 2650 12884 50  0000 C CNN
F 1 "1N4001W" H 2650 12975 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2650 13100 50  0001 C CNN
F 3 "~" H 2650 13100 50  0001 C CNN
	1    2650 13100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 13100 2900 13100
Connection ~ 2900 13100
Text Label 1250 7500 0    60   ~ 0
RxD_-
Text Label 1250 7800 0    60   ~ 0
RxD_+
Wire Wire Line
	1250 7800 1600 7800
Wire Wire Line
	1250 7500 1600 7500
$Comp
L Device:R R4
U 1 1 5C46D13F
P 1600 7650
F 0 "R4" H 1670 7696 50  0000 L CNN
F 1 "120R" H 1670 7605 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1530 7650 50  0001 C CNN
F 3 "~" H 1600 7650 50  0001 C CNN
	1    1600 7650
	1    0    0    -1  
$EndComp
Connection ~ 1600 7500
Connection ~ 1600 7800
Wire Wire Line
	1600 7800 1800 7800
Wire Wire Line
	1600 7500 1800 7500
$Comp
L power:GND #PWR0104
U 1 1 5C46DDFA
P 2200 8350
F 0 "#PWR0104" H 2200 8100 50  0001 C CNN
F 1 "GND" H 2205 8177 50  0000 C CNN
F 2 "" H 2200 8350 50  0001 C CNN
F 3 "" H 2200 8350 50  0001 C CNN
	1    2200 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 8350 2200 8250
Wire Wire Line
	2600 7600 2800 7600
Wire Wire Line
	2800 7600 2800 7700
Wire Wire Line
	2800 7700 2600 7700
Wire Wire Line
	2200 8250 2800 8250
Wire Wire Line
	2800 8250 2800 7700
Connection ~ 2200 8250
Wire Wire Line
	2200 8250 2200 8200
Connection ~ 2800 7700
$Comp
L Device:C C10
U 1 1 5C46EE99
P 2800 7300
F 0 "C10" H 2915 7346 50  0000 L CNN
F 1 "0.1uF" H 2915 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2838 7150 50  0001 C CNN
F 3 "~" H 2800 7300 50  0001 C CNN
	1    2800 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 7600 2800 7450
Connection ~ 2800 7600
Wire Wire Line
	2200 7100 2200 7000
Wire Wire Line
	2200 7000 2800 7000
Wire Wire Line
	2800 7000 2800 7150
$Comp
L power:+5V #PWR0105
U 1 1 5C470A88
P 2200 6900
F 0 "#PWR0105" H 2200 6750 50  0001 C CNN
F 1 "+5V" H 2215 7073 50  0000 C CNN
F 2 "" H 2200 6900 50  0001 C CNN
F 3 "" H 2200 6900 50  0001 C CNN
	1    2200 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6900 2200 7000
Connection ~ 2200 7000
$Comp
L Interface_UART:MAX485E U7
U 1 1 5C471FF0
P 2200 5650
F 0 "U7" H 1950 6100 50  0000 C CNN
F 1 "MAX485E" H 2450 6100 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2200 4950 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 2200 5700 50  0001 C CNN
	1    2200 5650
	-1   0    0    -1  
$EndComp
Text Label 1250 5550 0    60   ~ 0
RxC_-
Text Label 1250 5850 0    60   ~ 0
RxC_+
Wire Wire Line
	1250 5850 1600 5850
Wire Wire Line
	1250 5550 1600 5550
$Comp
L Device:R R3
U 1 1 5C471FFB
P 1600 5700
F 0 "R3" H 1670 5746 50  0000 L CNN
F 1 "120R" H 1670 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1530 5700 50  0001 C CNN
F 3 "~" H 1600 5700 50  0001 C CNN
	1    1600 5700
	1    0    0    -1  
$EndComp
Connection ~ 1600 5550
Connection ~ 1600 5850
Wire Wire Line
	1600 5850 1800 5850
Wire Wire Line
	1600 5550 1800 5550
$Comp
L power:GND #PWR0106
U 1 1 5C472006
P 2200 6400
F 0 "#PWR0106" H 2200 6150 50  0001 C CNN
F 1 "GND" H 2205 6227 50  0000 C CNN
F 2 "" H 2200 6400 50  0001 C CNN
F 3 "" H 2200 6400 50  0001 C CNN
	1    2200 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6400 2200 6300
Wire Wire Line
	2600 5650 2800 5650
Wire Wire Line
	2800 5650 2800 5750
Wire Wire Line
	2800 5750 2600 5750
Wire Wire Line
	2200 6300 2800 6300
Wire Wire Line
	2800 6300 2800 5750
Connection ~ 2200 6300
Wire Wire Line
	2200 6300 2200 6250
Connection ~ 2800 5750
$Comp
L Device:C C8
U 1 1 5C472015
P 2800 5350
F 0 "C8" H 2915 5396 50  0000 L CNN
F 1 "0.1uF" H 2915 5305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2838 5200 50  0001 C CNN
F 3 "~" H 2800 5350 50  0001 C CNN
	1    2800 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5650 2800 5500
Connection ~ 2800 5650
Wire Wire Line
	2200 5150 2200 5050
Wire Wire Line
	2200 5050 2800 5050
Wire Wire Line
	2800 5050 2800 5200
$Comp
L power:+5V #PWR0107
U 1 1 5C472021
P 2200 4950
F 0 "#PWR0107" H 2200 4800 50  0001 C CNN
F 1 "+5V" H 2215 5123 50  0000 C CNN
F 2 "" H 2200 4950 50  0001 C CNN
F 3 "" H 2200 4950 50  0001 C CNN
	1    2200 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4950 2200 5050
Connection ~ 2200 5050
$Comp
L Interface_UART:MAX485E U3
U 1 1 5C47336C
P 2200 3700
F 0 "U3" H 1950 4150 50  0000 C CNN
F 1 "MAX485E" H 2450 4150 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2200 3000 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 2200 3750 50  0001 C CNN
	1    2200 3700
	-1   0    0    -1  
$EndComp
Text Label 1250 3600 0    60   ~ 0
RxB_-
Text Label 1250 3900 0    60   ~ 0
RxB_+
Wire Wire Line
	1250 3900 1600 3900
Wire Wire Line
	1250 3600 1600 3600
$Comp
L Device:R R2
U 1 1 5C473377
P 1600 3750
F 0 "R2" H 1670 3796 50  0000 L CNN
F 1 "120R" H 1670 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1530 3750 50  0001 C CNN
F 3 "~" H 1600 3750 50  0001 C CNN
	1    1600 3750
	1    0    0    -1  
$EndComp
Connection ~ 1600 3600
Connection ~ 1600 3900
Wire Wire Line
	1600 3900 1800 3900
Wire Wire Line
	1600 3600 1800 3600
$Comp
L power:GND #PWR0108
U 1 1 5C473382
P 2200 4450
F 0 "#PWR0108" H 2200 4200 50  0001 C CNN
F 1 "GND" H 2205 4277 50  0000 C CNN
F 2 "" H 2200 4450 50  0001 C CNN
F 3 "" H 2200 4450 50  0001 C CNN
	1    2200 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4450 2200 4350
Wire Wire Line
	2600 3700 2800 3700
Wire Wire Line
	2800 3700 2800 3800
Wire Wire Line
	2800 3800 2600 3800
Wire Wire Line
	2200 4350 2800 4350
Wire Wire Line
	2800 4350 2800 3800
Connection ~ 2200 4350
Wire Wire Line
	2200 4350 2200 4300
Connection ~ 2800 3800
$Comp
L Device:C C5
U 1 1 5C473391
P 2800 3400
F 0 "C5" H 2915 3446 50  0000 L CNN
F 1 "0.1uF" H 2915 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2838 3250 50  0001 C CNN
F 3 "~" H 2800 3400 50  0001 C CNN
	1    2800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3700 2800 3550
Connection ~ 2800 3700
Wire Wire Line
	2200 3200 2200 3100
Wire Wire Line
	2200 3100 2800 3100
Wire Wire Line
	2800 3100 2800 3250
$Comp
L power:+5V #PWR0109
U 1 1 5C47339D
P 2200 3000
F 0 "#PWR0109" H 2200 2850 50  0001 C CNN
F 1 "+5V" H 2215 3173 50  0000 C CNN
F 2 "" H 2200 3000 50  0001 C CNN
F 3 "" H 2200 3000 50  0001 C CNN
	1    2200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3000 2200 3100
Connection ~ 2200 3100
$Comp
L Interface_UART:MAX485E U2
U 1 1 5C47A925
P 2200 1750
F 0 "U2" H 1950 2200 50  0000 C CNN
F 1 "MAX485E" H 2450 2200 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2200 1050 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 2200 1800 50  0001 C CNN
	1    2200 1750
	-1   0    0    -1  
$EndComp
Text Label 1250 1650 0    60   ~ 0
RxA_-
Text Label 1250 1950 0    60   ~ 0
RxA_+
Wire Wire Line
	1250 1950 1600 1950
Wire Wire Line
	1250 1650 1600 1650
$Comp
L Device:R R1
U 1 1 5C47A930
P 1600 1800
F 0 "R1" H 1670 1846 50  0000 L CNN
F 1 "120R" H 1670 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1530 1800 50  0001 C CNN
F 3 "~" H 1600 1800 50  0001 C CNN
	1    1600 1800
	1    0    0    -1  
$EndComp
Connection ~ 1600 1650
Connection ~ 1600 1950
Wire Wire Line
	1600 1950 1800 1950
Wire Wire Line
	1600 1650 1800 1650
$Comp
L power:GND #PWR0110
U 1 1 5C47A93B
P 2200 2500
F 0 "#PWR0110" H 2200 2250 50  0001 C CNN
F 1 "GND" H 2205 2327 50  0000 C CNN
F 2 "" H 2200 2500 50  0001 C CNN
F 3 "" H 2200 2500 50  0001 C CNN
	1    2200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2500 2200 2400
Wire Wire Line
	2600 1750 2800 1750
Wire Wire Line
	2800 1750 2800 1850
Wire Wire Line
	2800 1850 2600 1850
Wire Wire Line
	2200 2400 2800 2400
Wire Wire Line
	2800 2400 2800 1850
Connection ~ 2200 2400
Wire Wire Line
	2200 2400 2200 2350
Connection ~ 2800 1850
$Comp
L Device:C C1
U 1 1 5C47A94A
P 2800 1450
F 0 "C1" H 2915 1496 50  0000 L CNN
F 1 "0.1uF" H 2915 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2838 1300 50  0001 C CNN
F 3 "~" H 2800 1450 50  0001 C CNN
	1    2800 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1750 2800 1600
Connection ~ 2800 1750
Wire Wire Line
	2200 1250 2200 1150
Wire Wire Line
	2200 1150 2800 1150
Wire Wire Line
	2800 1150 2800 1300
$Comp
L power:+5V #PWR0111
U 1 1 5C47A956
P 2200 1050
F 0 "#PWR0111" H 2200 900 50  0001 C CNN
F 1 "+5V" H 2215 1223 50  0000 C CNN
F 2 "" H 2200 1050 50  0001 C CNN
F 3 "" H 2200 1050 50  0001 C CNN
	1    2200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1050 2200 1150
Connection ~ 2200 1150
Text Label 3250 7500 2    60   ~ 0
Rx_D_TTL
Wire Wire Line
	2600 7500 3250 7500
Wire Wire Line
	2600 5550 3250 5550
Wire Wire Line
	2600 3600 3250 3600
Wire Wire Line
	2600 1650 3250 1650
Text Label 3250 5550 2    60   ~ 0
Rx_C_TTL
Text Label 3250 3600 2    60   ~ 0
Rx_B_TTL
Text Label 3250 1650 2    60   ~ 0
Rx_A_TTL
$Comp
L Interface_USB:CH330N U12
U 1 1 5C494506
P 9450 13200
F 0 "U12" H 9450 13678 50  0000 C CNN
F 1 "CH330N" H 9450 13587 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9300 13950 50  0001 C CNN
F 3 "http://www.wch.cn/downloads/file/240.html" H 9350 13400 50  0001 C CNN
	1    9450 13200
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B J2
U 1 1 5C4947A9
P 7850 13300
F 0 "J2" H 7905 13767 50  0000 C CNN
F 1 "CLI_USB" H 7905 13676 50  0000 C CNN
F 2 "Connector_USB:USB_B_TE_5787834_Vertical" H 8000 13250 50  0001 C CNN
F 3 " ~" H 8000 13250 50  0001 C CNN
	1    7850 13300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1750 7350 1750
Wire Wire Line
	7350 1750 7350 1650
Wire Wire Line
	7350 1650 7300 1650
Wire Wire Line
	7350 1650 7350 1450
Connection ~ 7350 1650
$Comp
L power:+5V #PWR0112
U 1 1 5C4A20BC
P 7350 1450
F 0 "#PWR0112" H 7350 1300 50  0001 C CNN
F 1 "+5V" H 7365 1623 50  0000 C CNN
F 2 "" H 7350 1450 50  0001 C CNN
F 3 "" H 7350 1450 50  0001 C CNN
	1    7350 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5C4A2199
P 4250 1900
F 0 "#PWR0113" H 4250 1650 50  0001 C CNN
F 1 "GND" H 4255 1727 50  0000 C CNN
F 2 "" H 4250 1900 50  0001 C CNN
F 3 "" H 4250 1900 50  0001 C CNN
	1    4250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1900 4250 1650
Wire Wire Line
	4250 1650 4300 1650
$Comp
L Device:R_Network05 RN1
U 1 1 5C4A5160
P 8750 7750
F 0 "RN1" H 9030 7796 50  0000 L CNN
F 1 "10K" H 9030 7705 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP6" V 9125 7750 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 8750 7750 50  0001 C CNN
	1    8750 7750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 5C4A5270
P 8550 7450
F 0 "#PWR0114" H 8550 7300 50  0001 C CNN
F 1 "+5V" H 8565 7623 50  0000 C CNN
F 2 "" H 8550 7450 50  0001 C CNN
F 3 "" H 8550 7450 50  0001 C CNN
	1    8550 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 7450 8550 7550
Wire Wire Line
	8550 7950 8550 8250
Wire Wire Line
	8650 7950 8650 8250
Wire Wire Line
	8750 7950 8750 8250
Wire Wire Line
	8850 7950 8850 8250
Wire Wire Line
	8950 7950 8950 8250
Text Label 8550 8250 1    60   ~ 0
R1
Text Label 8650 8250 1    60   ~ 0
R2
Text Label 8750 8250 1    60   ~ 0
R3
Text Label 8850 8250 1    60   ~ 0
R4
Text Label 8950 8250 1    60   ~ 0
R_MUX
Wire Wire Line
	5500 2250 5500 2450
Wire Wire Line
	5500 3350 5500 3150
Text Label 5500 2450 1    60   ~ 0
R1
Text Label 5500 3150 3    60   ~ 0
R2
Wire Wire Line
	6200 2450 6200 2300
Wire Wire Line
	6200 2300 6300 2300
Wire Wire Line
	6300 2300 6300 2250
Wire Wire Line
	6400 2250 6400 2350
Wire Wire Line
	6400 2350 6500 2350
Wire Wire Line
	6500 2350 6500 2450
$Comp
L Device:Resonator Y2
U 1 1 5C4C3FA4
P 6350 3150
F 0 "Y2" H 6550 3100 50  0000 C CNN
F 1 "16MHz" H 6050 3250 50  0000 C CNN
F 2 "Crystal:Resonator-3Pin_W6.0mm_H3.0mm" H 6325 3150 50  0001 C CNN
F 3 "~" H 6325 3150 50  0001 C CNN
	1    6350 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 3150 6500 3300
Wire Wire Line
	6500 3300 6400 3300
Wire Wire Line
	6400 3300 6400 3350
Wire Wire Line
	6300 3350 6300 3250
Wire Wire Line
	6300 3250 6200 3250
Wire Wire Line
	6200 3250 6200 3150
$Comp
L power:GND #PWR0115
U 1 1 5C4DA1A7
P 6650 2950
F 0 "#PWR0115" H 6650 2700 50  0001 C CNN
F 1 "GND" H 6655 2777 50  0000 C CNN
F 2 "" H 6650 2950 50  0001 C CNN
F 3 "" H 6650 2950 50  0001 C CNN
	1    6650 2950
	1    0    0    -1  
$EndComp
Text Label 5300 2700 1    60   ~ 0
Rx_A_TTL
Wire Wire Line
	5300 2700 5300 2250
Text Label 5300 2900 3    60   ~ 0
Rx_B_TTL
Wire Wire Line
	5300 2900 5300 3350
Wire Wire Line
	6350 2650 6350 2900
Wire Wire Line
	6650 2950 6650 2900
Wire Wire Line
	6650 2900 6350 2900
Connection ~ 6350 2900
Wire Wire Line
	6350 2900 6350 2950
Entry Wire Line
	5600 2900 5700 2800
Entry Wire Line
	5600 2700 5700 2800
Wire Wire Line
	5600 2700 5600 2250
Wire Wire Line
	5600 2900 5600 3350
Entry Wire Line
	5700 2700 5800 2800
Entry Wire Line
	5700 2900 5800 2800
Wire Wire Line
	5700 2900 5700 3350
Wire Wire Line
	5700 2700 5700 2250
Text Label 6750 2800 0    60   ~ 0
I2C_BUS
Text Label 5600 3300 1    60   ~ 0
SCL
Text Label 5700 3300 1    60   ~ 0
SDA
Text Label 5600 2450 1    60   ~ 0
SCL
Text Label 5700 2450 1    60   ~ 0
SDA
$Comp
L power:GND #PWR0116
U 1 1 5C50C24D
P 4250 4200
F 0 "#PWR0116" H 4250 3950 50  0001 C CNN
F 1 "GND" H 4255 4027 50  0000 C CNN
F 2 "" H 4250 4200 50  0001 C CNN
F 3 "" H 4250 4200 50  0001 C CNN
	1    4250 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4200 4250 3950
Wire Wire Line
	4250 3950 4300 3950
Text Label 5800 3050 3    60   ~ 0
B_RTS
Wire Wire Line
	5800 3050 5800 3350
Text Label 5800 2550 1    60   ~ 0
A_RTS
Wire Wire Line
	5800 2250 5800 2550
Wire Wire Line
	7300 3950 7350 3950
Wire Wire Line
	7350 3950 7350 3850
Wire Wire Line
	7350 3850 7300 3850
Wire Wire Line
	7350 3850 7350 3650
Connection ~ 7350 3850
$Comp
L power:+5V #PWR0117
U 1 1 5C523C04
P 7350 3650
F 0 "#PWR0117" H 7350 3500 50  0001 C CNN
F 1 "+5V" H 7365 3823 50  0000 C CNN
F 2 "" H 7350 3650 50  0001 C CNN
F 3 "" H 7350 3650 50  0001 C CNN
	1    7350 3650
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U6
U 1 1 5C528939
P 5800 5450
F 0 "U6" V 5250 6800 50  0000 R CNN
F 1 "ATmega328P-AU" V 5250 4700 50  0000 R CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5800 5450 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5800 5450 50  0001 C CNN
	1    5800 5450
	0    1    1    0   
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U9
U 1 1 5C528940
P 5800 7750
F 0 "U9" V 5250 9150 50  0000 R CNN
F 1 "ATmega328P-AU" V 5250 7000 50  0000 R CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5800 7750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5800 7750 50  0001 C CNN
	1    5800 7750
	0    1    -1   0   
$EndComp
$Comp
L Device:Resonator Y4
U 1 1 5C528947
P 6350 6250
F 0 "Y4" H 6150 6200 50  0000 C CNN
F 1 "16MHz" H 6650 6300 50  0000 C CNN
F 2 "Crystal:Resonator-3Pin_W6.0mm_H3.0mm" H 6325 6250 50  0001 C CNN
F 3 "~" H 6325 6250 50  0001 C CNN
	1    6350 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 5550 7350 5550
Wire Wire Line
	7350 5550 7350 5450
Wire Wire Line
	7350 5450 7300 5450
Wire Wire Line
	7350 5450 7350 5250
Connection ~ 7350 5450
$Comp
L power:+5V #PWR0118
U 1 1 5C528953
P 7350 5250
F 0 "#PWR0118" H 7350 5100 50  0001 C CNN
F 1 "+5V" H 7365 5423 50  0000 C CNN
F 2 "" H 7350 5250 50  0001 C CNN
F 3 "" H 7350 5250 50  0001 C CNN
	1    7350 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5C528959
P 4250 5700
F 0 "#PWR0119" H 4250 5450 50  0001 C CNN
F 1 "GND" H 4255 5527 50  0000 C CNN
F 2 "" H 4250 5700 50  0001 C CNN
F 3 "" H 4250 5700 50  0001 C CNN
	1    4250 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5700 4250 5450
Wire Wire Line
	4250 5450 4300 5450
Wire Wire Line
	5500 6050 5500 6250
Wire Wire Line
	5500 7150 5500 6950
Text Label 5500 6250 1    60   ~ 0
R3
Text Label 5500 6950 3    60   ~ 0
R4
Wire Wire Line
	6200 6250 6200 6100
Wire Wire Line
	6200 6100 6300 6100
Wire Wire Line
	6300 6100 6300 6050
Wire Wire Line
	6400 6050 6400 6150
Wire Wire Line
	6400 6150 6500 6150
Wire Wire Line
	6500 6150 6500 6250
$Comp
L Device:Resonator Y5
U 1 1 5C52896B
P 6350 6950
F 0 "Y5" H 6550 6900 50  0000 C CNN
F 1 "16MHz" H 6050 7050 50  0000 C CNN
F 2 "Crystal:Resonator-3Pin_W6.0mm_H3.0mm" H 6325 6950 50  0001 C CNN
F 3 "~" H 6325 6950 50  0001 C CNN
	1    6350 6950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 6950 6500 7100
Wire Wire Line
	6500 7100 6400 7100
Wire Wire Line
	6400 7100 6400 7150
Wire Wire Line
	6300 7150 6300 7050
Wire Wire Line
	6300 7050 6200 7050
Wire Wire Line
	6200 7050 6200 6950
$Comp
L power:GND #PWR0120
U 1 1 5C528978
P 6650 6750
F 0 "#PWR0120" H 6650 6500 50  0001 C CNN
F 1 "GND" H 6655 6577 50  0000 C CNN
F 2 "" H 6650 6750 50  0001 C CNN
F 3 "" H 6650 6750 50  0001 C CNN
	1    6650 6750
	1    0    0    -1  
$EndComp
Text Label 5300 6500 1    60   ~ 0
Rx_C_TTL
Wire Wire Line
	5300 6500 5300 6050
Text Label 5300 6700 3    60   ~ 0
Rx_D_TTL
Wire Wire Line
	5300 6700 5300 7150
Wire Wire Line
	6350 6450 6350 6700
Wire Wire Line
	6650 6750 6650 6700
Wire Wire Line
	6650 6700 6350 6700
Connection ~ 6350 6700
Wire Wire Line
	6350 6700 6350 6750
Entry Wire Line
	5600 6700 5700 6600
Entry Wire Line
	5600 6500 5700 6600
Wire Wire Line
	5600 6500 5600 6050
Wire Wire Line
	5600 6700 5600 7150
Entry Wire Line
	5700 6500 5800 6600
Entry Wire Line
	5700 6700 5800 6600
Wire Wire Line
	5700 6700 5700 7150
Wire Wire Line
	5700 6500 5700 6050
Text Label 6750 6600 0    60   ~ 0
I2C_BUS
Text Label 5600 7100 1    60   ~ 0
SCL
Text Label 5700 7100 1    60   ~ 0
SDA
Text Label 5600 6250 1    60   ~ 0
SCL
Text Label 5700 6250 1    60   ~ 0
SDA
$Comp
L power:GND #PWR0121
U 1 1 5C528994
P 4250 8000
F 0 "#PWR0121" H 4250 7750 50  0001 C CNN
F 1 "GND" H 4255 7827 50  0000 C CNN
F 2 "" H 4250 8000 50  0001 C CNN
F 3 "" H 4250 8000 50  0001 C CNN
	1    4250 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 8000 4250 7750
Wire Wire Line
	4250 7750 4300 7750
Text Label 5800 6850 3    60   ~ 0
D_RTS
Wire Wire Line
	5800 6850 5800 7150
Text Label 5800 6350 1    60   ~ 0
C_RTS
Wire Wire Line
	5800 6050 5800 6350
Wire Wire Line
	7300 7750 7350 7750
Wire Wire Line
	7350 7750 7350 7650
Wire Wire Line
	7350 7650 7300 7650
Wire Wire Line
	7350 7650 7350 7450
Connection ~ 7350 7650
$Comp
L power:+5V #PWR0122
U 1 1 5C5289A5
P 7350 7450
F 0 "#PWR0122" H 7350 7300 50  0001 C CNN
F 1 "+5V" H 7365 7623 50  0000 C CNN
F 2 "" H 7350 7450 50  0001 C CNN
F 3 "" H 7350 7450 50  0001 C CNN
	1    7350 7450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0123
U 1 1 5C547AE6
P 10050 3000
F 0 "#PWR0123" H 10050 2850 50  0001 C CNN
F 1 "+5V" H 10065 3173 50  0000 C CNN
F 2 "" H 10050 3000 50  0001 C CNN
F 3 "" H 10050 3000 50  0001 C CNN
	1    10050 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 3200 10000 3000
Wire Wire Line
	10000 3000 10050 3000
Wire Wire Line
	10100 3200 10100 3000
Wire Wire Line
	10100 3000 10050 3000
Connection ~ 10050 3000
$Comp
L power:GND #PWR0124
U 1 1 5C557419
P 10100 6350
F 0 "#PWR0124" H 10100 6100 50  0001 C CNN
F 1 "GND" H 10105 6177 50  0000 C CNN
F 2 "" H 10100 6350 50  0001 C CNN
F 3 "" H 10100 6350 50  0001 C CNN
	1    10100 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 6350 10100 6200
Text Label 9100 5000 0    60   ~ 0
R_MUX
$Comp
L Device:Resonator Y3
U 1 1 5C5A71CB
P 9200 4150
F 0 "Y3" H 9300 3950 50  0000 C CNN
F 1 "16MHz" H 8900 4150 50  0000 C CNN
F 2 "Crystal:Resonator-3Pin_W6.0mm_H3.0mm" H 9175 4150 50  0001 C CNN
F 3 "~" H 9175 4150 50  0001 C CNN
	1    9200 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	9500 4100 9350 4100
Wire Wire Line
	9350 4100 9350 4000
Wire Wire Line
	9350 4000 9200 4000
Wire Wire Line
	9200 4300 9350 4300
Wire Wire Line
	9350 4300 9350 4200
Wire Wire Line
	9350 4200 9500 4200
$Comp
L power:GND #PWR0125
U 1 1 5C5B7ADA
P 8850 4250
F 0 "#PWR0125" H 8850 4000 50  0001 C CNN
F 1 "GND" H 8855 4077 50  0000 C CNN
F 2 "" H 8850 4250 50  0001 C CNN
F 3 "" H 8850 4250 50  0001 C CNN
	1    8850 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4150 8850 4150
Wire Wire Line
	8850 4150 8850 4250
Wire Wire Line
	9100 5000 9500 5000
Entry Wire Line
	7950 5000 8050 4900
Entry Wire Line
	7950 4900 8050 4800
Text Label 9400 4800 2    60   ~ 0
SDA
Text Label 9400 4900 2    60   ~ 0
SCL
Wire Wire Line
	9500 5200 8700 5200
Wire Wire Line
	9500 5300 9200 5300
$Comp
L Device:C C7
U 1 1 5C5FDAFF
P 8950 5000
F 0 "C7" V 9000 4900 50  0000 C CNN
F 1 "0.1uF" V 9000 5200 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8988 4850 50  0001 C CNN
F 3 "~" H 8950 5000 50  0001 C CNN
	1    8950 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	9500 5500 8700 5500
Wire Wire Line
	9500 5600 8700 5600
Wire Wire Line
	9500 4400 9100 4400
Wire Wire Line
	9500 4500 9100 4500
Wire Wire Line
	9500 4600 9100 4600
Wire Wire Line
	9500 4700 9100 4700
Wire Wire Line
	9500 5400 8700 5400
Text Label 8700 5400 0    60   ~ 0
CLI_EN
Text Label 9100 4400 0    60   ~ 0
USB_Rx
Text Label 9100 4500 0    60   ~ 0
USB_Tx
Text Label 8700 5200 0    60   ~ 0
UART_Rx
Text Label 8700 5300 0    60   ~ 0
UART_Tx
Connection ~ 9200 5300
Wire Wire Line
	9200 5300 8700 5300
$Comp
L Device:Jumper JP1
U 1 1 5C650C5D
P 9200 6150
F 0 "JP1" V 9154 6277 50  0000 L CNN
F 1 "ICP" V 9245 6277 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9200 6150 50  0001 C CNN
F 3 "~" H 9200 6150 50  0001 C CNN
	1    9200 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 5300 9200 5850
Text Label 9200 6800 1    60   ~ 0
FO_Tx
Text Label 8350 5000 0    60   ~ 0
UART_DTR
Wire Wire Line
	8350 5000 8800 5000
Text Label 8700 5600 0    60   ~ 0
A_RTS
Text Label 8700 5500 0    60   ~ 0
B_RTS
Text Label 9100 4600 0    60   ~ 0
C_RTS
Text Label 9100 4700 0    60   ~ 0
D_RTS
Wire Wire Line
	8050 4800 9500 4800
Wire Wire Line
	8050 4900 9500 4900
Text Label 9450 7250 3    60   ~ 0
A_RTS
Text Label 9550 7250 3    60   ~ 0
B_RTS
Text Label 9650 7250 3    60   ~ 0
C_RTS
Text Label 9750 7250 3    60   ~ 0
D_RTS
Wire Wire Line
	9450 7250 9450 7550
Wire Wire Line
	9550 7250 9550 7550
Wire Wire Line
	9650 7250 9650 7550
Wire Wire Line
	9750 7250 9750 7550
$Comp
L power:GND #PWR0126
U 1 1 5C6EE8DB
P 9450 8050
F 0 "#PWR0126" H 9450 7800 50  0001 C CNN
F 1 "GND" H 9455 7877 50  0000 C CNN
F 2 "" H 9450 8050 50  0001 C CNN
F 3 "" H 9450 8050 50  0001 C CNN
	1    9450 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 7950 9450 8050
Text Label 9850 7250 3    60   ~ 0
CLI_EN
Wire Wire Line
	9850 7550 9850 7250
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 5C722645
P 1300 14100
F 0 "J3" H 1406 14378 50  0000 C CNN
F 1 "ICP" H 1406 14287 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1300 14100 50  0001 C CNN
F 3 "~" H 1300 14100 50  0001 C CNN
	1    1300 14100
	1    0    0    -1  
$EndComp
Text Label 2000 14000 2    60   ~ 0
UART_Rx
Text Label 2000 14100 2    60   ~ 0
UART_Tx
Text Label 2000 14200 2    60   ~ 0
UART_DTR
Wire Wire Line
	1500 14200 2000 14200
Wire Wire Line
	1500 14100 2000 14100
Wire Wire Line
	1500 14000 2000 14000
Wire Wire Line
	1500 13100 2500 13100
$Comp
L power:GND #PWR0127
U 1 1 5C7F03B6
P 7850 13800
F 0 "#PWR0127" H 7850 13550 50  0001 C CNN
F 1 "GND" H 7855 13627 50  0000 C CNN
F 2 "" H 7850 13800 50  0001 C CNN
F 3 "" H 7850 13800 50  0001 C CNN
	1    7850 13800
	1    0    0    -1  
$EndComp
Text Label 6100 13950 1    60   ~ 0
PwR_Sw
Wire Wire Line
	6100 13950 6100 13550
$Comp
L power:+5V #PWR0128
U 1 1 5C81EB9B
P 6100 12700
F 0 "#PWR0128" H 6100 12550 50  0001 C CNN
F 1 "+5V" H 6115 12873 50  0000 C CNN
F 2 "" H 6100 12700 50  0001 C CNN
F 3 "" H 6100 12700 50  0001 C CNN
	1    6100 12700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 12950 6100 12800
Wire Wire Line
	6100 12800 6200 12800
Wire Wire Line
	6200 12800 6200 12950
Connection ~ 6100 12800
Wire Wire Line
	6100 12800 6100 12700
Wire Wire Line
	6200 13550 6200 13950
Text Label 6200 13950 1    60   ~ 0
CLI_EN
Wire Wire Line
	8650 12850 9450 12850
Wire Wire Line
	9450 12850 9450 12900
Wire Wire Line
	8150 13100 8450 13100
Wire Wire Line
	7850 13700 7850 13800
Wire Wire Line
	8150 13400 9050 13400
Wire Wire Line
	8150 13300 9050 13300
Wire Wire Line
	8650 12850 8650 13100
$Comp
L power:GND #PWR0129
U 1 1 5C8B02DB
P 9450 13800
F 0 "#PWR0129" H 9450 13550 50  0001 C CNN
F 1 "GND" H 9455 13627 50  0000 C CNN
F 2 "" H 9450 13800 50  0001 C CNN
F 3 "" H 9450 13800 50  0001 C CNN
	1    9450 13800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 13800 9450 13600
$Comp
L Device:C C15
U 1 1 5C8BC82F
P 8850 13650
F 0 "C15" H 8965 13696 50  0000 L CNN
F 1 "0.1uF" H 8965 13605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8888 13500 50  0001 C CNN
F 3 "~" H 8850 13650 50  0001 C CNN
	1    8850 13650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5C8BCA5F
P 8650 13800
F 0 "#PWR0130" H 8650 13550 50  0001 C CNN
F 1 "GND" H 8655 13627 50  0000 C CNN
F 2 "" H 8650 13800 50  0001 C CNN
F 3 "" H 8650 13800 50  0001 C CNN
	1    8650 13800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 13500 8850 13100
Wire Wire Line
	8850 13100 9050 13100
$Comp
L Device:C C14
U 1 1 5C8C909F
P 8450 13650
F 0 "C14" H 8565 13696 50  0000 L CNN
F 1 "0.1uF" H 8565 13605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8488 13500 50  0001 C CNN
F 3 "~" H 8450 13650 50  0001 C CNN
	1    8450 13650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 13800 8650 13800
Connection ~ 8650 13800
Wire Wire Line
	8650 13800 8850 13800
Wire Wire Line
	8450 13500 8450 13100
Connection ~ 8450 13100
Wire Wire Line
	8450 13100 8650 13100
Text Label 10250 13200 2    60   ~ 0
USB_Rx
Wire Wire Line
	9850 13200 10250 13200
Wire Wire Line
	9850 13100 10250 13100
Text Label 10250 13100 2    60   ~ 0
USB_Tx
Wire Wire Line
	9200 6450 9200 6800
Text Label 2850 10300 0    60   ~ 0
FO_Tx
Wire Wire Line
	2850 10300 3250 10300
$Comp
L 74xx:74HC14 U10
U 2 1 5C93ED16
P 4800 10300
F 0 "U10" H 4800 10617 50  0000 C CNN
F 1 "74HC14" H 4800 10526 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4800 10300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 4800 10300 50  0001 C CNN
	2    4800 10300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 10300 4150 10300
$Comp
L 74xx:74HC14 U10
U 3 1 5C959D27
P 5750 9800
F 0 "U10" H 5900 9950 50  0000 C CNN
F 1 "74HC14" H 5750 10026 50  0001 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5750 9800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 5750 9800 50  0001 C CNN
	3    5750 9800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U10
U 5 1 5C959EAF
P 5750 10500
F 0 "U10" H 5900 10650 50  0000 C CNN
F 1 "74HC14" H 5800 10800 50  0001 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5750 10500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 5750 10500 50  0001 C CNN
	5    5750 10500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U10
U 6 1 5C959F29
P 5750 10850
F 0 "U10" H 5900 11000 50  0000 C CNN
F 1 "74HC14" H 5750 10600 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5750 10850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 5750 10850 50  0001 C CNN
	6    5750 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 9800 5300 9800
Wire Wire Line
	5300 10850 5450 10850
Wire Wire Line
	5450 10500 5300 10500
Wire Wire Line
	5300 9800 5300 10150
Connection ~ 5300 10500
Wire Wire Line
	5300 10500 5300 10850
Wire Wire Line
	5450 10150 5300 10150
Connection ~ 5300 10150
Wire Wire Line
	5300 10150 5300 10300
Wire Wire Line
	5100 10300 5300 10300
Connection ~ 5300 10300
Wire Wire Line
	5300 10300 5300 10500
Wire Wire Line
	6050 9800 6200 9800
Wire Wire Line
	6200 9800 6200 10150
Wire Wire Line
	6200 10850 6050 10850
Wire Wire Line
	6050 10500 6200 10500
Connection ~ 6200 10500
Wire Wire Line
	6200 10500 6200 10850
Wire Wire Line
	6050 10150 6200 10150
Connection ~ 6200 10150
$Comp
L Device:LED_ALT D1
U 1 1 5C9CDCB5
P 7550 10300
F 0 "D1" H 7541 10516 50  0000 C CNN
F 1 "SFH756V" H 7541 10425 50  0000 C CNN
F 2 "OptoDevice:SFH756V" H 7550 10300 50  0001 C CNN
F 3 "~" H 7550 10300 50  0001 C CNN
	1    7550 10300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 10300 8000 10300
Wire Wire Line
	8000 10300 8000 10000
$Comp
L power:+5V #PWR0131
U 1 1 5C9FD790
P 8000 10000
F 0 "#PWR0131" H 8000 9850 50  0001 C CNN
F 1 "+5V" H 8015 10173 50  0000 C CNN
F 2 "" H 8000 10000 50  0001 C CNN
F 3 "" H 8000 10000 50  0001 C CNN
	1    8000 10000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5C9FD9A0
P 4150 10550
F 0 "R6" H 4080 10504 50  0000 R CNN
F 1 "330R" H 4080 10595 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4080 10550 50  0001 C CNN
F 3 "~" H 4150 10550 50  0001 C CNN
	1    4150 10550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 10400 4150 10300
Connection ~ 4150 10300
Wire Wire Line
	4150 10300 4500 10300
$Comp
L Device:LED D2
U 1 1 5CA0DD15
P 4150 10950
F 0 "D2" V 4188 10832 50  0000 R CNN
F 1 "Tx" V 4097 10832 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4150 10950 50  0001 C CNN
F 3 "~" H 4150 10950 50  0001 C CNN
	1    4150 10950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 10800 4150 10700
$Comp
L power:GND #PWR0132
U 1 1 5CA1E61B
P 4150 11200
F 0 "#PWR0132" H 4150 10950 50  0001 C CNN
F 1 "GND" H 4155 11027 50  0000 C CNN
F 2 "" H 4150 11200 50  0001 C CNN
F 3 "" H 4150 11200 50  0001 C CNN
	1    4150 11200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 11200 4150 11100
$Comp
L 74xx:74HC14 U10
U 4 1 5C959E3D
P 5750 10150
F 0 "U10" H 5900 10300 50  0000 C CNN
F 1 "74HC14" H 5750 10376 50  0001 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5750 10150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 5750 10150 50  0001 C CNN
	4    5750 10150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5CA73828
P 7350 8000
F 0 "C11" H 7465 8046 50  0000 L CNN
F 1 "0.1uF" H 7465 7955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7388 7850 50  0001 C CNN
F 3 "~" H 7350 8000 50  0001 C CNN
	1    7350 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5CA73B4C
P 7350 5800
F 0 "C9" H 7465 5846 50  0000 L CNN
F 1 "0.1uF" H 7465 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7388 5650 50  0001 C CNN
F 3 "~" H 7350 5800 50  0001 C CNN
	1    7350 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5CA73C69
P 7350 4200
F 0 "C6" H 7465 4246 50  0000 L CNN
F 1 "0.1uF" H 7465 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7388 4050 50  0001 C CNN
F 3 "~" H 7350 4200 50  0001 C CNN
	1    7350 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5CA73E55
P 7350 2000
F 0 "C2" H 7465 2046 50  0000 L CNN
F 1 "0.1uF" H 7465 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7388 1850 50  0001 C CNN
F 3 "~" H 7350 2000 50  0001 C CNN
	1    7350 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5CA73F6C
P 9150 3350
F 0 "C4" H 9265 3396 50  0000 L CNN
F 1 "0.1uF" H 9265 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9188 3200 50  0001 C CNN
F 3 "~" H 9150 3350 50  0001 C CNN
	1    9150 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1750 7350 1850
Connection ~ 7350 1750
Wire Wire Line
	7350 3950 7350 4050
Connection ~ 7350 3950
Wire Wire Line
	7350 5550 7350 5650
Connection ~ 7350 5550
Wire Wire Line
	7350 7750 7350 7850
Connection ~ 7350 7750
$Comp
L power:GND #PWR0133
U 1 1 5CAB7901
P 7350 8200
F 0 "#PWR0133" H 7350 7950 50  0001 C CNN
F 1 "GND" H 7355 8027 50  0000 C CNN
F 2 "" H 7350 8200 50  0001 C CNN
F 3 "" H 7350 8200 50  0001 C CNN
	1    7350 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 8200 7350 8150
$Comp
L power:GND #PWR0134
U 1 1 5CAC8BCE
P 7350 6000
F 0 "#PWR0134" H 7350 5750 50  0001 C CNN
F 1 "GND" H 7355 5827 50  0000 C CNN
F 2 "" H 7350 6000 50  0001 C CNN
F 3 "" H 7350 6000 50  0001 C CNN
	1    7350 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 6000 7350 5950
$Comp
L power:GND #PWR0135
U 1 1 5CADA28E
P 7350 4400
F 0 "#PWR0135" H 7350 4150 50  0001 C CNN
F 1 "GND" H 7355 4227 50  0000 C CNN
F 2 "" H 7350 4400 50  0001 C CNN
F 3 "" H 7350 4400 50  0001 C CNN
	1    7350 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4400 7350 4350
$Comp
L power:GND #PWR0136
U 1 1 5CAEB984
P 7350 2200
F 0 "#PWR0136" H 7350 1950 50  0001 C CNN
F 1 "GND" H 7355 2027 50  0000 C CNN
F 2 "" H 7350 2200 50  0001 C CNN
F 3 "" H 7350 2200 50  0001 C CNN
	1    7350 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2200 7350 2150
$Comp
L power:GND #PWR0137
U 1 1 5CAFD74F
P 9000 3550
F 0 "#PWR0137" H 9000 3300 50  0001 C CNN
F 1 "GND" H 9005 3377 50  0000 C CNN
F 2 "" H 9000 3550 50  0001 C CNN
F 3 "" H 9000 3550 50  0001 C CNN
	1    9000 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3550 9150 3500
Wire Wire Line
	9150 3000 10000 3000
Wire Wire Line
	9150 3000 9150 3200
Connection ~ 10000 3000
$Comp
L Device:CP C3
U 1 1 5CB21569
P 8900 3350
F 0 "C3" H 8700 3400 50  0000 L CNN
F 1 "4.7uF" H 8600 3300 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.8" H 8938 3200 50  0001 C CNN
F 3 "~" H 8900 3350 50  0001 C CNN
	1    8900 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3000 8900 3000
Wire Wire Line
	8900 3000 8900 3200
Connection ~ 9150 3000
Wire Wire Line
	8900 3500 8900 3550
Wire Wire Line
	8900 3550 9000 3550
Connection ~ 9000 3550
Wire Wire Line
	9000 3550 9150 3550
$Comp
L Device:R R5
U 1 1 5CB5CD82
P 7000 10300
F 0 "R5" V 6793 10300 50  0000 C CNN
F 1 "60R" V 6884 10300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6930 10300 50  0001 C CNN
F 3 "~" H 7000 10300 50  0001 C CNN
	1    7000 10300
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 10150 6200 10300
Wire Wire Line
	7150 10300 7400 10300
Wire Wire Line
	6850 10300 6200 10300
Connection ~ 6200 10300
Wire Wire Line
	6200 10300 6200 10500
Wire Bus Line
	5700 2800 7950 2800
Wire Bus Line
	5700 6600 7950 6600
Wire Bus Line
	7950 2800 7950 6600
$EndSCHEMATC
