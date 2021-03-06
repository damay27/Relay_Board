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
L MCU_Microchip_ATmega:ATmega328P-PU U1
U 1 1 5FD93E1A
P 1900 3050
F 0 "U1" H 1256 3096 50  0000 R CNN
F 1 "ATmega328P-PU" H 1256 3005 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 1900 3050 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 1900 3050 50  0001 C CNN
	1    1900 3050
	1    0    0    -1  
$EndComp
$Comp
L Custom_Parts:IEC_Connector U2
U 1 1 5FD9D606
P 3700 650
F 0 "U2" H 3862 675 50  0000 C CNN
F 1 "IEC_Connector" H 3862 584 50  0000 C CNN
F 2 "Custom_Footprints:IEC_Connector" H 3800 550 50  0001 C CNN
F 3 "" H 3800 550 50  0001 C CNN
	1    3700 650 
	1    0    0    -1  
$EndComp
Text GLabel 4100 850  2    50   Input ~ 0
AC_Hot_IN
$Comp
L Device:D D1
U 1 1 5FDB2A25
P 9550 2050
F 0 "D1" H 9550 2267 50  0000 C CNN
F 1 "D" H 9550 2176 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P12.70mm_Horizontal" H 9550 2050 50  0001 C CNN
F 3 "~" H 9550 2050 50  0001 C CNN
	1    9550 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1850 9350 2050
Wire Wire Line
	9350 2050 9400 2050
Wire Wire Line
	9750 1850 9750 2050
Wire Wire Line
	9750 2050 9700 2050
Text GLabel 5950 2250 3    50   Input ~ 0
AC_Hot_IN
Wire Wire Line
	9750 2450 9750 2050
Connection ~ 9750 2050
Text GLabel 8650 2050 0    50   Input ~ 0
5V_Rail
$Comp
L power:GND #PWR011
U 1 1 5FDB2A35
P 9750 3100
F 0 "#PWR011" H 9750 2850 50  0001 C CNN
F 1 "GND" H 9755 2927 50  0000 C CNN
F 2 "" H 9750 3100 50  0001 C CNN
F 3 "" H 9750 3100 50  0001 C CNN
	1    9750 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 2850 9750 3000
$Comp
L Device:R R4
U 1 1 5FDB2A42
P 9150 2650
F 0 "R4" V 8943 2650 50  0000 C CNN
F 1 "220" V 9034 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 9080 2650 50  0001 C CNN
F 3 "~" H 9150 2650 50  0001 C CNN
	1    9150 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 2650 9400 2650
Text GLabel 9000 2650 0    50   Input ~ 0
Relay_CTRL
$Comp
L Interface_USB:FT232RL U4
U 1 1 5FDB97BD
P 8150 5000
F 0 "U4" H 8150 6181 50  0000 C CNN
F 1 "FT232RL" H 8150 6090 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 9250 4100 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT232R.pdf" H 8150 5000 50  0001 C CNN
	1    8150 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B J1
U 1 1 5FDBC931
P 850 6450
F 0 "J1" H 907 6917 50  0000 C CNN
F 1 "USB_B" H 907 6826 50  0000 C CNN
F 2 "Connector_USB:USB_B_Lumberg_2411_02_Horizontal" H 1000 6400 50  0001 C CNN
F 3 " ~" H 1000 6400 50  0001 C CNN
	1    850  6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FDC09A3
P 850 7100
F 0 "#PWR01" H 850 6850 50  0001 C CNN
F 1 "GND" H 855 6927 50  0000 C CNN
F 2 "" H 850 7100 50  0001 C CNN
F 3 "" H 850 7100 50  0001 C CNN
	1    850  7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5FDC11D1
P 8150 6150
F 0 "#PWR09" H 8150 5900 50  0001 C CNN
F 1 "GND" H 8155 5977 50  0000 C CNN
F 2 "" H 8150 6150 50  0001 C CNN
F 3 "" H 8150 6150 50  0001 C CNN
	1    8150 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 6000 8350 6150
Wire Wire Line
	8350 6150 8250 6150
Wire Wire Line
	7950 6000 7950 6150
Wire Wire Line
	7950 6150 8150 6150
Connection ~ 8150 6150
Wire Wire Line
	8150 6000 8150 6150
Wire Wire Line
	8250 6000 8250 6150
Connection ~ 8250 6150
Wire Wire Line
	8250 6150 8150 6150
Wire Wire Line
	850  6850 850  6950
Wire Wire Line
	750  6850 750  6950
Wire Wire Line
	750  6950 850  6950
