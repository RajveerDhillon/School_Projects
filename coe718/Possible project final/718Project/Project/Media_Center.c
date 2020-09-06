#include <LPC17xx.H>
#include "string.h"
#include "GLCD.h"
#include "LED.h"
#include "KBD.h"
#include "Media_Center.h"
#include "Photo_Gallery.h"
#include "Game.h"
#include "usbdmain.h"
#include "usb.h"
#include "usbcfg.h"
#include "usbhw.h"
#include "usbcore.h"
#include "usbaudio.h"
#include "type.h"

#define __FI        1
#define DELAY_2N		18

int sel=1;
int music=0;
int k;

void delay (int cnt) {
  cnt <<= DELAY_2N;
  while (cnt--);
}

void MP3_Player2 (void){
		USB_Connect(TRUE);
    NVIC_EnableIRQ(TIMER0_IRQn);
    NVIC_EnableIRQ(USB_IRQn);
		
		while( 1 ){
			if (get_button() == KBD_LEFT){
				Media_Center();
			}
		}
}

int main (void) {                                           
	
  LED_Init ();
  GLCD_Init();
	KBD_Init();	
	
	GLCD_Clear(Blue);  
	GLCD_SetBackColor(Blue);		
	GLCD_SetTextColor(White);
	GLCD_DisplayString(4, 4, __FI,(unsigned char*) "PUSH JOYSTICK");		
	GLCD_DisplayString(5, 6, __FI,(unsigned char*) "TO BEGIN:");

	while (1) {
		if (get_button() ==  KBD_SELECT){
			Media_Center();
		}
	}
}

void Media_Center(){

	GLCD_Clear(Magenta);  
	GLCD_SetBackColor(Magenta);	 	
	GLCD_SetTextColor(White);
	GLCD_DisplayString(1, 0, __FI,(unsigned char*)"    MEDIA CENTER     ");
	GLCD_DisplayString(2, 0, __FI,(unsigned char*)"  	 RAJ    ");
		
	GLCD_SetTextColor(White);	
	GLCD_DisplayString(4, 0, __FI,(unsigned char*)"    PHOTO GALLERY");
	GLCD_DisplayString(5, 0, __FI,(unsigned char*)"    MP3 PLAYER");		
	GLCD_DisplayString(6, 0, __FI,(unsigned char*)"    GAME");		
	GLCD_DisplayString(26, 15, 0,(unsigned char*) "Use Joystick Up/Down");		
	GLCD_DisplayString(27, 15, 0,(unsigned char*) "Select = Push, Back = <- ");
  
	while (1) {               

		if (get_button() ==  KBD_UP){
				sel--;
				if (sel == 1){
					GLCD_SetTextColor(White);
					GLCD_DisplayString(5, 0, __FI,(unsigned char*)"    MP3 PLAYER");
					GLCD_DisplayString(6, 0, __FI,(unsigned char*)"    GAME");
					delay(5);
				}
				else if (sel == 2){
					GLCD_SetTextColor(White);
					GLCD_DisplayString(4, 0, __FI,(unsigned char*)"    PHOTO GALLERY");
					GLCD_DisplayString(6, 0, __FI,(unsigned char*)"    GAME");
					delay(5);					
				}
				else if (sel == 3){
					GLCD_SetTextColor(White);
					GLCD_DisplayString(4, 0, __FI,(unsigned char*)"    PHOTO GALLERY");
					GLCD_DisplayString(5, 0, __FI,(unsigned char*)"    MP3 PLAYER");
					delay(5);	
				}
				else if (sel == 0){
					sel = 4;
				}
				
			
		}	else if (get_button() ==  KBD_DOWN){
				sel++;
				if (sel == 1){
					GLCD_SetTextColor(White);
					GLCD_DisplayString(5, 0, __FI,(unsigned char*)"    MP3 PLAYER");
					GLCD_DisplayString(6, 0, __FI,(unsigned char*)"    GAME");
					delay(5);
				}
				else if (sel == 2){
					GLCD_SetTextColor(White);
					GLCD_DisplayString(4, 0, __FI,(unsigned char*)"    PHOTO GALLERY");
					GLCD_DisplayString(6, 0, __FI,(unsigned char*)"    GAME");
					delay(5);					
				}
				else if (sel == 3){
					GLCD_SetTextColor(White);
					GLCD_DisplayString(4, 0, __FI,(unsigned char*)"    PHOTO GALLERY");
					GLCD_DisplayString(5, 0, __FI,(unsigned char*)"    MP3 PLAYER");
					delay(5);	
				}
				else if (sel == 4){
					sel = 0;
				}
	
		} else if (get_button() ==  KBD_SELECT){
				if (sel == 1){
					Photo_Gallery();
				}
				else if (sel == 2){
					GLCD_Clear(Purple);  			
					GLCD_SetBackColor(Purple);		
					GLCD_SetTextColor(White);		
					GLCD_DisplayString(4, 2, __FI,(unsigned char*) "  AUDIO");
					GLCD_DisplayString(5, 4, __FI,(unsigned char*) "STREAMING...");
					GLCD_DisplayString(26, 20, 0,(unsigned char*)  "Go Back = <-");						
					if(music == 0){
						MP3_Player ();
					}  
					else if (music == 1) { 
						MP3_Player2 ();
					}					
				}
				else if (sel == 3){
						Game_Check();
				}	
		}
		
		switch(sel) {
			case 1:
				GLCD_SetTextColor(Blue);
				GLCD_DisplayString(4, 0, __FI,(unsigned char*)"    PHOTO GALLERY");
        break;
      case 2:
				GLCD_SetTextColor(Blue);
				GLCD_DisplayString(5, 0, __FI,(unsigned char*)"    MP3 PLAYER");
        break;
      case 3:
				GLCD_SetTextColor(Blue);
				GLCD_DisplayString(6, 0, __FI,(unsigned char*)"    GAME");	
        break;	
		}		
  }
}	
