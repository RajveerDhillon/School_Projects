/**************************************************************



Lab 3: Problem 2

Author: Rajveer Dhillon 



DEMO VERSION



**************************************************************/



#include <stdio.h>
#include "LPC17xx.h"
#include <RTL.h>
#include "GLCD.h"
#include "bitband.h"
#include "KBD.h"



#define __FI        1  
//#define __USE_LCD   0



//ITM Stimulus Port definitions for printf //////////////////

#define ITM_Port8(n)    (*((volatile unsigned char *)(0xE0000000+4*n)))
#define ITM_Port16(n)   (*((volatile unsigned short*)(0xE0000000+4*n)))
#define ITM_Port32(n)   (*((volatile unsigned long *)(0xE0000000+4*n)))

#define DEMCR           (*((volatile unsigned long *)(0xE000EDFC)))
#define TRCENA          0x01000000


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



// Bit Band Macros used to calculate the alias address at run time

#define ADDRESS(x)    (*((volatile unsigned long *)(x)))
#define BitBand(x, y) 	ADDRESS(((unsigned long)(x) & 0xF0000000) | 0x02000000 |(((unsigned long)(x) & 0x000FFFFF) << 5) | ((y) << 2))

#define DEMCR           (*((volatile unsigned long *)(0xE000EDFC)))
#define TRCENA          0x01000000

volatile unsigned long * bit;

volatile unsigned long * bit2;

OS_TID id1, id2, id3, id4, id5;

OS_MUT mutex;

int mem_count, cpu_count, app_count, dev_count, user_count,cnt1,cnt2, cnt3;
int bb_word_address;
int r1=0,r2=1,r3=5,i=1, j;



char text[10];
char* logger [10];		//Declare logger (array of char pointers)

/*----------------------------------------------------------------------------

  initialize LED Pins

 *----------------------------------------------------------------------------*/



void LED_Init (void) {

  LPC_SC->PCONP     |= (1 << 15);            /* enable power to GPIO & IOCON  */
  LPC_GPIO1->FIODIR |= 0xB0000000;           /* LEDs on PORT1 are output      */
  LPC_GPIO2->FIODIR |= 0x0000007C;           /* LEDs on PORT2 are output      */

}



/*----------------------------------------------------------------------------

  Turn on Port 1 LED (Bit Band)

 *----------------------------------------------------------------------------*/



void p1_led (led_bit){
	
	bb_word_address= BITBAND_SRAM(0x2009C038,led_bit);
	(*(volatile unsigned long *)bb_word_address)= 1;
}



/*----------------------------------------------------------------------------

  Turn on Port 2 LED (Bit Band)

 *----------------------------------------------------------------------------*/



void p2_led (led_bit){

	bb_word_address= BITBAND_SRAM(0x2009C058,led_bit);
	(*(volatile unsigned long *)bb_word_address)= 1;

}



/*----------------------------------------------------------------------------

  Turn off Port 1 LED (Bit Band)

 *----------------------------------------------------------------------------*/



void p1_led_off (led_bit){

	bb_word_address= BITBAND_SRAM(0x2009C038,led_bit);
	(*(volatile unsigned long *)bb_word_address)= 0;

}



/*----------------------------------------------------------------------------

  Turn off Port 2 LED (Bit Band)

 *----------------------------------------------------------------------------*/



void p2_led_off (led_bit){

	bb_word_address= BITBAND_SRAM(0x2009C058,led_bit);
	(*(volatile unsigned long *)bb_word_address)= 0;

}



/*----------------------------------------------------------------------------

  Turn off all LEDs (Use at beginning of while loop)

 *----------------------------------------------------------------------------*/

void LED_Off(void){

		LPC_GPIO1->FIOCLR |=  0xFFFFFFFF;
		LPC_GPIO2->FIOCLR |=  0xFFFFFFFF;

}



/*----------------------------------------------------------------------------

  Delay function

 *----------------------------------------------------------------------------*/