Connection ~ 850  6950
Wire Wire Line
	850  6950 850  7100
$Comp
L pspice:C C3
U 1 1 5FDC5524
P 4500 7150
F 0 "C3" H 4678 7196 50  0000 L CNN
F 1 "10nF" H 4678 7105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 4500 7150 50  0001 C CNN
F 3 "~" H 4500 7150 50  0001 C CNN
	1    4500 7150
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5FDC6721
P 4500 7500
F 0 "#PWR05" H 4500 7250 50  0001 C CNN
F 1 "GND" H 4505 7327 50  0000 C CNN
F 2 "" H 4500 7500 50  0001 C CNN
F 3 "" H 4500 7500 50  0001 C CNN
	1    4500 7500
	-1   0    0    -1  
$EndComp
Text GLabel 2700 6250 2    50   Input ~ 0
USB_VBUS_Rail
Text GLabel 1400 7150 3    50   Input ~ 0
USB_D+
Text GLabel 1250 7150 3    50   Input ~ 0
USB_D-
Wire Wire Line
	5500 7400 6150 7400
$Comp
L pspice:C C4
U 1 1 5FDD07EA
P 5500 7150
F 0 "C4" H 5678 7196 50  0000 L CNN
F 1 "100nF" H 5678 7105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 5500 7150 50  0001 C CNN
F 3 "~" H 5500 7150 50  0001 C CNN
	1    5500 7150
	1    0    0    1   
$EndComp
Wire Wire Line
	5500 7400 4500 7400
Connection ~ 5500 7400
Connection ~ 4500 7400
Text GLabel 5750 5100 3    50   Input ~ 0
USB_D+
Text GLabel 5950 5100 3    50   Input ~ 0
USB_D-
Wire Wire Line
	5750 5100 5750 4600
Wire Wire Line
	5750 4600 7350 4600
Wire Wire Line
	5950 5100 5950 4700
Wire Wire Line
	5950 4700 7350 4700
Text GLabel 9400 4300 2    50   Input ~ 0
FTDI_UART_TX
Text GLabel 9400 4400 2    50   Input ~ 0
FTDI_UART_RX
Wire Wire Line
	8950 4400 9400 4400
Wire Wire Line
	8950 4300 9400 4300
Text GLabel 8200 3550 1    50   Input ~ 0
USB_VBUS_Rail
Wire Wire Line
	7350 5700 7350 6150
Wire Wire Line
	7350 6150 7950 6150
Connection ~ 7950 6150
$Comp
L Device:LED D2
U 1 1 5FDDF2B3
P 10150 4600
F 0 "D2" V 10189 4482 50  0000 R CNN
F 1 "LED" V 10098 4482 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 10150 4600 50  0001 C CNN
F 3 "~" H 10150 4600 50  0001 C CNN
	1    10150 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5FDE04E2
P 10650 4600
F 0 "D3" V 10689 4482 50  0000 R CNN
F 1 "LED" V 10598 4482 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 10650 4600 50  0001 C CNN
F 3 "~" H 10650 4600 50  0001 C CNN
	1    10650 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5FDE10CC
P 10150 5050
F 0 "R6" H 10220 5096 50  0000 L CNN
F 1 "220" H 10220 5005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 10080 5050 50  0001 C CNN
F 3 "~" H 10150 5050 50  0001 C CNN
	1    10150 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4750 10150 4900
Wire Wire Line
	10650 4750 10650 4900
Wire Wire Line
	10150 5200 10150 5300
Wire Wire Line
	10150 5300 8950 5300
Wire Wire Line
	10650 5200 10650 5400
Wire Wire Line
	10650 5400 8950 5400
Text GLabel 10400 4300 1    50   Input ~ 0
USB_VBUS_Rail
Wire Wire Line
	10150 4450 10150 4300
Wire Wire Line
	10650 4300 10650 4450
Wire Wire Line
	10150 4300 10650 4300
$Comp
L Device:R R7
U 1 1 5FDE1768
P 10650 5050
F 0 "R7" H 10720 5096 50  0000 L CNN
F 1 "220" H 10720 5005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 10580 5050 50  0001 C CNN
F 3 "~" H 10650 5050 50  0001 C CNN
	1    10650 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5FDEB5FE
P 7000 5350
F 0 "R3" H 7070 5396 50  0000 L CNN
F 1 "10k" H 7070 5305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6930 5350 50  0001 C CNN
F 3 "~" H 7000 5350 50  0001 C CNN
	1    7000 5350
	1    0    0    -1  
