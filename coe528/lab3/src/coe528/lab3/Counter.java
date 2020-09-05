/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.lab3;

/**
 *
 * @author Rajveer
 */
public interface Counter {
//Increment the specificed Counter.
String count();

//Decrement the specified Counter.
void increment();

//Reset the specified Counter.
void decrement();

void reset();
void setLeftNeighbour(Counter c);
}


