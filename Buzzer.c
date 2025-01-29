#include "DIO.h"

#include <avr/io.h>

#define F_CPU 16000000UL
#include <util/delay.h>
#include "DIO.h"
#include "Buzzer.h"


void init_Buzzer(){
    DIO_DIR_PINx(BUZZER_DIR, BUZZER, OUTPUT);
}
void Buzzer_ON(){
    DIO_SET_PINx(BUZZER_DIR, BUZZER);
}
void Buzzer_OFF(){
    DIO_RESET_PINx(BUZZER_DIR, BUZZER);
}
void Buzzer_Alarm(){
    DIO_SET_PINx(BUZZER_DIR, BUZZER);
    _delay_ms(500);
    DIO_RESET_PINx(BUZZER_DIR, BUZZER);
    _delay_ms(500);
}