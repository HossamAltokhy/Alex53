#include <avr/io.h>
#define F_CPU 16000000UL
#include <util/delay.h>

#include "_7SEG.h"
#include "DIO.h"

int num[] = {
    0x3F, // =0
    0x06, // =1  
    0x5B, // =2
    0x4F, // =3
    0x66, // =4
    0x6D, // =5
    0x7D, // =6
    0x07, // =7
    0x7F, // =8
    0x6F, // =9
    
};
        

void init_7SEG() {
    DIO_DIR_PORTx(_7SEG_DIR, OUTPUT_PORT);
    DDRA = 0xFF;
    _delay_ms(10);
    DIO_DIR_PINx(_7SEG_EN_DIR, _7SEG_1_EN, OUTPUT);
    DIO_DIR_PINx(_7SEG_EN_DIR, _7SEG_2_EN, OUTPUT);
    _delay_ms(5);
    // Enable 7 Segments No1
    _7SEG_1_ON();
    _delay_ms(5);
    // Enable 7 Segments No2
    _7SEG_2_ON();
    _delay_ms(5);
    
}

void _7SEG_1_ON(){
    DIO_SET_PINx(_7SEG_EN_DIR, _7SEG_1_EN);
    _delay_ms(2);
}
void _7SEG_2_ON(){
    DIO_SET_PINx(_7SEG_EN_DIR, _7SEG_2_EN);
    _delay_ms(2);
}

void _7SEG_1_OFF(){
    DIO_RESET_PINx(_7SEG_EN_DIR, _7SEG_1_EN);
    _delay_ms(2);
}
void _7SEG_2_OFF(){
    DIO_RESET_PINx(_7SEG_EN_DIR, _7SEG_2_EN);
    _delay_ms(2);
}
void _7SEG_ALL_OFF(){
   
}



void _7SEG_1_write(int val){
    _7SEG_2_OFF();
    
    PORTA = 0x00;
    _delay_ms(1);
    DIO_SET_PORTx(_7SEG_DIR, num[val]);
    _delay_ms(1);
    _7SEG_1_ON();
    _delay_ms(2);
}
void _7SEG_2_write(int val){
    _7SEG_1_OFF();
    PORTA = 0x00;
    _delay_ms(1);
    DIO_SET_PORTx(_7SEG_DIR, num[val]);
    _delay_ms(1);
    _7SEG_2_ON();
    _delay_ms(2);
}

void _7SEG_write(int num){
    
}
