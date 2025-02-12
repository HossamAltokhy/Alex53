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
#include "LCD4.h"
#include "keypad.h"

int main(void) {
    /* Replace with your application code */
    // initializations
    init_LEDs();
    init_LCD4();
    
    
    init_Keypad();
    while (1) {

//        LCD4_clear();
        LCD4_num(getKey());
        _delay_ms(200);
        
//        int x = getKey();
//        
//        if(x == 3){
//            LED_OFF(ALL_LEDs);
//            LED_ON(LED1);
//        }
//        else if(x==6){
//            LED_OFF(ALL_LEDs);
//            LED_ON(LED2);
//        }
//        else if(x==9){
//            LED_OFF(ALL_LEDs);
//            LED_ON(LED3);
//        }
//        else{
//            LED_OFF(ALL_LEDs);
//            LED_ON(LED4);
//        }


    }
}