$EndComp
Text GLabel 6400 5100 3    50   Input ~ 0
USB_VBUS_Rail
$Comp
L pspice:C C6
U 1 1 5FDEF0E4
P 6800 4050
F 0 "C6" H 6978 4096 50  0000 L CNN
F 1 "100nF" H 6978 4005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 6800 4050 50  0001 C CNN
F 3 "~" H 6800 4050 50  0001 C CNN
	1    6800 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5FDEFA8E
P 6800 3700
F 0 "#PWR07" H 6800 3450 50  0001 C CNN
F 1 "GND" H 6805 3527 50  0000 C CNN
F 2 "" H 6800 3700 50  0001 C CNN
F 3 "" H 6800 3700 50  0001 C CNN
	1    6800 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 4300 7350 4300
Wire Wire Line
	6800 3700 6800 3800
Text GLabel 6050 1200 1    50   Input ~ 0
Current_Sense
Wire Wire Line
	6050 1200 6050 1300
$Comp
L power:GND #PWR06
U 1 1 5FE001BC
P 6750 1400
F 0 "#PWR06" H 6750 1150 50  0001 C CNN
F 1 "GND" H 6755 1227 50  0000 C CNN
F 2 "" H 6750 1400 50  0001 C CNN
F 3 "" H 6750 1400 50  0001 C CNN
	1    6750 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1400 6350 1700
Text GLabel 5300 1700 0    50   Input ~ 0
USB_VBUS_Rail
Text GLabel 9650 1200 1    50   Input ~ 0
AC_Hot_OUT
Text GLabel 6150 2250 3    50   Input ~ 0
AC_Hot_Sense
Wire Wire Line
	5950 2100 5950 2250
Wire Wire Line
	6150 2100 6150 2250
Text GLabel 9450 1200 1    50   Input ~ 0
AC_Hot_Sense
$Comp
L Device:R R1
U 1 1 5FDBB329
P 3000 3350
F 0 "R1" V 2793 3350 50  0000 C CNN
F 1 "10k" V 2884 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2930 3350 50  0001 C CNN
F 3 "~" H 3000 3350 50  0001 C CNN
	1    3000 3350
	0    1    1    0   
$EndComp
Text GLabel 3550 3350 2    50   Input ~ 0
USB_VBUS_Rail
Wire Wire Line
	3150 3350 3550 3350
Text GLabel 1200 650  0    50   Input ~ 0
USB_VBUS_Rail
Wire Wire Line
	1900 1550 1900 1450
$Comp
L power:GND #PWR02
U 1 1 5FDC1F35
P 1900 4700
F 0 "#PWR02" H 1900 4450 50  0001 C CNN
F 1 "GND" H 1905 4527 50  0000 C CNN
F 2 "" H 1900 4700 50  0001 C CNN
F 3 "" H 1900 4700 50  0001 C CNN
	1    1900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4550 1900 4600
Text GLabel 3800 3750 3    50   Input ~ 0
FTDI_UART_TX
Wire Wire Line
	2500 3550 3800 3550
Wire Wire Line
	3800 3550 3800 3750
Text GLabel 3550 3750 3    50   Input ~ 0
FTDI_UART_RX
Wire Wire Line
	2500 3650 3550 3650
Wire Wire Line
	3550 3650 3550 3750
Connection ~ 9350 2050
$Comp
L Device:R R5
U 1 1 5FDCD46B
P 9400 2850
F 0 "R5" H 9470 2896 50  0000 L CNN
F 1 "10K" H 9470 2805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 9330 2850 50  0001 C CNN
F 3 "~" H 9400 2850 50  0001 C CNN
	1    9400 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2700 9400 2650
Connection ~ 9400 2650
Wire Wire Line
	9400 2650 9450 2650
Wire Wire Line
	9400 3000 9750 3000
Connection ~ 9750 3000
Wire Wire Line
	9750 3000 9750 3100
Text GLabel 3300 2750 2    50   Input ~ 0
Current_Sense
Wire Wire Line
	2500 2750 3300 2750
Text GLabel 3300 2850 2    50   Input ~ 0
Relay_CTRL
Wire Wire Line
	2500 2850 3300 2850
$Comp
L Connector:Screw_Terminal_01x03 J2
U 1 1 5FDDD158
P 2550 900
F 0 "J2" H 2468 575 50  0000 C CNN
F 1 "Screw_Terminal_01x03" H 2468 666 50  0000 C CNN
F 2 "Custom_Footprints:Screw_Terminal_Pads" H 2550 900 50  0001 C CNN
F 3 "~" H 2550 900 50  0001 C CNN
	1    2550 900 
	-1   0    0    1   
