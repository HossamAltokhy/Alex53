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
#include "LCD8.h"

int main(void) {
    /* Replace with your application code */
    // initializations

    char str[] = "475";
    init_LCD8();

    
    int x = 100;
    
    while (1) {

        LCD8_clear();
        LCD8_num(x);
        _delay_ms(1000);
        x++;






    }
}

