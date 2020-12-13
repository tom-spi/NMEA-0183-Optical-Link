/*
|--------------------------------------------------------------------------------------------|
|                        --NMEA 0183 OPTICAL LINK Tx MODULE--                                |
|                                                                                            |
|                                                                                            |
|  Project          NMEA_FO.proj                                                             |
|  Program Name 	Tx_Master_v1.01.ino                                                      |
|  Author			Thomas Spires 															 |
|															                                 |
|  Author Info:                                                                              |
|  Firmware to be written to U5 (ATMEGA328P) on Tx PCB: refer to KiCAD .kicad_pcb            |
|  "TxSch.kicad_pcb"                 USRNOTE:** U5 TO BE PROGRAMMED OFF BOARD  **            |
|                                                                                            |
|  Revision Release Info:                                                                    |
|  20181216 02:12    Tspires      1.0      Initial Deployment with No configuration ability  |
|  20190126 22:43    Tspires      1.01     Added Configuration ability to be used in         |
|										   conjunction with VB config application            |
|										   "NMEA FO Link Config.exe"                         |
|--------------------------------------------------------------------------------------------|
*/ 
                 

#include <Wire.h>							//include Microchip I2C hex files to set I2C registers
#include <EEPROM.h>							//include Microchip on-chip EEPROM hex files to configure memory map for configuration options
#include <SoftwareSerial.h>					//include Bit-Banged serial port hex files

SoftwareSerial USB_ConfigSerial(A1, A0); 	// RX, TX // Set BitBanged serial port registers accordingly

// Declare Global Variables

int addr = 0;									//Initialise intiger vairble to hold channel addresses				
byte config_val;								//Initialise a variable to read config EEPROM and pass via i2c on boot
char rx_byte;									//Initialise ASCII Char byte to be passed via i2c
int config_data = 0;							//Initialise variable to store incoming USB configuration 
bool tx_debug = false;							//Initialise a flag to enable NMEA Sentence output over USB	

// Declare Pin Names

#define Ch_A_BufferFlag 4
#define Ch_B_BufferFlag 3
#define Ch_C_BufferFlag A2
#define Ch_D_BufferFlag A3
#define Config_Mode_Sw 2										

//Initialise Registers & Interfaces

void setup() {
  //Initialise UARTs
  Serial.begin(19200);							//Start hardware UART & set registers for 19200 Baud. 
  USB_ConfigSerial.begin(9600);  				//Start bitbanged UART & set registers for 9600 Baud
  //Set GPIO Registers
  pinMode(Ch_A_BufferFlag, INPUT); 				//Channel A Buffer Flag Input !! I2C addr 0 !!
  pinMode(Ch_B_BufferFlag, INPUT); 				//Channel B Buffer Flag Input !! I2C addr 1 !!
  pinMode(Ch_C_BufferFlag, INPUT); 				//Channel C Buffer Flag Input !! I2C addr 2 !!
  pinMode(Ch_D_BufferFlag, INPUT); 				//Channel D Buffer Flag Input !! I2C addr 3 !!
  pinMode(Config_Mode_Sw, INPUT); 				//Configuration Mode Enable DIP Sw
  //Initialise I2C
  Wire.begin();        							//Initialise I2C Interface, join bus as master (no address)
  delay (10);									/*Perform a 10ms delay before sending channel configurations over I2C
  												Gives time for channel uCs to boot, join I2C Bus and begin listening*/
  send_config();									
}

//Send Config Data on bootup

void send_config() {					//Function when called, will transmit configuration bytes to each channel via I2C
  for (addr = 0; addr <= 3; addr++){    //Loop Through all channel addresses
    config_val = EEPROM.read(addr);		//load configuration value from EEPROM address based on i2c channel address into config_val
    Wire.beginTransmission(addr);		//Set i2c Tx Registers to intended address
    Wire.write(config_val);             //Transmitt config_val via I2C to channel *SENDING CONFIGURATION DATA HERE*
    Wire.endTransmission();				//Reset i2c Registers and idle interface
  }
}

// Function called on address buffer flag 'HIGH' detected

void Readbuffer_Tx() {										/*Function when called, will read contents of channel buffer
															   and transmit down out hardware UART to Fibre LED */ 
  while ((Wire.available() > 0) && (tx_debug == false)) { 	//Wait for I2C Slave on channel to Tx (may send less than requested (>0))
    rx_byte = Wire.read();									//Read Tx'd byte from channel over I2C & store into rx_byte
    Serial.print(rx_byte);									//Transmit the byte over the Fibre UART at 19200 Baud
    if (rx_byte == '\n') {									//When the end of the NMEA sentence is detected, break from function
      break;
      }
   }

while ((Wire.available() > 0) && (tx_debug == true)) { 		/*Function when called, will read contents of channel buffer
															   and transmit down out hardware UART to Fibre LED. 
															   Will also transmit over USB to PC config tool */ 
	rx_byte = Wire.read();							   		//Wait for I2C Slave on channel to Tx (may send less than requested (>0))
	Serial.print(rx_byte);									//Transmit the byte over the Fibre UART at 19200 Baud
	USB_ConfigSerial.print(rx_byte);						//Transmit the byte over the USB UART
	 if (rx_byte == '\n') {									//When the end of the NMEA sentence is detected, break from function
		break;						
	}
}
}


