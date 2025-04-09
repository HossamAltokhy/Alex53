/* 
 * File:   25AA020A.h
 * Author: hossa
 *
 * Created on April 9, 2025, 10:03 PM
 */


#ifndef MEM_25AA020A_H
#define MEM_25AA020A_H

#define WRITE_INSTUCTION    0x02
#define READ_INSTUCTION     0x03
#define WREN_INSTUCTION     0x06


void init_MEM_25AA020();
void MEM_25AA020_write(char address, char data);

char MEM_25AA020_read(char address);

void MEM_25AA020_WREN();
void MEM_25AA020_CS_enable();
void MEM_25AA020_CS_disable();
#endif

