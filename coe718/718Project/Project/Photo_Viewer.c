#include <LPC17xx.H>
#include "string.h"
#include "GLCD.h"
#include "LED.h"
#include "KBD.h"
#include "Media_Center.h"
#include "Photo_Gallery.h"
#include "Photo_Viewer.h"

#define __FI        1

extern unsigned char MONSTERHUNTER[];
extern unsigned char SSBU[];
extern unsigned char ZELDA[];
extern unsigned char DEATHSTRANDING[];

int Photo_Viewer(int j){

	GLCD_ClearLn(8,1);
	GLCD_ClearLn(9,1);
	
	while (1) { 
		
			if (j == 1){
					GLCD_SetBackColor(Navy);
					GLCD_SetTextColor(White);		
					GLCD_DisplayString(0, 1, __FI,(unsigned char*)"Monster Hunter              ");
					GLCD_Bitmap (30, 30, 240, 138, MONSTERHUNTER);		
					GLCD_DisplayString(9, 3, __FI,(unsigned char*)"Go Back Select");
			}
			else if (j == 2){					
					GLCD_SetBackColor(Navy);
					GLCD_SetTextColor(White);					
					GLCD_DisplayString(0, 1, __FI,(unsigned char*)"SSBU                        ");	  	
					GLCD_Bitmap (30, 30, 240, 135, SSBU);
					GLCD_DisplayString(9, 3, __FI,(unsigned char*)"Go Back Select");				
			}
			else if (j == 3){		
					GLCD_SetBackColor(Navy);	
					GLCD_SetTextColor(White);					
					GLCD_DisplayString(0, 1, __FI,(unsigned char*)"Zelda BTW                   ");	  	
					GLCD_Bitmap (30, 30, 240, 136, ZELDA);		
					GLCD_DisplayString(9, 3, __FI,(unsigned char*)"Go Back Select");	
			}
			else if (j == 4){	
					GLCD_SetBackColor(Navy);	
					GLCD_SetTextColor(White);					
					GLCD_DisplayString(0, 1, __FI,(unsigned char*)"Death Stranding             ");	  	
					GLCD_Bitmap (30, 30, 240, 135, DEATHSTRANDING);					
					GLCD_DisplayString(9, 3, __FI,(unsigned char*)"Go Back Select");				
			}
				
			
			if (get_button() ==  KBD_SELECT){
				if (j >= 1 && j <=4){
					Media_Center();
				}
			}
			else if (get_button() == KBD_LEFT) {
				j--;
				if (j == 0){
					j = 5;
				}
			}
			else if (get_button() == KBD_RIGHT){
				j++;
				if(j == 5){
					j = 0;
				}
			}
	} 		
}	
