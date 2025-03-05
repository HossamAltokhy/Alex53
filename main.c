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


int result[4] = {0, 0, 0, 0};
int index = 0;

ISR(ADC_vect) {

    // fact >>> ADIF == 1

    char str[] = "Temp";
    int oldValue = result[index];
    result[index] = LM35_read();


    if (oldValue != result[index]) {
        LCD4_clear();
        LCD4_str(str);
        LCD4_num(index);
        LCD4_write(':');
        LCD4_num(result[index]);
    }



}

int main(void) {
    /* Replace with your application code */
    // initializations

    init_BTNs();
    init_LCD4();


    //    init_ADC(ADC_CH0, ADC_PS_128, ADC_REF_AREF);
    init_LM35_with_INT(LM35_pin0);




    // Enable Global Interrupt
    sei();

    while (1) {

        if (BTNs_isPressed(BTN1)) {
            if (index > 0)
                index--;

            LM35_CH(index);
            _delay_ms(200);
        } else if (BTNs_isPressed(BTN2)) {
            if (index < 3)
                index++;
            LM35_CH(index);

            _delay_ms(200);
        } else {
            ADC_SC();

        }


        _delay_ms(100);


    }
}
