#define F_CPU 16000000UL

#include <avr/io.h>
#include "ADC.h"
#include "util/delay.h"

void init_ADC(char ADC_CH, char ADC_FREQ, char ADC_REF) {
    // Select Channel
    ADC_select_CH(ADC_CH);
    // Select Frequency
    ADC_select_FREQ(ADC_FREQ);
    // Select Reference
    ADC_select_REF(ADC_REF);
    // Enable ADC
    ADC_enable();
}

void ADC_enable() {
    // ADCSRA 
    ADCSRA |= (1 << ADEN);
}

void ADC_disable() {
    // ADCSRA
    ADCSRA &= ~(1 << ADEN);
}

void ADC_select_CH(char ADC_CH) {
    // ADMUX (MUX4:0)
    ADMUX &= 0xE0 // 11100000
    // ADMUX &= ~((1<<MUX4)|(1<<MUX3)|(1<<MUX2)|(1<<MUX1)|(1 << MUX0));
    ADMUX |= ADC_CH;
}
void ADC_select_FREQ(char ADC_FREQ){
    // ADCSRA
    ADCSRA &= 0xF8; // 11111000
    // DCSRA &= ~((1<<ADPS2)|(1<<ADPS1)|(1<<ADPS0));
    ADCSRA |= ADC_FREQ;
}
void ADC_select_REF(char ADC_REF){
//    ADMUX &= 0x3F; // 00111111
    ADMUX &= ~((1<<REFS1)|(1<<REFS0));
    ADMUX |= (ADC_REF << 6);
}

void ADC_SC(){
    // ADCSRA 
    ADCSRA |= (1<<ADSC);
}
void ADC_wait(){
    // wait till flag rises.....
    while(!(ADCSRA & (1<<ADIF)));
}

int ADC_read(){
    
    // ????
    return ADCW;
}