$EndComp
Text GLabel 2750 800  2    50   Input ~ 0
AC_Hot_OUT
Text GLabel 4100 1000 2    50   Input ~ 0
AC_Neutral_IN
Text GLabel 2750 900  2    50   Input ~ 0
AC_Neutral_IN
Text GLabel 4100 1150 2    50   Input ~ 0
AC_Earth_IN
Text GLabel 2750 1000 2    50   Input ~ 0
AC_Earth_IN
$Comp
L Transistor_BJT:BC337 Q1
U 1 1 5FDDF42D
P 9650 2650
F 0 "Q1" H 9841 2696 50  0000 L CNN
F 1 "BC337" H 9841 2605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9850 2575 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 9650 2650 50  0001 L CNN
	1    9650 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J4
U 1 1 5FDE59B0
P 5200 3300
F 0 "J4" H 5250 3617 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 5250 3526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 5200 3300 50  0001 C CNN
F 3 "~" H 5200 3300 50  0001 C CNN
	1    5200 3300
	1    0    0    -1  
$EndComp
Text GLabel 5500 3300 2    50   Input ~ 0
ISP_MOSI
Text GLabel 5000 3200 0    50   Input ~ 0
ISP_MISO
Text GLabel 5000 3300 0    50   Input ~ 0
ISP_SCK
Text GLabel 5000 3400 0    50   Input ~ 0
ISP_RST
Text GLabel 3350 2250 2    50   Input ~ 0
ISP_MISO
Wire Wire Line
	2500 2250 3350 2250
Text GLabel 3350 2150 2    50   Input ~ 0
ISP_MOSI
Wire Wire Line
	3350 2150 2500 2150
Text GLabel 3350 2350 2    50   Input ~ 0
ISP_SCK
Wire Wire Line
	2500 2350 3350 2350
Text GLabel 3550 3050 2    50   Input ~ 0
ISP_RST
Text GLabel 2350 4600 2    50   Input ~ 0
ISP_GND
Wire Wire Line
	2350 4600 1900 4600
Connection ~ 1900 4600
Wire Wire Line
	1900 4600 1900 4700
Wire Wire Line
	2500 3350 2700 3350
Wire Wire Line
	3550 3050 2700 3050
Wire Wire Line
	2700 3050 2700 3350
Connection ~ 2700 3350
Wire Wire Line
	2700 3350 2850 3350
Text GLabel 6550 6900 2    50   Input ~ 0
5V_Rail
$Comp
L Device:R R2
U 1 1 5FE540C2
P 6700 5000
F 0 "R2" V 6493 5000 50  0000 C CNN
F 1 "4.7k" V 6584 5000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6630 5000 50  0001 C CNN
F 3 "~" H 6700 5000 50  0001 C CNN
	1    6700 5000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5FE5A23A
P 7000 5650
F 0 "#PWR08" H 7000 5400 50  0001 C CNN
F 1 "GND" H 7005 5477 50  0000 C CNN
F 2 "" H 7000 5650 50  0001 C CNN
F 3 "" H 7000 5650 50  0001 C CNN
	1    7000 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5100 6400 5000
Wire Wire Line
	6400 5000 6550 5000
Wire Wire Line
	6850 5000 7000 5000
Wire Wire Line
	7000 5200 7000 5100
Connection ~ 7000 5000
Wire Wire Line
	7000 5000 7250 5000
Wire Wire Line
	7000 5500 7000 5550
Wire Wire Line
	5500 6900 4500 6900
Connection ~ 5500 6900
Wire Wire Line
	4500 6900 4150 6900
Connection ~ 4500 6900
$Comp
L Connector:Barrel_Jack_MountingPin J3
U 1 1 5FE449DE
P 3850 7000
F 0 "J3" H 3907 7317 50  0000 C CNN
F 1 "Barrel_Jack_MountingPin" H 3907 7226 50  0000 C CNN
F 2 "Custom_Footprints:BarrelJack_Horizontal" H 3900 6960 50  0001 C CNN
F 3 "~" H 3900 6960 50  0001 C CNN
	1    3850 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 7100 4150 7400
Wire Wire Line
	4150 7400 4500 7400
Wire Wire Line
	4500 7400 4500 7500
$Comp
L Device:Crystal Y1
U 1 1 5FEB35B1
P 4200 5400
F 0 "Y1" V 4154 5531 50  0000 L CNN
F 1 "16MHz" V 4245 5531 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 4200 5400 50  0001 C CNN
F 3 "~" H 4200 5400 50  0001 C CNN
	1    4200 5400
	0    1    1    0   
