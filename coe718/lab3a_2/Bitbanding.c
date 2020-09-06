/*----------------------------------------------------------------------------
 * Project Name:    bitbanding.c
 * Name: Moaiz Ahmed
 * Purpose: LED Flasher
 * Note(s): __USE_LCD   - enable Output on LCD, uncomment #define in code to use
 *  				for demo (NOT for analysis purposes)
 *----------------------------------------------------------------------------
 * Copyright (c) 2008-2011 Keil - An ARM Company.
 * Name: Anita Tino
 *----------------------------------------------------------------------------*/

#include <stdio.h>
#include "LPC17xx.H"                       
#include "GLCD.h"
#include "LED.h"

#include "KBD.h"

#define __FI        1                      /* Font index 16x24               */
#define __USE_LCD   0										/* Uncomment to use the LCD */

//ITM Stimulus Port definitions for printf /
#define ITM_Port8(n)    (*((volatile unsigned char *)(0xE0000000+4*n)))
#define ITM_Port16(n)   (*((volatile unsigned short*)(0xE0000000+4*n)))
#define ITM_Port32(n)   (*((volatile unsigned long *)(0xE0000000+4*n)))

#define DEMCR           (*((volatile unsigned long *)(0xE000EDFC)))
#define TRCENA          0x01000000


//Bit Bandi
#define LED_P1B28 (*((volatile unsigned long*)0x233806F0))
#define LED_P2B6 (*((volatile unsigned long*)0x23380A98))

//From bitband.c

#define ADDRESS(x)    (*((volatile unsigned long *)(x)))
#define BitBand(x, y) 	ADDRESS(((unsigned long)(x) & 0xF0000000) | 0x02000000 |(((unsigned long)(x) & 0x000FFFFF) << 5) | ((y) << 2))


//struct __FILE { int handle;  };
//FILE __stdout;
//FILE __stdin;

//int fputc(int ch, FILE *f) {
//  if (DEMCR & TRCENA) {
//    while (ITM_Port32(0) == 0);
//    ITM_Port8(0) = ch;
//  }
//  return(ch);
//}
/////////////////////////////////////////////////////////

//char c[10];
//char text[20];
//volatile unsigned long * bitx;

//void delay(){
//		int i=0;
//		while (i<10000000){
//			i=i+1;
//		}
//	}


///*----------------------------------------------------------------------------
//  Main Code
// *----------------------------------------------------------------------------*/
//int main (void) {
//  
//uint16_t kbd_val = 0, kbd_val_ = 0xFFFF;

//  LED_Init();                                /* LED Initialization            */
//	KBD_Init();																 /* KBD Initialization            */

//#ifdef __USE_LCD
//  GLCD_Init();                               /* Initialize graphical LCD (if enabled */

//  GLCD_Clear(Black);                         /* Clear graphical LCD display   */
//  GLCD_SetBackColor(Black);
//  GLCD_SetTextColor(Green);
//	
//  GLCD_DisplayString(0, 0, __FI, "     COE718 Lab2    ");
//	
//	GLCD_SetTextColor(Green);
//	
//  GLCD_DisplayString(1, 0, __FI, "      Lab 2      ");
//  GLCD_DisplayString(2, 0, __FI, "    Push 4 CMD:     ");
//	
//  GLCD_SetBackColor(Black);
//  GLCD_SetTextColor(Green);
//#endif

//  
//while (1) {                                /* Loop forever                  */
//	while(1) {
//    kbd_val = get_button();
//		if(kbd_val != 0x00){
//			LED_Clear();
//			
//			 if(kbd_val == KBD_LEFT){
//			  sprintf(text,"%s","Masking      ");
//				sprintf(c,"%s","Pt1 Bit 28&2        ");
//				LPC_GPIO1->FIOPIN |= 1<<28;
//			  LPC_GPIO2->FIOPIN |= 1<<2;
//			  delay();
//			  LPC_GPIO1->FIOPIN ^= 1<<28;
//			  LPC_GPIO2->FIOPIN ^= 1<<2;
//				break;
//			}
//			else if(kbd_val == KBD_RIGHT){
//				sprintf(text,"%s","Function     ");
//				sprintf(c,"%s","Pt1 Bit 28           ");
//				bitx = &BitBand(&LPC_GPIO1->FIOPIN1, 28);		
//				*bitx = 1;
//				delay();
//				*bitx = 0;
//				break;
//			}
//			else if(kbd_val == KBD_UP){
//				sprintf(text,"%s","Banding     ");
//				sprintf(c,"%s","Pt1 Bit 28&6 ");
//				LED_P1B28 = 1;
//				LED_P2B6 = 1;
//				delay();
//				LED_P1B28 = 0;
//		   	LED_P2B6 = 0;
//				break;
//			}
//				
//		if (kbd_val ^ kbd_val_) {                  /* AD value changed              */
//      kbd_val_ = kbd_val;
//		}
// #ifdef __USE_LCD
//     GLCD_SetTextColor(Purple);
//		 GLCD_DisplayString(4,  5, __FI,  (unsigned char *)text);
//     GLCD_DisplayString(7,  4, __FI,  (unsigned char *)c);
//		 			
//#endif
//    }
//	}
//}
//	 }
