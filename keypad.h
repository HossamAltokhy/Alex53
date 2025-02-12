/* 
 * File:   keypad.h
 * Author: hossa
 *
 * Created on February 12, 2025, 10:23 PM
 */

#ifndef KEYPAD_H
#define	KEYPAD_H

#include "DIO.h"
#include <avr/io.h>


// PIN mapping
#define ROWs_DIR  PORTx_A
#define ROW1      PA1
#define ROW2      PA2
#define ROW3      PA3

#define COLs_DIR  PORTx_D
#define COL1      PD2
#define COL2      PD3
#define COL3      PD7


void init_Keypad();
int getKey();

#endif	/* KEYPAD_H */