$EndComp
Text GLabel 3600 5250 0    50   Input ~ 0
XTAL1
Text GLabel 3600 5550 0    50   Input ~ 0
XTAL2
Wire Wire Line
	3600 5250 3900 5250
Wire Wire Line
	3600 5550 3900 5550
$Comp
L Device:C C1
U 1 1 5FEBE13F
P 3900 5100
F 0 "C1" H 4015 5146 50  0000 L CNN
F 1 "16pF" H 4015 5055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 3938 4950 50  0001 C CNN
F 3 "~" H 3900 5100 50  0001 C CNN
	1    3900 5100
	1    0    0    -1  
$EndComp
Connection ~ 3900 5250
Wire Wire Line
	3900 5250 4200 5250
$Comp
L Device:C C2
U 1 1 5FEBE7FA
P 3900 5700
F 0 "C2" H 4015 5746 50  0000 L CNN
F 1 "16pF" H 4015 5655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 3938 5550 50  0001 C CNN
F 3 "~" H 3900 5700 50  0001 C CNN
	1    3900 5700
	1    0    0    -1  
$EndComp
Connection ~ 3900 5550
Wire Wire Line
	3900 5550 4200 5550
$Comp
L power:GND #PWR04
U 1 1 5FEBF1D2
P 3900 5850
F 0 "#PWR04" H 3900 5600 50  0001 C CNN
F 1 "GND" H 3905 5677 50  0000 C CNN
F 2 "" H 3900 5850 50  0001 C CNN
F 3 "" H 3900 5850 50  0001 C CNN
	1    3900 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5FEBFDE8
P 3900 4950
F 0 "#PWR03" H 3900 4700 50  0001 C CNN
F 1 "GND" H 3905 4777 50  0000 C CNN
F 2 "" H 3900 4950 50  0001 C CNN
F 3 "" H 3900 4950 50  0001 C CNN
	1    3900 4950
	-1   0    0    1   
$EndComp
Text GLabel 3100 2450 2    50   Input ~ 0
XTAL1
Text GLabel 3100 2550 2    50   Input ~ 0
XTAL2
Wire Wire Line
	3100 2450 2500 2450
Wire Wire Line
	3100 2550 2500 2550
$Comp
L Device:R R8
U 1 1 5FEF9232
P 2800 1950
F 0 "R8" V 2593 1950 50  0000 C CNN
F 1 "470" V 2684 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2730 1950 50  0001 C CNN
F 3 "~" H 2800 1950 50  0001 C CNN
	1    2800 1950
	0    1    1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5FEF9CC0
P 3250 1950
F 0 "D4" H 3243 1695 50  0000 C CNN
F 1 "LED" H 3243 1786 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 3250 1950 50  0001 C CNN
F 3 "~" H 3250 1950 50  0001 C CNN
	1    3250 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 1950 2650 1950
Wire Wire Line
	2950 1950 3100 1950
$Comp
L power:GND #PWR0101
U 1 1 5FF01C75
P 3900 2000
F 0 "#PWR0101" H 3900 1750 50  0001 C CNN
F 1 "GND" H 3905 1827 50  0000 C CNN
F 2 "" H 3900 2000 50  0001 C CNN
F 3 "" H 3900 2000 50  0001 C CNN
	1    3900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1950 3900 1950
Wire Wire Line
	3900 1950 3900 2000
$Comp
L Device:Ferrite_Bead FB1
U 1 1 5FFA2555
P 1650 6250
F 0 "FB1" V 1376 6250 50  0000 C CNN
F 1 "Ferrite_Bead" V 1467 6250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1580 6250 50  0001 C CNN
F 3 "~" H 1650 6250 50  0001 C CNN
	1    1650 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 6550 1250 6550
Wire Wire Line
	1250 6550 1250 7150
Wire Wire Line
	1150 6450 1400 6450
Wire Wire Line
	1400 6450 1400 7150
Wire Wire Line
	1150 6250 1250 6250
$Comp
L Device:C C10
U 1 1 5FFDAC31
P 1250 5800
F 0 "C10" H 1365 5846 50  0000 L CNN
F 1 "10nF" H 1365 5755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 1288 5650 50  0001 C CNN
F 3 "~" H 1250 5800 50  0001 C CNN
	1    1250 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5FFDC069
