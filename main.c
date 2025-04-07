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



int main() {

    char x = 0;
    
    init_SPI(SPI_MASTER);
    
    _delay_ms(100);
    while (1) {
        
        _delay_ms(200);
        SPI_write(x);
        x++;
        
       
        
    }
    return 0;
}