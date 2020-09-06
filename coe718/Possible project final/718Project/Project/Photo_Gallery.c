#include <LPC17xx.H>
#include "string.h"
#include "GLCD.h"
#include "LED.h"
#include "KBD.h"
#include "Media_Center.h"
#include "Photo_Gallery.h"
#include "Photo_Viewer.h"

#define __FI        1
#define DELAY_2N		18
int sel2=1;

void delay2 (int cnt) {
  cnt <<= DELAY_2N;
  while (cnt--);
}

void Photo_Gallery(){
	GLCD_Clear(Navy);  
	GLCD_SetBackColor(Navy);	
	GLCD_SetTextColor(White);	
	GLCD_DisplayString(3, 0, __FI,(unsigned char*)"  Monster Hunter   ");
	GLCD_DisplayString(4, 0, __FI,(unsigned char*)"  SSBU						  ");		
	GLCD_DisplayString(5, 0, __FI,(unsigned char*)"  Zelda BTW				");	
	GLCD_DisplayString(6, 0, __FI,(unsigned char*)"  Death Stranding	");			
	GLCD_DisplayString(26, 15, 0,(unsigned char*)"Use Joystick Up/Down");		
	GLCD_DisplayString(27, 15, 0,(unsigned char*)"Select= Push, Back=L");
  
	while (1) {               

		if (get_button() ==  KBD_UP){
				sel2--;
				if (sel2 == 1){
					GLCD_SetTextColor(White);
					GLCD_DisplayString(4, 0, __FI,(unsigned char*)"  SSBU						");
					GLCD_DisplayString(5, 0, __FI,(unsigned char*)"  Zelda BTW			");
					GLCD_DisplayString(6, 0, __FI,(unsigned char*)"  Death Stranding");					
					delay2(5);
				}
				else if (sel2 == 2){
					GLCD_SetTextColor(White);
					GLCD_DisplayString(3, 0, __FI,(unsigned char*)"  Monster Hunter	");
					GLCD_DisplayString(5, 0, __FI,(unsigned char*)"  Zelda BTW			");
					GLCD_DisplayString(6, 0, __FI,(unsigned char*)"  Death Stranding");		
					delay2(5);					
				}
				else if (sel2 == 3){				
					GLCD_SetTextColor(White);
					GLCD_DisplayString(3, 0, __FI,(unsigned char*)"  Monster Hunter	");
					GLCD_DisplayString(4, 0, __FI,(unsigned char*)"  SSBU						");
					GLCD_DisplayString(6, 0, __FI,(unsigned char*)"  Death Stranding");	
					delay2(5);	
				}
				else if (sel2 == 4){
					GLCD_SetTextColor(White);
					GLCD_DisplayString(3, 0, __FI,(unsigned char*)"  Monster Hunter	");
					GLCD_DisplayString(4, 0, __FI,(unsigned char*)"  SSBU						");
					GLCD_DisplayString(5, 0, __FI,(unsigned char*)"  Zelda BTW			");	
					delay2(5);	
				}	
				else if (sel2 == 0){
					sel2 = 5;
				}
			
		}	else if (get_button() ==  KBD_DOWN){
				sel2++;
				if (sel2 == 1){
					GLCD_SetTextColor(White);
					GLCD_DisplayString(4, 0, __FI,(unsigned char*)"  SSBU						");
					GLCD_DisplayString(5, 0, __FI,(unsigned char*)"  Zelda BTW			");
					GLCD_DisplayString(6, 0, __FI,(unsigned char*)"  Death Stranding");					
					delay2(5);
				}
				else if (sel2 == 2){
					GLCD_SetTextColor(White);
					GLCD_DisplayString(3, 0, __FI,(unsigned char*)"  Monster Hunter ");
					GLCD_DisplayString(5, 0, __FI,(unsigned char*)"  Zelda BTW			");
					GLCD_DisplayString(6, 0, __FI,(unsigned char*)"  Death Stranding");		
					delay2(5);					
				}
				else if (sel2 == 3){
					GLCD_SetTextColor(White);
					GLCD_DisplayString(3, 0, __FI,(unsigned char*)"  Monster Hunter ");
					GLCD_DisplayString(4, 0, __FI,(unsigned char*)"  SSBU						");
					GLCD_DisplayString(6, 0, __FI,(unsigned char*)"  Death Stranding");	
					delay2(5);	
				}
				else if (sel2 == 4){
					GLCD_SetTextColor(White);
					GLCD_DisplayString(3, 0, __FI,(unsigned char*)"  Monster Hunter ");
					GLCD_DisplayString(4, 0, __FI,(unsigned char*)"  SSBU						");
					GLCD_DisplayString(5, 0, __FI,(unsigned char*)"  Zelda BTW			");	
					delay2(5);	
				}	
				else if (sel2 == 5){
					sel2 = 0;
				}
	
		} else if (get_button() ==  KBD_SELECT){
			Photo_Viewer(sel2);
		} else if (get_button() ==  KBD_LEFT){		
				Media_Center();	
			}
		
		switch(sel2) {						//Checking and highlighting different options on the LCD
			case 1:	
				GLCD_SetTextColor(Yellow);
				GLCD_DisplayString(3, 0, __FI,(unsigned char*)"  Monster Hunter	");	
        break;			
      case 2:
				GLCD_SetTextColor(Yellow);
				GLCD_DisplayString(4, 0, __FI,(unsigned char*)"  SSBU						");
        break;			
      case 3:	
				GLCD_SetTextColor(Yellow);
				GLCD_DisplayString(5, 0, __FI,(unsigned char*)"  Zelda BTW			");	
        break;			
      case 4:			
				GLCD_SetTextColor(Yellow);
				GLCD_DisplayString(6, 0, __FI,(unsigned char*)"  Death Stranding");
        break;			
		}		
	} 
		
}	
