/*
 * File:   main.c
 * Author: hossa
 *
 * Created on January 27, 2025, 9:48 PM
 */

#define F_CPU 16000000UL

#include <util/delay.h>

#include <avr/io.h>

#include "DIO.h"
#include "Buzzer.h"
#include "LED.h"
#include "VButtons.h"
#include "_7SEG.h"

int main(void) {
    /* Replace with your application code */
    // initializations

    init_7SEG();
    _delay_ms(500);
    
    
    DDRB  |= (1<<PB1)|(1<<PB2);
    PORTB |= (1<<PB1)|(1<<PB2);

    
    
    while (1) {
       
        _7SEG_1_write(1);
                
        _7SEG_2_write(2);
   
    }
}

