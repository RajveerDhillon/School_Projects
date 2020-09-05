/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.lab3;
import java.util.Scanner;
/**
 *
 * @author Rajveer
 */
public class OdometerDriver {
    int count = 0;
    	public static void main(String[] args){
            try{
                System.out.print("Enter number of digits for odometer: ");           
                Scanner input1 = new Scanner(System.in);
                int numOfDigits = input1.nextInt();
         
                Odometer odom= new Odometer(numOfDigits);
//increment 130 times and print the count.

         for ( int i = 0; i < 130; i++ ) {
             odom.increment();
         }
         System.out.println(odom.count());
//decrement 31 times and print the count.
         for ( int i = 0; i < 31; i++ ){
             odom.decrement();
         }
         System.out.println(odom.count());
//increment 1001 times and print the count.
         for ( int i = 0; i < 1001; i++ ){
             odom.increment();}
         System.out.println(odom.count());
// decrement 1101 times and print the count.
         for ( int i = 0; i < 1101; i++ ){
             odom.decrement();
         }
         System.out.println(odom.count());
//reset the odometer and print the count.
         odom.reset();
         System.out.println(odom.count());
//decrement once and print the count.
         odom.decrement();
         System.out.println(odom.count());
//increment once and print the count.
         odom.increment();
         System.out.println(odom.count());
                       }
catch(IllegalArgumentException fail){
    System.out.println("Number of digits should be 1 or greater");
}
}
}