P 1250 5500
F 0 "#PWR014" H 1250 5250 50  0001 C CNN
F 1 "GND" H 1255 5327 50  0000 C CNN
F 2 "" H 1250 5500 50  0001 C CNN
F 3 "" H 1250 5500 50  0001 C CNN
	1    1250 5500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5FFDD93D
P 2250 7150
F 0 "#PWR015" H 2250 6900 50  0001 C CNN
F 1 "GND" H 2255 6977 50  0000 C CNN
F 2 "" H 2250 7150 50  0001 C CNN
F 3 "" H 2250 7150 50  0001 C CNN
	1    2250 7150
	1    0    0    -1  
$EndComp
Connection ~ 2550 6250
Wire Wire Line
	2550 6250 2700 6250
Wire Wire Line
	1250 5950 1250 6250
Connection ~ 1250 6250
Wire Wire Line
	1250 6250 1500 6250
Wire Wire Line
	1250 5500 1250 5650
Wire Wire Line
	1800 6250 1900 6250
Wire Wire Line
	2550 6550 2550 6250
$Comp
L Device:C C11
U 1 1 5FFD88A7
P 1900 6700
F 0 "C11" H 2015 6746 50  0000 L CNN
F 1 "100nF" H 2015 6655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 1938 6550 50  0001 C CNN
F 3 "~" H 1900 6700 50  0001 C CNN
	1    1900 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C13
U 1 1 5FFD9969
P 2550 6700
F 0 "C13" H 2668 6746 50  0000 L CNN
F 1 "4.7uF" H 2668 6655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D6.0mm_P2.50mm" H 2588 6550 50  0001 C CNN
F 3 "~" H 2550 6700 50  0001 C CNN
	1    2550 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 6250 1900 6550
Connection ~ 1900 6250
Wire Wire Line
	1900 6250 2550 6250
Wire Wire Line
	1900 6850 2250 6850
Wire Wire Line
	2250 7150 2250 6850
Connection ~ 2250 6850
Wire Wire Line
	2250 6850 2550 6850
Wire Wire Line
	8050 4000 7950 4000
Wire Wire Line
	7950 4000 7950 3750
Wire Wire Line
	8250 4000 8500 4000
Wire Wire Line
	8500 4000 8500 3750
Wire Wire Line
	1200 650  1400 650 
Wire Wire Line
	1400 950  1400 650 
Wire Wire Line
	1900 1450 1400 1450
Wire Wire Line
	2000 950  1400 950 
Wire Wire Line
	2000 950  2000 1250
Wire Wire Line
	1300 1850 900  1850
Wire Wire Line
	600  1850 600  950 
Wire Wire Line
	600  950  1400 950 
Connection ~ 1400 950 
Wire Wire Line
	1400 950  1400 1250
$Comp
L Device:C C9
U 1 1 60092E8C
P 1250 1250
F 0 "C9" V 998 1250 50  0000 C CNN
F 1 ".1uF" V 1089 1250 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 1288 1100 50  0001 C CNN
F 3 "~" H 1250 1250 50  0001 C CNN
	1    1250 1250
	0    1    1    0   
$EndComp
Connection ~ 1400 1250
Wire Wire Line
	1400 1250 1400 1450
$Comp
L Device:C C12
U 1 1 60093EAD
P 2150 1250
F 0 "C12" V 1898 1250 50  0000 C CNN
F 1 ".1uF" V 1989 1250 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 2188 1100 50  0001 C CNN
F 3 "~" H 2150 1250 50  0001 C CNN
	1    2150 1250
	0    1    1    0   
$EndComp
Connection ~ 2000 1250
Wire Wire Line
	2000 1250 2000 1550
$Comp
L Device:C C8
U 1 1 60094273
P 900 2000
F 0 "C8" H 1015 2046 50  0000 L CNN
F 1 ".1uF" H 1015 1955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 938 1850 50  0001 C CNN
F 3 "~" H 900 2000 50  0001 C CNN
	1    900  2000
	1    0    0    -1  
$EndComp
Connection ~ 900  1850
Wire Wire Line
	900  1850 600  1850
$Comp
L power:GND #PWR013
U 1 1 6009530C
P 1100 1400
F 0 "#PWR013" H 1100 1150 50  0001 C CNN
F 1 "GND" H 1105 1227 50  0000 C CNN
F 2 "" H 1100 1400 50  0001 C CNN
F 3 "" H 1100 1400 50  0001 C CNN
	1    1100 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 60095C3C
P 2300 1400
F 0 "#PWR016" H 2300 1150 50  0001 C CNN
F 1 "GND" H 2305 1227 50  0000 C CNN
F 2 "" H 2300 1400 50  0001 C CNN
F 3 "" H 2300 1400 50  0001 C CNN
	1    2300 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 60096552
