#define F_CPU 16000000UL
#include <util/delay.h>
#include <avr/io.h>
#include "timers.h"
#include "DIO.h"

/**
 * 
 * @param TIMER_MODE
 * #define TIMER_MODE_NORMAL    0
#define TIMER_MODE_PWM       1
#define TIMER_MODE_CTC       2
#define TIMER_MODE_FPWM      3
 * @param TIMER_CLOCK_SELECT
 */
void init_timer0(char TIMER_MODE, char TIMER_CLOCK_SELECT){
    // select Timer Mode
    TCCR0 &= ~((1<<WGM01)|(1<<WGM00));
    
//    TCCR0 |= TIMER_MODE;
    
    switch(TIMER_MODE){
        case TIMER_MODE_NORMAL:
            //TCCR0 &= ~((1<<WGM01)|(1<<WGM00));
            TIMSK |= (1<<TOIE0);
            break;
        case TIMER_MODE_PWM:
            TCCR0 |= (1<<WGM00);
            break;
        case TIMER_MODE_CTC:
            TCCR0 |= (1<<WGM01);
            TIMSK |= (1<<OCIE0);
            Timer0_set_OCR0(255);
            break;
        case TIMER_MODE_FPWM:
            TCCR0 |= ((1<<WGM01)|(1<<WGM00));
            break;
    }
    
    // select Clock Source
//    TCCR0 &= 0xF8;   // 11111000
    //Timer OFF
    TCCR0 &= ~((1<<CS02)|(1<<CS01)|(1<<CS00));   // 11111000
    TCCR0 |= TIMER_CLOCK_SELECT;
    
    
    // Enable Interrupt
    // Timer Over Flow Interrupt Enable
//    TIMSK |= (1<<TOIE0);    
    
    
//    OCR0 = OCR0_Val;
    
    
    
}


void Timer0_set_OCR0(char val){
    OCR0 = val;
}

void Timer0_CTC_set_CMP(char CMP_MODE){
    // Set Direction of PIN OC0
    DIO_DIR_PINx(PORTx_B, PB3, OUTPUT);
    // Set Mode .. 
    TCCR0 &= ~((1<<COM01)|(1<<COM00));
    TCCR0 |= CMP_MODE<<4;
}

