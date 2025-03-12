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


//ISR(TIMER0_OVF_vect){

int  sec,
            min,
            hour;
ISR(TIMER0_COMP_vect) {

    // 
    static int count;
           

    count++;

    // 1 second code
    if (count == 125) {
        sec++;
        if (sec == 60) {
            sec = 0;
            min++;
            if (min == 60) {
                min = 0;
                hour++;
                if (hour == 24) {
                    hour = 0;
                }
            }
        }
        count = 0;
    }






}

int main() {

    init_BTNs();
    init_LCD4();

    init_timer0(TIMER_MODE_CTC, TIMER_CLOCK_SELECT_PS_1024);
    Timer0_set_OCR0(125);
    Timer0_CTC_set_CMP(CMP_MODE_TOGGLE);

    sei();
    while (1) {

        if(BTNs_isPressed(BTN1)){
            
            if(OCR0 < 245){
                OCR0 += 10;
            }
            _delay_ms(200);
        }
        if(BTNs_isPressed(BTN2)){
            
            if(OCR0 > 10){
                OCR0 -= 10;
            }
            _delay_ms(200);
        }
        
        LCD4_clear();
        LCD4_num(OCR0);
        _delay_ms(50);
    }

    return 0;
}