/*
|--------------------------------------------------------------------------------------------|
|                        --NMEA 0183 OPTICAL LINK Tx MODULE--                                |
|                                                                                            |
|                                                                                            |
|  Project        NMEA_FO.proj                                                               |
|  Program Name 	Tx_Channel_v1.0.ino                                                        |
|  Author			    Thomas Spires 												                                  	 |
|															                                                               |
|  Author Info:                                                                              |
|  Firmware to be written to U1,4,6,9 (ATMEGA328P) on Tx PCB: refer to KiCAD .kicad_pcb      |
|  "TxSch.kicad_pcb"                 USRNOTE:** Channel uC's TO BE PROGRAMMED OFF BOARD  **  |
|                                                                                            |
|  Revision Release Info:                                                                    |
|  20181217 21:44    Tspires      1.0      Initial Deployment  				               				 |
|                   																                                    		 |
|--------------------------------------------------------------------------------------------|
*/

#include <Wire.h>				//include Microchip I2C hex files to set I2C registers

//Initialise Registers & Interfaces

void setup() {
  Wire.begin(1);                //Initialise I2C Interface, join bus as slave (addr 1 - Channel A)
  Wire.onRequest(requestEvent);	//When an I2C read instruction is Rx'd, call requestEvent Function
  Wire.onReceive(get_config);	//When a I2C message is written to regisiters - Should only be on startup 
  pinMode(A3, OUTPUT);			//Set GPIO registers for buffer flag output on Pin A3

}

// Declare Global Variables
				
char rx_str[128];				//Initialise a 128 byte ACSII array, to be used as NMEA scentence buffer. 
int x = 0;						//Initialise an intiger x, to be used to reference bytes in the array above
byte c = 0;						//Initialise a byte, to inidcate weather configuration from master has been applied

//Function will be called when an I2C read instruction is Rx'd from master on boot

void get_config() {             
  while (Wire.available() > 0) {		//Read contents of I2C buffer
    c = Wire.read();					//Place contents of I2C buffer into local variable C
  }
  switch(c) {    						//Set hardware UART baud depending on configuration byte Rx'd              
    case 1:
      Serial.begin(2400);				//Set hardware UART regtisters for 2400bps
      return;
    case 2:
      Serial.begin(4800);				//Set hardware UART regtisters for 4800bps
      return;
    case 3:
      Serial.begin(9600);				//Set hardware UART regtisters for 9600bps
      return;
    case 4:
      Wire.end();						//If channel is to be disabled, close I2C interface
      Ch_Disable();						//Entre Idle loop
    default:
      get_config();
  }    
}

void Ch_Disable() {						//Idle loop function for channel disabled
  delay(100);
  Ch_Disable();  								
}
 
//Main loop

void loop() {							
  if (c == 0) {							//If no config Rx'd from master, call get_config function and wait	
    get_config();						//call get_config function
  }
  if (Serial.available() > 0){			//Execute below if NMEA bytes are Rx'd in the UART buffer
      rx_str[x] = Serial.read();		//Read first byte in UART buffer and place into position x in rx_str array
      if (rx_str[x] == '\n') {			//When the end of line ASCII character is Rx'd, set buffer flag high
        digitalWrite(A3, HIGH);			//Set buffer flag High, inidicating NMEA sentence waiting
      }
      x = x + 1;						//Increment to next byte in array if not at end of NMEA sentence. 
  }
}
  
void requestEvent() 	{				//When an I2C 'poll' message is Rx'd from master
  for (int i = 0; i <= 128; i++) {		//Perform below instruction 128 times (length of buffer array)
    Wire.write(rx_str[i]);				/*Send byte from array position i in the buffer, out over I2C 
    									  to master */
  }			

//Once all 128 bytes have been Tx'd to master

  rx_str[128] = {};						//Set rx_str array to null					
  x = 0;								//reset array write position
  digitalWrite(A3, LOW);				//As no NMEA sentence waiting, set buffer flag LOW
}
