/*
 * seg7.h
 *
 *  Created on: 2014-11-16
 *	Adapted from the HEX_LED_FPGA Altera example
 */

#ifndef SEG7_H_
#define SEG7_H_

void SEG7_Clear(void);
void SEG7_Full(void);
void SEG7_Hex( unsigned long  Data, unsigned char point_mask);
void SEG7_Decimal( unsigned long  Data, unsigned char point_mask);
void SEG7_Number(void);
void SEG7_All_Number(void);
void display_msg();

#endif /* SEG7_H_ */