P 900 2300
F 0 "#PWR012" H 900 2050 50  0001 C CNN
F 1 "GND" H 905 2127 50  0000 C CNN
F 2 "" H 900 2300 50  0001 C CNN
F 3 "" H 900 2300 50  0001 C CNN
	1    900  2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1250 1100 1400
Wire Wire Line
	2300 1250 2300 1400
Wire Wire Line
	900  2150 900  2300
Wire Wire Line
	7950 3650 8200 3650
Wire Wire Line
	8200 3550 8200 3650
Connection ~ 8200 3650
Wire Wire Line
	8200 3650 8500 3650
$Comp
L Device:C C16
U 1 1 600C4D50
P 8650 3750
F 0 "C16" V 8398 3750 50  0000 C CNN
F 1 ".1uF" V 8489 3750 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 8688 3600 50  0001 C CNN
F 3 "~" H 8650 3750 50  0001 C CNN
	1    8650 3750
	0    1    1    0   
$EndComp
Connection ~ 8500 3750
Wire Wire Line
	8500 3750 8500 3650
$Comp
L Device:C C15
U 1 1 600C5D18
P 7800 3750
F 0 "C15" V 7548 3750 50  0000 C CNN
F 1 ".1uF" V 7639 3750 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 7838 3600 50  0001 C CNN
F 3 "~" H 7800 3750 50  0001 C CNN
	1    7800 3750
	0    1    1    0   
$EndComp
Connection ~ 7950 3750
Wire Wire Line
	7950 3750 7950 3650
$Comp
L power:GND #PWR019
U 1 1 600C646A
P 8950 3850
F 0 "#PWR019" H 8950 3600 50  0001 C CNN
F 1 "GND" H 8955 3677 50  0000 C CNN
F 2 "" H 8950 3850 50  0001 C CNN
F 3 "" H 8950 3850 50  0001 C CNN
	1    8950 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 600C7184
P 7600 3900
F 0 "#PWR018" H 7600 3650 50  0001 C CNN
F 1 "GND" H 7605 3727 50  0000 C CNN
F 2 "" H 7600 3900 50  0001 C CNN
F 3 "" H 7600 3900 50  0001 C CNN
	1    7600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3750 7600 3750
Wire Wire Line
	7600 3750 7600 3900
Wire Wire Line
	8800 3750 8950 3750
Wire Wire Line
	8950 3750 8950 3850
$Comp
L power:GND #PWR017
U 1 1 600D7EC8
P 5400 2250
F 0 "#PWR017" H 5400 2000 50  0001 C CNN
F 1 "GND" H 5405 2077 50  0000 C CNN
F 2 "" H 5400 2250 50  0001 C CNN
F 3 "" H 5400 2250 50  0001 C CNN
	1    5400 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2250 5400 2100
$Comp
L Device:C C14
U 1 1 600D6DCF
P 5400 1950
F 0 "C14" H 5515 1996 50  0000 L CNN
F 1 ".1uF" H 5515 1905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 5438 1800 50  0001 C CNN
F 3 "~" H 5400 1950 50  0001 C CNN
	1    5400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1700 5400 1700
Wire Wire Line
	5400 1800 5400 1700
Connection ~ 5400 1700
Wire Wire Line
	5400 1700 5750 1700
Wire Wire Line
	5500 6900 6150 6900
Wire Wire Line
	6150 7300 6150 7400
Wire Wire Line
	6150 7000 6150 6900
Connection ~ 6150 6900
Wire Wire Line
	6150 6900 6550 6900
Wire Wire Line
	8650 2050 8950 2050
$Comp
L power:GND #PWR010
U 1 1 601B3E1E
P 4200 3300
F 0 "#PWR010" H 4200 3050 50  0001 C CNN
F 1 "GND" H 4205 3127 50  0000 C CNN
F 2 "" H 4200 3300 50  0001 C CNN
F 3 "" H 4200 3300 50  0001 C CNN
	1    4200 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4200 3450 4200 3300
Wire Wire Line
	3900 3450 2700 3450
Wire Wire Line
	2700 3450 2700 3350
$Comp
L Device:C C17
U 1 1 601C1FB9
P 6650 5400
F 0 "C17" H 6535 5354 50  0000 R CNN
F 1 ".1uF" H 6535 5445 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 6688 5250 50  0001 C CNN
F 3 "~" H 6650 5400 50  0001 C CNN
	1    6650 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	7250 6150 7250 5000