void delay (int cnt) {

  cnt <<= 18;

  while (cnt--);

}

__task void mem_manage (void);
__task void cpu_manage (void);
__task void app (void);
__task void dev_manage (void);
__task void user_int (void);



//Memory Management: Priority 4

__task void mem_manage (void) {
	
	GLCD_DisplayString(7, 9, __FI, "               ");
	GLCD_DisplayString(7, 9, __FI, "Mem. Manage    ");		//Display current task name on LCD
	id1 = os_tsk_self(); //Identify myself

	mem_count++;			//Increment counter

	LED_Off();

	p1_led(28);				//Bitband operation, turn on P1.28

	//delay(100);			//Delay task to give user some time to see task on LCD

	os_tsk_pass();		//Pass control to cpu management

	

	os_tsk_prio_self(5);				

	//delay(30);

	if(os_evt_wait_and(4, 0xFFFF)){ 		//Waits for cpu manage. to signal back before executing this block

					LED_Off();
					p1_led(28);					//Turn on P1.28 LED again to indicate task 1 execution again
					GLCD_DisplayString(7, 8, __FI, "               ");
					GLCD_DisplayString(7, 8, __FI, "Mem. Manage    ");		//Update LCD with current task
					//delay(30);
					os_dly_wait(1);		//Delays the OS for 1 tick
					//delay(30);
					os_tsk_delete(id1);
					os_tsk_delete_self();	//Deletes itself

	}

}



//CPU Management: Priority 4

__task void cpu_manage (void) {
	
	GLCD_DisplayString(7, 8, __FI, "               ");
	GLCD_DisplayString(7, 8, __FI, "CPU Manage.    ");
	LED_Off();
	p1_led(29);			//Turn on P1.29
	id2= os_tsk_self();

	cpu_count++;		//increment counter

	r1 = 1;
	GLCD_DisplayString(3, 0, __FI, "Barrel Shifter.    ");
	GLCD_DisplayString(4, 0, __FI, "(Odd #'s Only)    ");

	

			for (j=0; j<=28; j++){

				if (cpu_count%2!=0){			//Conditional execution, only outputs odd #'s
				cpu_count = cpu_count + (j*4);		//Barrel shifter operation, outputs new cpu_count value
					
				sprintf(text, "CPU Count: %d", cpu_count);
				GLCD_DisplayString(5,  0, __FI,  (unsigned char *)text);	//Display current cpu_count value on LCD
				//delay(10);

				}

			}

	os_tsk_pass();
	//delay(50);
	os_evt_set(4, id1);	//Signal back to memory management task
	//delay(30);					//Come back to this task after mem_manage deletes self
	os_tsk_delete_self(); 		//Delete self to jump to app. interface

}



//Application Interface: Priority 2

__task void app (void) {

	//Since application interface was created in main before device management and 

	//because other higher priority tasks (mem, cpu management) were deleted before this, jump to this task

	GLCD_DisplayString(7, 8, __FI, "               ");
	GLCD_DisplayString(7, 8, __FI, "App Inter.     ");
	LED_Off();
	p1_led(31);		//Turn on P1.31
	id3= os_tsk_self();

	

	os_mut_wait(&mutex, 0xFFFF);		//Wait and check that mutex hasn't been locked by another task, acquire mutex if not locked by another task

	

	//Write partial message to logger

	logger[0] = "C";		
	logger[1] = "O";
	logger[2] = "E";

	

	GLCD_DisplayString(8, 0, __FI, "Log: COE");



	//Display first part of logger

	//sprintf(text, "Log: %s%s%s", logger[0], logger[1], logger[2]);

	//GLCD_DisplayString(8,  0, __FI,  (unsigned char *)text);

	

	//delay(100); 		

	if(os_evt_wait_and(0x0004, 0xFFFF)){ 	//Wait for dev. management to finish writing to logger

		LED_Off();
		p1_led(31);
		GLCD_DisplayString(7, 8, __FI, "               ");
		GLCD_DisplayString(7, 8, __FI, "App. Inter.    ");
	//	delay(80);
		app_count++;		//increase this task's global counter
		os_dly_wait(1);		//Delay OS for 1 tick
		os_tsk_delete_self();		//Delete itself

	}		

}



