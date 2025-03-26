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


char str[]= "Hello Alex53\r";

int main() {

    
    init_LEDs();
    
    init_UART(baudrate_9600);
    
    char x = 0;
    while (1) {
        
        x = UART_receive();
        switch(x){
            case 'A':
            case 'a':
                LED_ON(ALL_LEDs);
                break;
            case 'B':
            case 'b':
                LED_OFF(ALL_LEDs);
                break;
            default:
                //do nothing
                break;
        }
        
        _delay_ms(300);
    }
    return 0;
}