/* 
 * File:   LM35.h
 * Author: hossa
 *
 * Created on March 3, 2025, 10:23 PM
 */

#ifndef LM35_H
#define	LM35_H

#include "ADC.h"

#define LM35_pin0 ADC_CH0
#define LM35_pin1 ADC_CH1
#define LM35_pin2 ADC_CH2
#define LM35_pin3 ADC_CH3



void init_LM35(char ADC_CH);
void init_LM35_with_INT(char ADC_CH);
void LM35_CH(char ADC_CH);
int LM35_sample_read();
int LM35_read();
void LM35_Interrupt_enable();
#endif	/* LM35_H */

