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
#include "TWI.h"
#include "AT24C16B.h"


 



int main() {


    DDRA = 0xff;
    _delay_ms(5);
    init_AT24C16B();
    
    
    _delay_ms(500);
    
    MM_AT24C16B_write(0x00ff, 0xAA);
    
    _delay_ms(500);
    
    
    PORTA = MM_AT24C16B_read(0x00ff);
    
    while (1) {
      
    }
    return 0;
}