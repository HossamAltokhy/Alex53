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
#include "LCD4.h"

int main(void) {
    /* Replace with your application code */
    // initializations
    init_LEDs();
    DIO_DIR_PINx(PORTx_D, PD2, INPUT);
    DIO_DIR_PINx(PORTx_D, PD3, INPUT);
    DIO_DIR_PINx(PORTx_D, PD7, INPUT);
    
  
    while (1) {

      
        if(DIO_READ_PINx(PORTx_D, PD2)){
            LED_OFF(LED1);
        }
        else{
            LED_ON(LED1);
        }
        
        if(DIO_READ_PINx(PORTx_D, PD3)){
            LED_OFF(LED2);
        }
        else{
            LED_ON(LED2);
        }
        
        if(DIO_READ_PINx(PORTx_D, PD7)){
            LED_OFF(LED3);
        }
        else{
            LED_ON(LED3);
        }




    }
}

