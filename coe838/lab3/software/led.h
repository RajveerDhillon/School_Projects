/*
 * led.h
 *
 *  Created on: 2014-11-16
 * 	Adapted from the HEX_LED_FPGA Altera example
 */

#ifndef LED_H_
#define LED_H_

void LEDR_LightCount(unsigned char LightCount);
void LEDR_OffCount(unsigned char OffCount);
void LEDR_AllOn(void);
void LEDR_AllOff(void);



#endif /* LED_H_ */
