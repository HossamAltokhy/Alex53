#include "DIO.h"

#include <avr/io.h>

#define F_CPU 16000000UL
#include <util/delay.h>

#define BUZZER PB0

void init_Buzzer(){
    setPINB_DIR(BUZZER, PinOut);
}
void Buzzer_ON(){
    setPINB_Val(BUZZER, ON);
}
void Buzzer_OFF(){
    setPINB_Val(BUZZER, OFF);
}
void Buzzer_Alarm(){
    setPINB_Val(BUZZER, ON);
    _delay_ms(500);
    setPINB_Val(BUZZER, OFF);
    _delay_ms(500);
}