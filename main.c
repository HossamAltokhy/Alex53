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

#define LED_GREEN   0

int main(void) {
    /* Replace with your application code */

    init_Buzzer();
    
    while (1) {

        Buzzer_ON();
       
    }
}
