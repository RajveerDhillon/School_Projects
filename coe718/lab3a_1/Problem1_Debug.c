/**************************************************************

Lab 3: Scheduling Tasks with uVision and RTX (Problem 1)
Author: Brandon Duong (500642605)

DEBUG VERSION

**************************************************************/

#include <stdio.h>
#include "LPC17xx.h"
#include <RTL.h>
#include "GLCD.h"
#include "KBD.h"
#include "bitband.h"

#define __FI        1                      /* Font index 16x24               */
//#define __USE_LCD   0										/* Uncomment to use the LCD */

#define DEMCR           (*((volatile unsigned long *)(0xE000EDFC)))
#define TRCENA          0x01000000

char text[10];

int bb_word_address, i=0;
uint32_t kbd_val;

/*----------------------------------------------------------------------------
  initialize LED Pins
 *----------------------------------------------------------------------------*/

void LED_Init (void) {

  LPC_SC->PCONP     |= (1 << 15);            /* enable power to GPIO & IOCON  */

  LPC_GPIO1->FIODIR |= 0xB0000000;           /* LEDs on PORT1 are output      */
  LPC_GPIO2->FIODIR |= 0x0000007C;           /* LEDs on PORT2 are output      */
}

/*----------------------------------------------------------------------------
  Delay function
 *----------------------------------------------------------------------------*/

void delay (int cnt) {
  cnt <<= 18;
  while (cnt--);
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
	bb_word_address= BITBAND_SRAM(0x2009C03C,led_bit);
	(*(volatile unsigned long *)bb_word_address)= 1;
}

/*----------------------------------------------------------------------------
  Turn off Port 2 LED (Bit Band)
 *----------------------------------------------------------------------------*/

void p2_led_off (led_bit){
	bb_word_address= BITBAND_SRAM(0x2009C05C,led_bit);
	(*(volatile unsigned long *)bb_word_address)= 1;
}

/*----------------------------------------------------------------------------
  Turn of all LEDs (Use at beginning of while loop)
 *----------------------------------------------------------------------------*/
void LED_Off(void){
		LPC_GPIO1->FIOCLR |=  0xFFFFFFFF;
		LPC_GPIO2->FIOCLR |=  0xFFFFFFFF;
}

long c1 = 0, c2 = 0, c3=0;
int a=0,b=0,c=0,x=0,y=0,z=0;


__task void task1(void){
	//This task is responsible for turning on LED P1.28 and making sure the other LEDs are off
	for(;;){		
		if(c1<10){		//Task1 counter (c1) has less iterations than c2 and c3. Task1's LED will turn off first
			c1++;
			b=0;
			c=0;
			delay(15);	//Delay for 15ms (one round robin timer cycle). Keeps the LED on longer
			p1_led_off(29);		//Ensure that LEDs on P1.29 and P1.31 are turned off
			p1_led_off(31);			
			if(a != 1){		//Ensure other tasks were completed before coming back to this task
					a=1;
				p1_led(28);		//Bitband function to turn on P1.28
				//GLCD_DisplayString(8, 9, __FI, "1");		//Display current task on LCD
			}
			delay(15);	//Delay for 15ms (one round robin timer cycle)
		}
		else{
			//Enter this block when task 1 completes 10 full iterations
			p1_led_off(28);			
			if (x!=1){		//Prevents spamming of LCD by ensuring one iteration of the if block
				x=1;
				//GLCD_DisplayString(5, 7, __FI, "Done");
			}
			os_tsk_delete_self();		//Delete self when complete
		}
	}
}

__task void task2(void){
	//This task is responsible for turning on LED P1.29 and making sure the other LEDs are off
	for(;;){
		c2++;
		if (c2 < 20){		//Task2 counter (c2) has more iterations than c1 to keep its LED on longer than tast1's LED 
			a=0;
			c=0;
			//delay(15);
			p1_led_off(28);
			p1_led_off(31);
			if (b != 1){
				b=1;
				p1_led(29);		//Bitband function to turn on P1.29
				//GLCD_DisplayString(8, 9, __FI, "2");
			}	
			delay(15);
		}
		else {
			p1_led_off(29);
			if (y!=1){
				y=1;
				//GLCD_DisplayString(6, 7, __FI, "Done");		//Indicates that current task is done on LCD
			}
			os_tsk_delete_self();
		}
	}
}

__task void task3(void){
	//This task is responsible for turning on LED P1.31 and making sure the other LEDs are off
	for(;;){
		c3++;
		if (c3 < 30){		//Task3 counter (c3) has more iterations than c1 and c2 to keep its LED on longer other LEDs 
			a=0;
			b=0;
			delay(15);
			p1_led_off(28);
			p1_led_off(29);
			if (c != 1){
				c=1;
				p1_led(31);		//Bitband function to turn on P1.231
				//GLCD_DisplayString(8, 9, __FI, "3");
			}	
			delay(15);
		}
		else{
			p1_led_off(31);
			if (z!=1){
				z=1;
				//GLCD_DisplayString(7, 7, __FI, "Done");		//Indicates that current task is done on LCD
			}
			os_tsk_delete_self();
		}
	}
}

int main(void){
	SystemInit();
	LED_Init();
//	KBD_Init();
	LED_Off();		//Ensure all LEDs are off before operating
	
/*
	#ifdef __USE_LCD
  	GLCD_Init();                               
  	GLCD_Clear(White);                  
  	GLCD_SetBackColor(Red);
  	GLCD_SetTextColor(Yellow);
 	GLCD_DisplayString(0, 0, __FI, "     COE718 Demo    ");
	GLCD_SetTextColor(White);
  	GLCD_DisplayString(1, 0, __FI, "     Round Robin    ");
  	GLCD_DisplayString(2, 0, __FI, "    Brandon Duong   ");
  	GLCD_SetBackColor(White);
  	GLCD_SetTextColor(Blue);
  	GLCD_DisplayString(5, 0, __FI, "Press button");
	GLCD_DisplayString(6, 0, __FI, "to start");
	GLCD_SetTextColor(Black);
	#endif
*/

/*
	while (i==0){
		kbd_val= get_button();
		
		if (kbd_val == 0x01){		//Wait for joystick press (select) to begin round robin program
				i=1;
		}
	}
*/
	
/*
	GLCD_DisplayString(5, 0, __FI, "                  ");
	GLCD_DisplayString(6, 0, __FI, "                  ");
	GLCD_DisplayString(7, 0, __FI, "                  ");
	GLCD_DisplayString(8, 0, __FI, "                  ");
	GLCD_DisplayString(5, 0, __FI, "Task1: ");
	GLCD_DisplayString(6, 0, __FI, "Task2: ");
	GLCD_DisplayString(7, 0, __FI, "Task3: ");
	GLCD_DisplayString(8, 0, __FI, "Working: ");
*/
	
	os_tsk_create(task1, 1);   //255 highest priority, 1 lowest
	os_tsk_create(task2, 1);
	os_tsk_create(task3, 1);
	os_tsk_delete_self();

	os_sys_init(task1);
}
