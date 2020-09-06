/*
 * main.c
 *
 *  Created on: 2014-11-15
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <time.h>
#include <sys/mman.h>
#include <stdbool.h>
#include <pthread.h>
#include "hwlib.h"
#include "socal/socal.h"
#include "socal/hps.h"
#include "socal/alt_gpio.h"
#include "hps_0.h"
#include "led.h"
#include "seg7.h"


#define LW_SIZE 0x00200000
#define LWHPS2FPGA_BASE 0xff200000

volatile uint32_t *h2p_lw_led_addr = NULL;
volatile uint32_t *h2p_lw_hex_addr = NULL;

void led_blink(void){

	int i=0;
	while(1){
		printf("LED ON \r\n");
		for(i=0;i<=10;i++){
			LEDR_LightCount(i);
			usleep(100*1000);
		}

		printf("LED OFF \r\n");

		for(i=0;i<=10;i++){
			LEDR_OffCount(i);
			usleep(100*1000);
		}
	}
}



int main(int argc, char **argv){

	pthread_t id;
	int ret;
	void *virtual_base;
	int fd;


	//open the /dev/mem to access the FPGA space for reading and writing
	if( ( fd = open( "/dev/mem", ( O_RDWR | O_SYNC ) ) ) == -1 ) {
		printf( "ERROR: could not open \"/dev/mem\"...\n" );
		return( 1 );
	}

	//map the virtual memory space to virtual_base, that is 2MB in size (0x00200000), at address LWHPS2FPGA_BASE
	virtual_base =  mmap( NULL, LW_SIZE, ( PROT_READ | PROT_WRITE ), MAP_SHARED, fd, LWHPS2FPGA_BASE);

	//check that the mapping was successful
	if( virtual_base == MAP_FAILED ) {
		printf( "ERROR: mmap() failed...\n" );
		close( fd );
		return(1);
	}
	
	// map the address space for the LED and HEX registers into user space so we can interact with them.
	// i.e. the address exists at virtual_base + the offset of your IP component
	h2p_lw_led_addr= virtual_base + ((uint32_t)(LED_PIO_BASE));
	h2p_lw_hex_addr= virtual_base + ( (uint32_t)(SEG7_IF_0_BASE));

	//create and run the thread for the LED
	ret=pthread_create(&id,NULL,(void *)led_blink,NULL);

	if(ret!=0){
		printf("Creat pthread error!\n");
		exit(1);
	}

	//and run the SEVEN SEG process
	SEG7_All_Number();

	//once the SEG7 show is complete, display a message
	display_msg();
	
	pthread_join(id,NULL);
	
	if( munmap( virtual_base, LW_SIZE) != 0 ) {
		printf( "ERROR: munmap() failed...\n" );
		close( fd );
		return( 1 );
	}

	close( fd );

	return 0;

}
