/* 
 * File:   Button.h
 * Author: hossa
 *
 * Created on February 12, 2025, 9:47 PM
 */

#ifndef BUTTON_H
#define	BUTTON_H

#include "DIO.h"




#define BTN1_DIR   PORTx_D
#define BTN2_DIR   PORTx_D
#define BTN3_DIR   PORTx_D

#define BTN1   PD2
#define BTN2   PD3
#define BTN3   PD7

void init_BTNs();
int BTNs_isPressed(char BTN);

#endif	/* BUTTON_H */

