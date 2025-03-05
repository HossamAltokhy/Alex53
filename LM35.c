#include "ADC.h"
#include "LM35.h"

void init_LM35(char ADC_CH) {
    init_ADC(ADC_CH, ADC_PS_128, ADC_REF_AREF);
}

void init_LM35_with_INT(char ADC_CH) {
    init_ADC(ADC_CH, ADC_PS_128, ADC_REF_AREF);
    LM35_Interrupt_enable();
}

void LM35_CH(char ADC_CH){
    ADC_select_CH(ADC_CH);
}

int LM35_sample_read() {
    ADC_SC();
    ADC_wait();
    return ADC_read() / 10.0;
}

int LM35_read() {
    return ADC_read() / 10.0;
}

void LM35_Interrupt_enable(){
    ADC_INT_enable();
}
