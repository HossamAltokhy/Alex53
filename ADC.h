/* 
 * File:   ADC.h
 * Author: hossa
 *
 * Created on March 3, 2025, 9:42 PM
 */

#ifndef ADC_H
#define	ADC_H



#define ADC_CH0    0
#define ADC_CH1    1
#define ADC_CH2    2
#define ADC_CH3    3
#define ADC_CH4    4
#define ADC_CH5    5
#define ADC_CH6    6
#define ADC_CH7    7


//#define ADC_PS_2    0
#define ADC_PS_2    1
#define ADC_PS_4    2
#define ADC_PS_8    3
#define ADC_PS_16   4
#define ADC_PS_32   5
#define ADC_PS_64   6
#define ADC_PS_128  7

#define ADC_REF_AREF             0
#define ADC_REF_AVCC             1
#define ADC_REF_INTERNAL_2_56V   3
/**
 * select CH,
 * select Freq,
 * select REF
 * ......>>> MODE 
 */
void init_ADC(char ADC_CH, char ADC_FREQ, char ADC_REF);
void ADC_enable();
void ADC_disable();

void ADC_select_CH(char ADC_CH);
void ADC_select_FREQ(char ADC_FREQ);
void ADC_select_REF(char ADC_REF);

void ADC_SC();
void ADC_wait();


#endif	/* ADC_H */

