#include <stdlib.h>
#include <stdio.h>
#include "pri_queue.h"
/** @file pri_queue.c */
static Node_ptr_t head = NULL;

/**
 * Insert a Node into a priority queue.
 * @param priority
 * @param data
 * @author Rajveer Dhillon 500777569
 */
void PQ_insert(int priority, char * data) {

    //new node initialization
    Node_ptr_t itemAddress, tmp, front;
    itemAddress = (Node_ptr_t) malloc(sizeof (struct node));
    itemAddress->priority = priority;
    itemAddress->data = data;
    itemAddress->next = NULL;


    //case 1, if there is no head node
    if (head == NULL) {
        head = itemAddress;
    } 
    //case 1: continued: 
    else {
        tmp = head;
        while (tmp->next != NULL && tmp->priority > itemAddress->priority) {
            front = tmp;
            tmp = tmp->next;
        }
        //case 2, new node replace head node
        if (tmp == head) {
             itemAddress->next = tmp;
             head = itemAddress;
        }
        //case 3, new node replace non-head node
        else {
            front->next = itemAddress;
            itemAddress->next = tmp;
        }
    }
}

/**
 * Delete and return the node with the highest priority.
 * @return The highest priority Node.
 */
Node_ptr_t PQ_delete() {
    Node_ptr_t tmp;
    tmp = head->next;
    head->next = NULL;
    
    return tmp;
}

/**
 * Do NOT modify this function.
 * @return A pointer to the head of the list.  (NULL if list is empty.)
 */
Node_ptr_t PQ_get_head() {
    return head;
}

/**
 * Do NOT modify this function.
 * @return the number of items in the queue
 */
int PQ_get_size() {
    int size = 0;
    Node_ptr_t tmp;
    for (tmp = head; tmp != NULL; tmp = tmp->next, size++)
        ;
    return size;
}


