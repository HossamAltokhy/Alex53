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
#include "SPI.h"
#include "25AA020A.h"
#include "TWI.h"

#define OWN_ADDRESS 0x03 

// SLAVE Address 0x07 ,, R =1 , W =0
#define SLA1_W     0x0E  // 00001110
#define SLA1_R     0x0F
// SLAVE Address 0x07 ,, R =1 , W =0
#define SLA2_W     0x10  // 00010000
#define SLA2_R     0x11

int main() {


    DDRA = 0xFF;
    _delay_ms(20);
    init_TWI(OWN_ADDRESS); // 00000011

    _delay_ms(50);
    
    PORTA = TWI_MR(SLA1_R);
    
    while (1) {
        _delay_ms(50);

    }
    return 0;
}