/*
 * File:   main.c
 * Author: hossa
 *
 * Created on January 27, 2025, 9:48 PM
 */

#define F_CPU 16000000UL

#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/io.h>
#include <stddef.h>

#include "DIO.h"
#include "Buzzer.h"
#include "LED.h"
#include "_7SEG.h"
#include "LCD4.h"
#include "keypad.h"
#include "EXT_INT.h"
#include "ADC.h"
#include "LM35.h"
#include "Button.h"
#define OCR0_Val    200
#include "timers.h"
#include "UART.h"
#include "SPI.h"
#include "25AA020A.h"
#include "TWI.h"
#include "AT24C16B.h"
#include "VButtons.h"
#include "myfreertos/include/task.h"



void EEPROM_write(short address, char data);

char EEPROM_read(short address);

 
void vTask1(void * para){
    
    // init
    
    
    while(1){
        // Repeated process....
        
    }
    
}


int main() {
    
    
    xTaskCreate(
            vTask1,
            "myTask1",
            4,
            NULL,
            1,
            NULL
            );
    xTaskCreate(
            vTask1,
            "myTask2",
            4,
            NULL,
            1,
            NULL
            );
    
    vTaskStartScheduler();
   
    while (1) {
      
      
    }
    return 0;
}

void EEPROM_write(short address, char data){
    // make sure EEWE is zero
    while(EECR & (1<<EEWE));
    
    // fill address register
    EEAR = address;
    
    // fill data register
    EEDR = data;
    
    // SET Master Write Enable Bit.
    EECR |= (1<<EEMWE);
    
    // SET Write Enable Bit.
    EECR |= (1<<EEWE);
    
    //while(!(EECR & (1<<EEWE)));
}

char EEPROM_read(short address){
    // make sure EEWE is zero
    while(EECR & (1<<EEWE));
    
    // fill address register
    EEAR = address;
    
    // SET Read Enable Bit.
    EECR |= (1<<EERE);
    
    
    return EEDR;
    
    
}