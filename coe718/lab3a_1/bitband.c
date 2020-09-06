/*----------------------------------------------------------------------------
 * Project Name:    bitbanding.c
 * Name: Kishore Hareendran
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


#define __FI        1                      /* Font index 16x24               */
//#define __USE_LCD   0										/* Uncomment to use the LCD */

//ITM Stimulus Port definitions for printf /
#define ITM_Port8(n)    (*((volatile unsigned char *)(0xE0000000+4*n)))
#define ITM_Port16(n)   (*((volatile unsigned short*)(0xE0000000+4*n)))
#define ITM_Port32(n)   (*((volatile unsigned long *)(0xE0000000+4*n)))

#define DEMCR           (*((volatile unsigned long *)(0xE000EDFC)))
#define TRCENA          0x01000000


//Bit Bandi
//#define LED_P1B28 (*((volatile unsigned long*)0x233806F0))  //FIO1PIN: 0x2009C034
//#define LED_P2B6 (*((volatile unsigned long*)0x23380A98))   //FIO2PIN: 0x2009C054
#define LED_P1B31 (*((volatile unsigned long*)0x233806FC))   //FIO1PIN: 0x2009C034
#define LED_P2B2 (*((volatile unsigned long*)0x23380A88))   //FIO2PIN: 0x2009C054
#define LED_P2B5 (*((volatile unsigned long*)0x23380A94))   //FIO2PIN: 0x2009C054  ||||| (0x22000000 + (9C054 * 0x20))
//From bitband.c

#define ADDRESS(x)    (*((volatile unsigned long *)(x)))
#define BitBand(x, y) 	ADDRESS(((unsigned long)(x) & 0xF0000000) | 0x02000000 |(((unsigned long)(x) & 0x000FFFFF) << 5) | ((y) << 2))

#define ADCR_Bit24   (*((volatile unsigned long *)0x23180010))

volatile unsigned long r1 = 4;
volatile unsigned long r2 = 5;
volatile unsigned long r3 = 2;

volatile unsigned long rf;

struct __FILE { int handle;  };
FILE __stdout;
FILE __stdin;

int fputc(int ch, FILE *f) {
  if (DEMCR & TRCENA) {
    while (ITM_Port32(0) == 0);
    ITM_Port8(0) = ch;
  }
  return(ch);
}
/////////////////////////////////////////////////////////
	
//char c[10];
//char text[20];
//volatile unsigned long * bit;

//void delay(){
//	int c;
//	while (c <= 10000000){
//		c++;
//	}
//}

//void updateLCD (text, c){
//	 #ifdef __USE_LCD
//     GLCD_SetTextColor(Purple);
//		 GLCD_DisplayString(3,  2, __FI,  (unsigned char *)text);
//     GLCD_DisplayString(7,  2, __FI,  (unsigned char *)c);
//		 			
//	#endif
//}



//void maskMode(state){
//	
//	if (state == 1){
////		sprintf(c,"%s", "MASKING     ");
////		sprintf(text, "%s", "                ");
////		updateLCD (text,c);
//		LPC_GPIO1->FIOPIN |= 1<<29;
//		LPC_GPIO2->FIOPIN |= 1<<3;
//		delay();
//	}
//		
//	else if (state == 0){
//		
//		LPC_GPIO1->FIOPIN ^= 1<<29;
//		LPC_GPIO2->FIOPIN ^= 1<<3;
//	}
//	else {
//	}
//		
//}	

//void functionMode(state){
//	if (state == 1){
////		sprintf(c,"%s","FUNCTION    ");
////		sprintf(text, "                     ");
////		updateLCD (text,c);
//		bit = &BitBand(&LPC_GPIO1->FIOPIN1, 28);		
//		*bit = 1;
//		delay();
//	}
//	else if (state == 0){
//		*bit = 0;
//	}
//	else{
//	}
//}

//void bitBandMode (state){
//	if (state == 1){
////		sprintf(c,"%s","BIT BAND  ");
////		sprintf(text, "                     ");
////		updateLCD (text,c);
//		LED_P1B31 = 1;
//		LED_P2B2 = 1;
//		delay();
//		
//	}
//	else if (state == 0){
//		LED_P1B31 = 0;
//		LED_P2B2 = 0;
//	}
//	else{
//	}
//}




///*----------------------------------------------------------------------------
//  Main Code
// *----------------------------------------------------------------------------*/
//int main (void) {
//  

//  LED_Init();                                /* LED Initialization            */

//#ifdef __USE_LCD
//  GLCD_Init();                               /* Initialize graphical LCD (if enabled */

//  GLCD_Clear(White);                         /* Clear graphical LCD display   */
//  GLCD_SetBackColor(Blue);
//  GLCD_SetTextColor(Yellow);
//  GLCD_DisplayString(0, 0, __FI, "     COE718 LAB 2    ");
//	GLCD_SetTextColor(White);
//  GLCD_DisplayString(1, 0, __FI, "       BitBind.c     ");
//  GLCD_DisplayString(2, 0, __FI, "      LED LIGHTS     ");
//  GLCD_SetBackColor(White);
//  GLCD_SetTextColor(Blue);
//  GLCD_DisplayString(6, 0, __FI, "CONFIG:            ");
//#endif

//  
////while (1) {                                /* Loop forever                  */

//		LED_Clear();
//		maskMode(1);
//		delay();
//		maskMode(0);
//		delay();
//		functionMode(1);
//		delay();
//		functionMode(0);
//		delay();
//		bitBandMode(1);
//		delay();
//		bitBandMode(0);
//		delay();
////	}
//}

	 
