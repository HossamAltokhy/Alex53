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



int main() {

    char data = 0;
    DDRA = 0xFF;
    _delay_ms(20);
    
    init_MEM_25AA020();
    
    MEM_25AA020_WREN();
    
    
    
    while (1) {
        
        data  = MEM_25AA020_read(0x07);
        
        PORTA = data;
       
        MEM_25AA020_write(0x07, 0xAA);        
    }
    return 0;
}