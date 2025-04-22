/* 
 * File:   AT24C16B.h
 * Author: hossa
 *
 * Created on April 21, 2025, 9:58 PM
 */

#ifndef AT24C16B_H
#define	AT24C16B_H

#define AT24C16B_ADDRESS_W 0xA0 // 10100000
#define AT24C16B_ADDRESS_R 0xA1 // 10100001


void init_AT24C16B();

char MM_AT24C16B_read(short address);
char MM_AT24C16B_read_Current();
void MM_AT24C16B_write(short address, char data);

#endif	/* AT24C16B_H */

