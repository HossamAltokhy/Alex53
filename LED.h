/* 
 * File:   LED.h
 * Author: hossa
 *
 * Created on January 29, 2025, 8:56 PM
 */

#ifndef LED_H
#define	LED_H



#define LED1    PB3
#define LED1_DIR    PORTx_B

#define LED2    PC2
#define LED2_DIR    PORTx_C

#define LED3    PC7
#define LED3_DIR    PORTx_C

#define LED4    PD6
#define LED4_DIR    PORTx_D



void init_LEDs();
void LED_ON(char LED);
void LED_OFF(char LED);

#endif	/* LED_H */

