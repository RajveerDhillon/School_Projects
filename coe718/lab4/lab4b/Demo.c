/*************************************************************
	COE718 Lab 3 Demo.c file
	Understanding different scheduling algorithms with RTX
	Anita Tino
*************************************************************/
#include <stdio.h>                                  
#include <ctype.h>                    
#include <string.h>                   
#include <stdbool.h>
#include <math.h>
#include "cmsis_os.h"
#include "RTL.H"		// RTX header file
#include "LPC17xx.H"              // LPC17xx definitions       
#include "GLCD.h"
#include "LED.h"

unsigned int counta = 0; //global task counters
unsigned int countb = 0;

double ans1 = 0, ans2 = 0, ans3 = 0, ans4 = 0, ans = 0;
int i, j;
char text[10];

//ITM Stimulus Port definitions for printf //////////////////
#define ITM_Port8(n)    (*((volatile unsigned char *)(0xE0000000+4*n)))
#define ITM_Port16(n)   (*((volatile unsigned short*)(0xE0000000+4*n)))
#define ITM_Port32(n)   (*((volatile unsigned long *)(0xE0000000+4*n)))

#define DEMCR           (*((volatile unsigned long *)(0xE000EDFC)))
#define TRCENA          0x01000000


#define __FI        1                      /* Font index 16x24               */
#define __USE_LCD   0	

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

#define ADDRESS(x)    (*((volatile unsigned long *)(x)))




__task void task1 (void const *arg) {  // __task is an RTX keyword
		for(i=0; i<=256; i++){
			ans1 = ans1 + (((2*i + 1) * 2 + 4 * (i + 2))/10 * (i + 3));		
			LED_On(1);
			
			sprintf(text, "%lf", ans1); 
      GLCD_SetTextColor(Red);
			GLCD_DisplayString(4, 0, __FI, "a=     ");
      GLCD_DisplayString(4,  7, __FI,  (unsigned char *)text);
		}		
}

__task void task2 (void const *arg) {
		for(j=0; j<=128; j++){
			ans2 = ans2 + (j + (j * 2));	
			LED_On(2);
			
			sprintf(text, "%lf", ans2); 
      GLCD_SetTextColor(Red);
			GLCD_DisplayString(5, 0, __FI, "b=");
      GLCD_DisplayString(5,  7, __FI,  (unsigned char *)text);
		}
}

__task void task3 (void const *arg) {  // __task is an RTX keyword
		ans3 = sqrt(40320.0);
		LED_On(3);
	
		sprintf(text, "%lf", ans3); 
    GLCD_SetTextColor(Red);
		GLCD_DisplayString(6, 0, __FI, "Denom=");
    GLCD_DisplayString(6,  7, __FI,  (unsigned char *)text);
}

__task void task4 (void const *arg) {  // __task is an RTX keyword
		ans4 = ans1 * ans2;
		LED_On(4);
	
		sprintf(text, "%lf", ans4); 
    GLCD_SetTextColor(Red);
		GLCD_DisplayString(7, 0, __FI, "Num=");
    GLCD_DisplayString(7,  7, __FI,  (unsigned char *)text);
}

__task void task5 (void const *arg) {  // __task is an RTX keyword
		ans = ans4 / ans3;
		LED_On(5);
		
		sprintf(text, "%lf", ans); 
    GLCD_SetTextColor(Red);
    GLCD_DisplayString(9,  7, __FI,  (unsigned char *)text);
			 	
}



//create a thread for the function task1 and task2 with normal priority
osThreadDef (task1, osPriorityHigh, 1, 0); 
osThreadDef (task2, osPriorityAboveNormal, 1, 0);
osThreadDef (task3, osPriorityNormal, 1, 0);
osThreadDef (task4, osPriorityNormal, 1, 0);
osThreadDef (task5, osPriorityNormal, 1, 0);

int main (void) {
LED_Init();			
	#ifdef __USE_LCD
			GLCD_Init();                               /* Initialize graphical LCD (if enabled */

			//GLCD_Clear(White);                         /* Clear graphical LCD display   */
		 GLCD_SetBackColor(Blue);
			GLCD_SetTextColor(Yellow);
			GLCD_DisplayString(0, 0, __FI, "       LAB 4B        ");
			GLCD_SetTextColor(White);
			GLCD_DisplayString(1, 0, __FI, "   ********     ");
			GLCD_DisplayString(9, 0, __FI, "y=");
			GLCD_SetBackColor(White);
			GLCD_SetTextColor(Blue);
		#endif 
	SystemInit(); // initialize the Coretx-M3 processor 
	osKernelInitialize ();   // setup kernel
	osThreadCreate (osThread(task1), NULL);   // create threads
 	osThreadCreate (osThread(task2), NULL); 
	osThreadCreate (osThread(task3), NULL); 
	osThreadCreate (osThread(task4), NULL); 
	osThreadCreate (osThread(task5), NULL); 
 	osKernelStart ();       // start kernel

	osDelay(osWaitForever);
}