void loop() {							//Function will loop continuoisly to check status of channel buffer flags
	if (Ch_A_BufferFlag == HIGH) { 		//Buffer Flag 'HIGH' detected on channel A
		Wire.requestFrom(0, 128);		//Transmit i2c poll message to channel A (addr 0), request full buffer (128 bytes)     	
		Readbuffer_Tx();				//Call function to wait for channel i2c transmission, read buffer & send out fibre UART  
	  }
	if (Ch_B_BufferFlag == HIGH) { 		//Buffer Flag 'HIGH' detected on channel B
		Wire.requestFrom(1, 128);    	//Transmit i2c poll message to channel B (addr 1), request full buffer (128 bytes)
		Readbuffer_Tx();				//Call function to wait for channel i2c transmission, read buffer & send out fibre UART  
		}
	if (Ch_C_BufferFlag == HIGH) { 		//Buffer Flag 'HIGH' detected on channel C
		Wire.requestFrom(2, 128);    	//Transmit i2c poll message to channel C (addr 2), request full buffer (128 bytes)
		Readbuffer_Tx();				//Call function to wait for channel i2c transmission, read buffer & send out fibre UART  
	}
	if (Ch_D_BufferFlag == HIGH) { 		//Buffer Flag 'HIGH' detected on channel D
		Wire.requestFrom(3, 128);    	//Transmit i2c poll message to channel C (addr 2), request full buffer (128 bytes)
		Readbuffer_Tx();				//Call function to wait for channel i2c transmission, read buffer & send out fibre UART
	}
	
	//	Below will only run in configuration mode 

	while ((USB_ConfigSerial.available() > 0) && (Config_Mode_Sw == 1) ) {			//If config DIP Sw is set & Data Rx'd on USB
		config_data = USB_ConfigSerial.read();										//Read config byte sent down USB
		//Serial.print(config_data);						//LoopBack Interface Via Optical Link used for debugging
		
		switch (config_data) {
		    case '1' :
		    	USB_ConfigSerial.print("1");					//Transmit a 1 for loopback & allow config software to parse data
				USB_ConfigSerial.println(EEPROM.read(0));		//Read EEPROM Configuration Data for channel A and send over USB
		      break;
		    case '2' :
		    	USB_ConfigSerial.print("2");					//Transmit a 2 for loopback & allow config software to parse data
				USB_ConfigSerial.println(EEPROM.read(1));		//Read EEPROM Configuration Data for channel B and send over U
		      break;
		    case '3' :
		    	USB_ConfigSerial.print("3");					//Transmit a 3 for loopback & allow config software to parse data
				USB_ConfigSerial.println(EEPROM.read(2));		//Read EEPROM Configuration Data for channel C and send over USB
			  break;
			case '4' :
				USB_ConfigSerial.print("4");					//Transmit a 4 for loopback & allow config software to parse data
				USB_ConfigSerial.println(EEPROM.read(3));		//Read EEPROM Configuration Data for channel D and send over USB
			  break;
		}

		if (config_data == 'A') {
			EEPROM.write(0, 1);									//change config val in EEPROM
			//Serial.println("Channel 1 to 2400");
		}
		if (config_data == 'B') {
			EEPROM.write(0, 2);									//change config val in EEPROM
			//Serial.println("Channel 1 to 4800");
		}
		if (config_data == 'C') {
			EEPROM.write(0, 3);									//change config val in EEPROM
			//Serial.println("Channel 1 to 9600");
		}
		if (config_data == 'D') {
			EEPROM.write(0, 4);									//change config val in EEPROM
			//Serial.println("Channel 1 Disabled");
		}
		if (config_data == 'E') {
			EEPROM.write(1, 1);	//change config val
			//Serial.println("Channel 2 to 2400");
		}
		if (config_data == 'F') {
			EEPROM.write(1, 2);	//change config val
			//Serial.println("Channel 2 to 4800");
		}
		if (config_data == 'G') {
			EEPROM.write(1, 3);	//change config val
			//Serial.println("Channel 2 to 9600");
		}
		if (config_data == 'H') {
			EEPROM.write(1, 4);	//change config val
			//Serial.println("Channel 2 Disabled");
		}
		if (config_data == 'I') {
			EEPROM.write(2, 1);	//change config val
			//Serial.println("Channel 3 to 2400");
		}
		if (config_data == 'J') {
			EEPROM.write(2, 2);	//change config val
			//Serial.println("Channel 3 to 4800");
		}
		if (config_data == 'K') {
			EEPROM.write(2, 3);	//change config val
			//Serial.println("Channel 3 to 9600");
		}
		if (config_data == 'L') {
			EEPROM.write(2, 4);	//change config val
			//Serial.println("Channel 3 to DISABLED");
		}
		if (config_data == 'M') {
			EEPROM.write(3, 1);	//change config val
			//Serial.println("Channel 4 to 2400");
		}
		if (config_data == 'N') {
			EEPROM.write(3, 2);	//change config val
			//Serial.println("Channel 4 to 4800");
		}
		if (config_data == 'O') {
			EEPROM.write(3, 3);	//change config val
			//Serial.println("Channel 3 to 9600");
		}
		if (config_data == 'P') {
			EEPROM.write(3, 4);	//change config val
			//Serial.println("Channel 4 to DISABLED");
		}
		if (config_data == 'Y') {
			tx_debug = true;
		}
		if (config_data == 'Z') {
			tx_debug = false;
		}
	}
}
