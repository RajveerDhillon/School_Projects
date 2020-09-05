/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: Rajveer Dhillon 500777569
 *
 * Created on January 14, 2019, 3:34 PM
 */


#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "pri_queue.h"

int main(int argc, char** argv) {
    Node_ptr_t head;
    assert(PQ_get_size() == 0);
    fprintf(stderr, "First assert worked!\n");
    PQ_insert(0, "first node");
    assert (PQ_get_size () == 1) ;
    fprintf(stderr, "Second assert worked!\n");
    head = PQ_get_head();
    assert(head != NULL);
    fprintf(stderr, "Third assert worked!\n");
    assert(head->data == "first node");
    fprintf(stderr, "Fourth assert worked!\n");
    assert(head->priority == 0); 
    fprintf(stderr, "Fifth assert worked!\n");
    PQ_insert(5, "abc");
    head= PQ_get_head();
    assert(head->priority == 5);
    fprintf(stderr, "Sixth assert worked!\n");
    assert(head->next->priority == 0);
    fprintf(stderr, "Seventh assert worked!\n");
    PQ_insert(3, "def");
    head= PQ_get_head();
    assert(head->priority == 5);
    fprintf(stderr, "l!ligth assert worked!\n");
    assert(head->next->priority == 3);
    fprintf(stderr, "Ninth assert worked!\n");
    assert(head->next->next->priority == 0);
    fprintf(stderr, "Tenth assert worked!\n");
    PQ_insert(7, "hij");
    head = PQ_get_head();
    assert(head->priority == 7);
    fprintf(stderr, "11th assert worked!\n");
    assert(head->next->priority == 5);
    fprintf(stderr, "12th assert worked!\n");
    assert(head->next->next->priority == 3);
    fprintf(stderr, "13th assert worked!\n"); 
    assert(head->next->next->next->priority == 0);
    fprintf(stderr, "14th assert worked!\n");
    PQ_insert(2, "pqr");
    head = PQ_get_head();
    assert(head->priority == 7);
    fprintf(stderr, "15th assert worked!\n");
    assert(head->next->priority == 5);
    fprintf(stderr, "16th assert worked!\n");
    assert(head->next->next->priority == 3);
    fprintf(stderr, "17th assert worked!\n");
    assert(head->next->next->next->priority == 2);
    fprintf(stderr, "18th assert worked!\n");
    assert(head->next->next->next->next->priority == 0);
    fprintf(stderr, "19th assert worked!\n"); 

    return (EXIT_SUCCESS);
    }