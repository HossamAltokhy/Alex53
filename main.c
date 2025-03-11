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
#include "timers.h"


ISR(TIMER0_OVF_vect){
    
    // 
    static int count;
    count++;
    
    if(count == 61){
        LED_TOG(LED1);
        count = 0;
    }
    
    
    
}

int main(){
    
    init_LEDs();
    
    init_timer0(TIMER_MODE_NORMAL, TIMER_CLOCK_SELECT_PS_1024);
    
    sei();
    while(1){
        
       
    }
    
    return 0;
}