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



#define LOW_LEVEL    0  // 11
#define ANY_L_CHANGE  1  // 11
#define FALLING_EDGE   2 // 11
#define RISING_EDGE  3  // 11

ISR(INT0_vect){
    
    
    LED_TOG(ALL_LEDs);
    
}


void init_INT0(char INT_MODE);
void init_INT1(char INT_MODE);

int main(void) {
    /* Replace with your application code */
    // initializations

    init_LEDs();
    
    init_INT0();
    
    // Enable Global Interrupt bit (SEI)
    sei();
    while (1) {


    }
}


void init_INT0(char INT_MODE){
    
    // Select MODE
    MCUCR &= ~((1<<ISC01)|(1<<ISC00));
    MCUCR |= INT_MODE;
//    switch(INT_MODE){
//        case RISING_EDGE:
//            
//            break;
//    }
    // Enable Individual INT0
    GICR |= (1<<INT0);
    
    
}
void init_INT1(char INT_MODE){
    
    // Select MODE
    MCUCR &= ~((1<<ISC11)|(1<<ISC10));
    MCUCR |= (INT_MODE<<2);
//    switch(INT_MODE){
//        case RISING_EDGE:
//            
//            break;
//    }
    // Enable Individual INT0
    GICR |= (1<<INT1);
    
    
}

