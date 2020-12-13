/*
|--------------------------------------------------------------------------------------------|
|                        --NMEA 0183 OPTICAL LINK Rx MODULE--                                |
|                                                                                            |
|                                                                                            |
|  Project        NMEA_FO.proj                                                               |
|  Program Name 	Rx_v1.1.ino                                                                |
|  Author		     	Thomas Spires 															                               |
|															                                                               |
|  Author Info:                                                                              |
|  Firmware to be written to U1 (ATMEGA328P) on Rx PCB: refer to KiCAD .kicad_pcb            |
|  "RxPCBV1.1"                                                                               |
|                                                                                            |
|  Revision Release Info:                                                                    |
|  20181210 00:42    Tspires      1.0      Initial Deployment on prototype PCB               |
|  20181219 03:13    Tspires      1.1      Added baud rate config + link status              |
|										   function.                                                             |
|--------------------------------------------------------------------------------------------|
*/

#include <SoftwareSerial.h>					//include Bit-Banged serial port hex files

SoftwareSerial RS422Serial(A0, A1); 		// RX, TX // Set BitBanged serial port registers accordingly

// Declare Global Variables

char rx_byte;								//Initialise ASCII Char byte to be passed from Hardware UART buffer

// Declare Pin Names

#define RX_LED A5
#define Link_LED A4
#define Link_Stat A3
#define Link_Fail A2
#define Config_Bit0 8
#define Config_Bit1 9

//Initialise Registers & Interfaces

void setup() {
  //Initialise UARTs
  Serial.begin(19200);						//Start hardware UART & set registers for 19200 Baud
  //Set GPIO Registers
  pinMode(Config_Bit0, INPUT);
  pinMode(Config_Bit1, INPUT);
  pinMode(Link_Stat, INPUT);
  pinMode(RX_LED, OUTPUT);
  pinMode(Link_LED, OUTPUT);
  pinMode(Link_Fail, OUTPUT);
  
  // Set output baud rate dependant on Config DIP switch settings
  
  if (digitalRead(Config_Bit0) == 0 && digitalRead(Config_Bit1) == 0){	//Switches 0 0 
    RS422Serial.begin(2400);											//Set NMEA Baud to 2400                      
  }	
  if (digitalRead(Config_Bit0) == 1 && digitalRead(Config_Bit1) == 0){  //Switches 1 0 
    RS422Serial.begin(4800);											//Set NMEA Baud to 4800
  }
  if (digitalRead(Config_Bit0) == 0 && digitalRead(Config_Bit1) == 1){	//Switches 0 1 
    RS422Serial.begin(9600);											//Set NMEA Baud to 9600
  }
  if (digitalRead(Config_Bit0) == 1 && digitalRead(Config_Bit1) == 1){	//Switches 1 1 		
    RS422Serial.begin(19200);											//Set NMEA Baud to 19200;
  }
}

void loop() {						   //Function will loop continuoisly to check link status and contents of fibre UART input buffer
  if (digitalRead(Link_Stat) == 0 ) {  //Link Status 'LOW' detected - link down
    digitalWrite(Link_LED, LOW);	   //Disable LED Link 'ok' indication
    digitalWrite(Link_Fail, HIGH);	   //Set Link fault output 'HIGH' - LED + Relay
  }
  else {							   //Link status other than 'LOW' detected
    digitalWrite(Link_LED, HIGH);	   //Enable LED Link 'ok' indication
    digitalWrite(Link_Fail, LOW);	   //Set Link fault output 'LOW' - LED + Relay
  }
  while (Serial.available() > 0) {	   //Will check contents of fibre UART input buffer, if any data is in the buffer -> enter loop
    digitalWrite(RX_LED, HIGH);		   //Set Rx LED inidcation 'HIGH'
    rx_byte = Serial.read();		   //Read contents of Fibre UART input buffer at 19200 baud and place contents into rx_byte
    RS422Serial.print(rx_byte);		   //Re-transmit rx_byte out the software UART to the max485s at the configured baud rate 
    }
   digitalWrite(RX_LED, LOW);		   //If not in the reciving loop, set Rx LED indication 'LOW'
   }
