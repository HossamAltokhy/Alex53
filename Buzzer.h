/* 
 * File:   Buzzer.h
 * Author: hossa
 *
 * Created on January 29, 2025, 8:28 PM
 */

#ifndef BUZZER_H
#define	BUZZER_H


#define BUZZER PB0
#define BUZZER_DIR PORTx_B

void init_Buzzer();
void Buzzer_ON();
void Buzzer_OFF();
void Buzzer_Alarm();


#endif	/* BUZZER_H */

