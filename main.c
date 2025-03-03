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
#include "VButtons.h"
#include "_7SEG.h"
#include "LCD4.h"
#include "keypad.h"
#include "EXT_INT.h"

ISR(INT0_vect) {
    // Code INT0

    LED_TOG(LED1);
    
}



int main(void) {
    /* Replace with your application code */
    // initializations
    init_LEDs();
    
    init_INT0(Falling_Edge);

    // Set Enable Interrupt (Global)
    sei();

    while (1) {


    }
}
