/* 
 * File:   TWI.h
 * Author: hossa
 *
 * Created on April 16, 2025, 9:17 PM
 */

#ifndef TWI_H
#define	TWI_H
#define OWN_ADDRESS 0x03
// Freq == TWBR  =18
// TWPS  >>> 1
// Its own slave address
void init_TWI(char SLAVE_ADDRESS);

char TWI_MT(char SLA_W, char data);

char TWI_MR(char SLA_R);

char TWI_SR();

char TWI_ST(char data);



char TWI_STA_COND();
char TWI_CALL_DEVICE(char SLA);
char TWI_SEND_DATA(char data);
void TWI_STO_COND();


#endif	/* TWI_H */

