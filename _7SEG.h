/* 
 * File:   _7SEG.h
 * Author: hossa
 *
 * Created on February 5, 2025, 9:01 PM
 */

#ifndef _7SEG_H
#define	_7SEG_H
#include "DIO.h"


#define _7SEG_DIR   PORTx_A
#define _7SEG_a     0
#define _7SEG_b     1
#define _7SEG_c     2
#define _7SEG_d     3
#define _7SEG_e     4
#define _7SEG_f     5
#define _7SEG_g     6
#define _7SEG_dp    7


#define _7SEG_EN_DIR   PORTx_B
#define _7SEG_1_EN  PB1
#define _7SEG_2_EN  PB2


void init_7SEG();

void _7SEG_1_ON();
void _7SEG_2_ON();

void _7SEG_1_OFF();
void _7SEG_2_OFF();


void _7SEG_1_write(int num);
void _7SEG_2_write(int num);

void _7SEG_write(int num);

#endif	/* _7SEG_H */

