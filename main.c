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



int main(){
    
    
    init_ADC(ADC_CH0_CH1_G1, ADC_PS_128, ADC_REF_AREF);
    
    init_LCD4();
    
    
    while(1){
        
        ADC_SC();
        int diff = ADC_read();
        
        
        LCD4_clear();
        LCD4_num(diff);
        
        _delay_ms(150);
    }
    
    return 0;
}