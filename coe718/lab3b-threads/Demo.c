/*************************************************************
	COE718 Lab 3 Demo.c file
	Understanding different scheduling algorithms with RTX
	Anita Tino
*************************************************************/
#include <stdio.h>                                  
#include <ctype.h>                    
#include <string.h>                   
#include <stdbool.h>
#include "cmsis_os.h"
#include "RTL.H"		// RTX header file
#include "LPC17xx.H"              // LPC17xx definitions           

unsigned int counta = 0; //global task counters
unsigned int countb = 0;

__task void task1 (void const *arg) {  // __task is an RTX keyword
	for (;;)  // Infinite loop – runs while task1 runs. 
		counta++;   // Increment global variable counta indefinitely
}

__task void task2 (void const *arg) {
	for (;;) 
		countb++;
}

//create a thread for the function task1 and task2 with normal priority
osThreadDef (task1, osPriorityNormal, 1, 0); 
osThreadDef (task2, osPriorityNormal, 1, 0);

int main (void) {
	SystemInit(); // initialize the Coretx-M3 processor 
	osKernelInitialize ();   // setup kernel
	osThreadCreate (osThread(task1), NULL);   // create threads
 	osThreadCreate (osThread(task2), NULL); 
 	osKernelStart ();       // start kernel

	osDelay(osWaitForever);
}