//Device Management: Priority 2

__task void dev_manage (void) {

	//Jump here when app. interface waits for other half of logger

	GLCD_DisplayString(7, 8, __FI, "               ");
	GLCD_DisplayString(7, 8, __FI, "Dev. Manage.   ");
	LED_Off();
	p2_led(2);			//Turn on P2.2 LED
	id4= os_tsk_self();

	//delay(30);

	//Write other half of message to logger

	logger[3] = "7";
	logger[4] = "1";
	logger[5] = "8";
	//delay(50);
	
	GLCD_DisplayString(8, 8, __FI, "718");

	

	/*

	//Display other half of logger message

	sprintf(text, "%s%s%s", logger[3], logger[4], logger[5]);

	GLCD_DisplayString(8,  9, __FI,  (unsigned char *)text);

	delay(80);*/

	

	

	os_evt_set(0x0004, id3);			//Signal back to app management

	

	//delay(50);

	//come back after app management deletes itself

	dev_count++;
	os_dly_wait(1);		//Delays for 1 tick to ensure file is closed
	os_tsk_delete_self();		//Deletes itself

}



//User Interface - Priority 1

__task void user_int (void) {

	//Lowest priority tast, jumps here when all other tasks delete themselves

	GLCD_DisplayString(7, 8, __FI, "               ");
	GLCD_DisplayString(7, 8, __FI, "User Inter.    ");

	LED_Off();

	p2_led(3);		//Turn on P2.3 LED

	id5= os_tsk_self();

	
	user_count++;		//Increase number of users (its variable)

	os_dly_wait(1);		//Delays OS for 1 tick
	
	GLCD_DisplayString(3, 0, __FI, "                    ");
	GLCD_DisplayString(4, 0, __FI, "                    ");
	GLCD_DisplayString(5, 0, __FI, "                    ");
	GLCD_DisplayString(6, 0, __FI, "                    ");
	GLCD_DisplayString(7, 0, __FI, "                    ");
	GLCD_DisplayString(8, 0, __FI, "                    ");
	GLCD_DisplayString(9, 0, __FI, "                    ");
	GLCD_DisplayString(6, 0, __FI, "   Complete   ");		//Display a finishing indicator on LCD before deleting itself
	os_tsk_delete_self();		//Deletes itself

}



int main (void) {

	

	#ifdef __USE_LCD
	
	GLCD_Init();                               //Initialize graphical LCD (if enabled
	GLCD_Clear(White);                         // Clear graphical LCD display   
	GLCD_SetBackColor(Blue);
	GLCD_SetTextColor(Yellow);
	GLCD_DisplayString(0, 0, __FI, "     COE718 Demo      ");
	GLCD_SetTextColor(White);
	GLCD_DisplayString(1, 0, __FI, "    Rajveer Dhillon   ");
	GLCD_DisplayString(2, 0, __FI, "    Lab 3a2           ");
	GLCD_SetBackColor(White);
	GLCD_SetTextColor(Blue);
	GLCD_DisplayString(7, 0, __FI, "Working: ");
	GLCD_SetTextColor(Black);

	#endif

	

	LED_Init();
	LED_Off();
  //os_mut_init(mutex);
	id1 = os_tsk_create(mem_manage, 4);
	id2 = os_tsk_create(cpu_manage, 4); 
	id3 = os_tsk_create(app, 2);
	id4 = os_tsk_create(dev_manage, 2);
	id5 = os_tsk_create(user_int, 1);
	SystemInit();



	os_tsk_delete_self(); 	//Delete main, effectively jumping to task 1 (created first with highest priority)

	





}