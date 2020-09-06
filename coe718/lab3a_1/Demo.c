#include <stdio.h>
#include "LPC17xx.h"
#include <RTL.h>
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

#define LED1 (*((volatile unsigned long*)0x233806F0))  // LED P1.B28
#define LED2 (*((volatile unsigned long*)0x233806FC))  // LED P1.B31
#define LED3 (*((volatile unsigned long*)0x23380A88))  // LED P2.B2
	

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

char text1[20], text2[20], text3[20];
long glob1 = 0, glob2 = 0, glob3 = 0;
int tas1 = 0, tas2 = 0, tas3 = 0;
	
	void delay(){
	int c;
	while (c < 1000000){
		c++;
	}
}

//void updateLCD (char text1[20],char text2[20],char text3[20]){
//	 #ifdef __USE_LCD
//     GLCD_SetTextColor(Purple);
//		 GLCD_DisplayString(3,  2, __FI,  (unsigned char *)text1);
//     GLCD_DisplayString(7,  2, __FI,  (unsigned char *)text2);
//		 GLCD_DisplayString(8,  2, __FI,  (unsigned char *)text3);
//		 			
//	#endif
//}


void LED_1 (int state){
	if (state == 1){
		//sprintf(text1,"%s", "TASK 1 ON    ");
		LED1 = 1;
	}
	else{
		LED1 = 0;
	}
}

void LED_2 (int state){
	if (state == 1){
		//sprintf(text2,"%s", "TASK 2 ON    ");
		LED2 = 1;
	}
	else{
		LED2 = 0;
	}
}

void LED_3 (int state){
	if (state == 1){
		//sprintf(text3,"%s", "TASK 3 ON    ");
		LED3 = 1;
	}
	else{
		LED3 = 0;
	}
}

__task void task1(void){
	for(;;){
		if (glob1 <= 60) {
			glob1++;
			tas1 = 1;
			tas2 = 0;
			tas3 = 0;
			delay();
		}
			else {
				LED_1(1);
				//sprintf(text1,"%s", "TASK 1 DONE ");
				//updateLCD (text1, text2, text3);
				os_tsk_delete_self();
			
		}
	}
}

__task void task2(void){
	for(;;){
		if (glob2 <=40) {
			glob2++;
			tas1 = 0;
			tas2 = 1;
			tas3 = 0;
			delay();
		}
			else {
				LED_2(1);
				//sprintf(text2,"%s", "TASK 2 DONE ");
				//updateLCD (text1, text2, text3);
				os_tsk_delete_self();
	}
}
	}

__task void task3(void){
	for(;;){
		if (glob3 <= 20) {
			glob3++;
			tas1 = 0;
			tas2 = 0;
			tas3 = 1;
			delay();
		}
			else {
				LED_3(1);
				//sprintf(text3,"%s", "TASK 3 DONE ");
				//updateLCD (text1, text2, text3);
				os_tsk_delete_self();
	}
}
	}

int main(void){
	
	LED_Init();                                /* LED Initialization            */
	//LED_Clear();

#ifdef __USE_LCD
  GLCD_Init();                               /* Initialize graphical LCD (if enabled */

  GLCD_Clear(White);                         /* Clear graphical LCD display   */
  GLCD_SetBackColor(Blue);
  GLCD_SetTextColor(Yellow);
  GLCD_DisplayString(0, 0, __FI, "     COE718 LAB 3.1    ");
	GLCD_SetTextColor(White);
  GLCD_DisplayString(1, 0, __FI, "         Demo 1			   ");
  GLCD_DisplayString(2, 0, __FI, "      Round Robin      ");
  GLCD_SetBackColor(White);
  GLCD_SetTextColor(Blue);
#endif

	
	SystemInit();
	os_tsk_create(task1, 1); /* Task 1 Priority 1*/
	os_tsk_create(task2, 1); /* Task 2 Priority 2*/
	os_tsk_create(task3, 1); /* Task 3 Priority 3*/
	os_tsk_delete_self();

	os_sys_init(task1);
}