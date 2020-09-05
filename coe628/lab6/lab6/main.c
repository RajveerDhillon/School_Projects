/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author:  *
 * Created on February 26, 2019, 2:15 PM
 */

#include <stdlib.h>     /* NULL */
#include  <stdio.h>	/* printf */
#include  <sys/types.h>	/* pid_t */
#include <unistd.h>	/* get_pid */
#include <stdlib.h>     /* exit, EXIT_FAILURE */
#include <sys/wait.h> 	/* wait */
#include <pthread.h>

#define PRODUCER_NO 5	//Number of producers
#define NUM_PRODUCED 20 //Number of items to be produced

void *generator_function(void);
void *print_function(void);

long sum; /* Sum of generated values*/
long finished_producers; /* number of the producer that finished producing */

//C: Mutex declaration and initialization
 pthread_mutex_t lockkey=PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t condition_mutex=PTHREAD_MUTEX_INITIALIZER;
//F: Condition variable declaration and initialization
 pthread_cond_t cond_var=PTHREAD_COND_INITIALIZER;

int main() {
    /* initialize random seed: */
    srand(time(NULL));
    sum = 0;
    finished_producers=0;
    int i=0;
    pthread_t gen_threads[PRODUCER_NO];
    pthread_t print_thread;
    //A: Creates five generator thread
    for(i=0;i<PRODUCER_NO;i++) {
        pthread_create(&gen_threads[i],NULL,generator_function,NULL);
    }
    //D: Creates print thread
    pthread_create(&print_thread,NULL,print_function,NULL);
    //B: Makes sure that all generator threads has finished before proceeding
    for(i=0;i<PRODUCER_NO;i++) {
        pthread_join(gen_threads[i],NULL);
    }
    //print_function();
    //E: Makes sure that print thread has finished before proceeding
    pthread_join(print_thread,NULL);
    return (0);

}

void *generator_function(void) {

    long counter = 0;
    long sum_this_generator = 0;

    while (counter < 20) {
        pthread_mutex_lock(&lockkey);
        long tmpNumber = sum;
        long rnd_number =1;
        printf("current sum of the generated number up to now is %ld going to add %ld to it.\n", tmpNumber, rnd_number);
        sum = tmpNumber + rnd_number;
        pthread_mutex_unlock(&lockkey);
        counter++;
        sum_this_generator += rnd_number;
        usleep(1000);
    }
    printf("--+---+----+----------+---------+---+--+---+------+----\n");
    printf("The sum of produced items for this number generator at the end is: %ld \n", sum_this_generator);
    printf("--+---+----+----------+---------+---+--+---+------+----\n");
    finished_producers++;
    //H: If all generator has finished fire signal for condition variable
    pthread_mutex_lock(&condition_mutex);
    if(finished_producers>=5) {
        pthread_cond_signal(&cond_var);
        
    }
    pthread_mutex_unlock(&condition_mutex);
    return (0);
}

void *print_function(void) {
    //G: Wait until all generator has finished
    pthread_mutex_lock(&condition_mutex);
    while(finished_producers<5) {
        pthread_cond_wait(&cond_var,&condition_mutex);
    }
    pthread_mutex_unlock(&condition_mutex);
    printf("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
    printf("The value of counter at the end is: %ld \n", sum);
    printf("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
}

