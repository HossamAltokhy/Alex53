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
#include "ADC.h"
#include "LM35.h"



int main(void) {
    /* Replace with your application code */
    // initializations
   
    init_LCD4();
    
//    init_ADC(ADC_CH0, ADC_PS_128, ADC_REF_AREF);
    init_LM35(LM35_pin0);
    
    while (1) {

        
        int x = LM35_read();
        
        LCD4_clear();
        LCD4_goto(0,0);
        LCD4_num(x);
//        _delay_ms(5);
        
        LM35_CH(LM35_pin1);

        int y = LM35_read();
        
        
        LCD4_goto(1,0);
        LCD4_num(y);
        _delay_ms(200);
        LM35_CH(LM35_pin0);
    }
}
