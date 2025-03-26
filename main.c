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


ISR(USART_RXC_vect){
    
    char data = UDR;
    if(data == '\r'){
        LCD4_clear();
    }
    else{
     LCD4_write(data);   
    }
    
}


char str[]= "Hello Alex53\r";

int main() {

    
    init_ADC(ADC_CH0, ADC_PS_128, ADC_REF_AREF);
    init_LCD4();
    DIO_DIR_PINx(PORTx_B, PB0, OUTPUT);
    _delay_ms(50);
    init_UART(baudrate_9600);
    UART_RXCIE();
    
    sei();
    
    while (1) {
        
        ADC_SC();
        int data = ADC_read();
        UART_send_num(data);
        _delay_ms(200);
        UART_send('\r');
        _delay_ms(200);
        
       
        
    }
    return 0;
}