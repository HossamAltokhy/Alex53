/* 
 * File:   TWI.h
 * Author: hossa
 *
 * Created on April 16, 2025, 9:17 PM
 */

#ifndef TWI_H
#define	TWI_H

// Freq == TWBR  =18
// TWPS  >>> 1
// Its own slave address
void init_TWI(char SLAVE_ADDRESS);

char TWI_MT(char SLA_W, char data);




char TWI_MR(char SLA_R);

char TWI_SR();

char TWI_ST(char data);

#endif	/* TWI_H */

