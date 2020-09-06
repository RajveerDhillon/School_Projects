#include <LPC17xx.H>
#include "string.h"
#include "GLCD.h"
#include "LED.h"
#include "KBD.h"
#include "Media_Center.h"
#include "Photo_Gallery.h"
#include "Photo_Viewer.h"
#include "usbdmain.h"
#include "Game.h"

#define __FI        1                      
#define DELAY_2N    18

int k;

//This function creates a delay
void delay (int cnt) {
  cnt <<= DELAY_2N;
  while (cnt--);
}

int main (void) {                                           
	
  LED_Init ();
  GLCD_Init();
	KBD_Init();	
	
	GLCD_Clear(White);  
	GLCD_SetBackColor(White);		
	GLCD_SetTextColor(Black);
	GLCD_DisplayString(4, 4, __FI,(unsigned char*) "PRESS SELECT");		
	GLCD_DisplayString(5, 6, __FI,(unsigned char*) "TO BEGIN:");

	while (1) {
		if (get_button() ==  KBD_SELECT){
			for (k=0;k<2;k++){		
				GLCD_Clear(Black);  			
				GLCD_SetBackColor(Black);		
				GLCD_SetTextColor(White);		
				GLCD_DisplayString(5, 5, __FI,(unsigned char*) "LOADING.");
					
				LED_On(0); delay(5);
				LED_Off(0);
				LED_On(1); delay(5);
				LED_Off(1);
				LED_On(2); delay(5);
				LED_Off(2);				
				LED_On(3); delay(5);
				LED_Off(3);				
				LED_On(4); delay(5);
				LED_Off(4);				
				LED_On(5); delay(5);
				LED_Off(5);
				LED_On(6); delay(5);
				LED_Off(6);
				LED_On(7); delay(5);
				LED_Off(7);	
				GLCD_DisplayString(5, 5, __FI,(unsigned char*) "LOADING..");

				LED_On(7); delay(5);
				LED_Off(7);
				LED_On(6); delay(5);
				LED_Off(6);
				LED_On(5); delay(5);
				LED_Off(5);				
				LED_On(4); delay(5);
				LED_Off(4);				
				LED_On(3); delay(5);
				LED_Off(3);			
				LED_On(2); delay(5);
				LED_Off(2);
				LED_On(1); delay(5);
				LED_Off(1);
				LED_On(0); delay(5);
				LED_Off(0);	
				GLCD_DisplayString(5, 5, __FI,(unsigned char*) "LOADING...");
			}
			Media_Center();
		}
	}
}