Connection ~ 7250 5000
Wire Wire Line
	7250 5000 7350 5000
Wire Wire Line
	6650 5550 7000 5550
Connection ~ 7000 5550
Wire Wire Line
	7000 5550 7000 5650
Wire Wire Line
	6650 5250 6650 5100
Wire Wire Line
	6650 5100 7000 5100
Connection ~ 7000 5100
Wire Wire Line
	7000 5100 7000 5000
Text GLabel 5500 3200 2    50   Input ~ 0
USB_VBUS_Rail
$Comp
L power:GND #PWR020
U 1 1 60278A22
P 5500 3400
F 0 "#PWR020" H 5500 3150 50  0001 C CNN
F 1 "GND" H 5505 3227 50  0000 C CNN
F 2 "" H 5500 3400 50  0001 C CNN
F 3 "" H 5500 3400 50  0001 C CNN
	1    5500 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 6011BF75
P 6150 7150
F 0 "C5" H 6268 7196 50  0000 L CNN
F 1 "4.7uF" H 6268 7105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D6.0mm_P2.50mm" H 6188 7000 50  0001 C CNN
F 3 "~" H 6150 7150 50  0001 C CNN
	1    6150 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C18
U 1 1 60299BEC
P 8950 1900
F 0 "C18" H 8832 1854 50  0000 R CNN
F 1 "1000uF" H 8832 1945 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 8988 1750 50  0001 C CNN
F 3 "~" H 8950 1900 50  0001 C CNN
	1    8950 1900
	-1   0    0    1   
$EndComp
Connection ~ 8950 2050
Wire Wire Line
	8950 2050 9350 2050
$Comp
L power:GND #PWR021
U 1 1 6029B2DF
P 8950 1600
F 0 "#PWR021" H 8950 1350 50  0001 C CNN
F 1 "GND" H 8955 1427 50  0000 C CNN
F 2 "" H 8950 1600 50  0001 C CNN
F 3 "" H 8950 1600 50  0001 C CNN
	1    8950 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	8950 1600 8950 1750
$Comp
L Custom_Parts:G5PZ-1A-E_DC5 U5
U 1 1 6010C93F
P 9550 1550
F 0 "U5" V 9596 1322 50  0000 R CNN
F 1 "G5PZ-1A-E_DC5" V 9505 1322 50  0000 R CNN
F 2 "Custom_Footprints:G5PZ-1A-E_DC5" H 9550 1550 50  0001 C CNN
F 3 "" H 9550 1550 50  0001 C CNN
	1    9550 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9650 1200 9650 1250
Wire Wire Line
	9450 1200 9450 1250
Wire Wire Line
	9350 1850 9450 1850
Wire Wire Line
	9750 1850 9650 1850
$Comp
L Sensor_Current:ACS730xLCTR-20AB U3
U 1 1 6013ECA2
P 6050 1700
F 0 "U3" V 6096 1356 50  0000 R CNN
F 1 "ACS730xLCTR-20AB" V 6005 1356 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6400 1600 50  0001 L CIN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS730-Datasheet.ashx?la=en" H 6050 1700 50  0001 C CNN
	1    6050 1700
	0    -1   -1   0   
$EndComp
Text GLabel 6750 950  2    50   Input ~ 0
Current_Sense_Zero
Wire Wire Line
	6150 1300 6150 950 
Wire Wire Line
	6150 950  6500 950 
$Comp
L Device:C C19
U 1 1 60148C12
P 6500 1150
F 0 "C19" H 6615 1196 50  0000 L CNN
F 1 ".1uF" H 6615 1105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 6538 1000 50  0001 C CNN
F 3 "~" H 6500 1150 50  0001 C CNN
	1    6500 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1000 6500 950 
Connection ~ 6500 950 
Wire Wire Line
	6500 950  6750 950 
Wire Wire Line
	6500 1300 6500 1400
Wire Wire Line
	6500 1400 6350 1400
Wire Wire Line
	6500 1400 6750 1400
Connection ~ 6500 1400
Text GLabel 3300 2950 2    50   Input ~ 0
Current_Sense_Zero
Wire Wire Line
	2500 2950 3300 2950
$Comp
L Device:C C7
U 1 1 601B3E18
P 4050 3450
F 0 "C7" V 3798 3450 50  0000 C CNN
F 1 ".1uF" V 3889 3450 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 4088 3300 50  0001 C CNN
F 3 "~" H 4050 3450 50  0001 C CNN
	1    4050 3450
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
