/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.lab1;

/**
 *
 * @author r9dhillo
 */
public abstract class Passenger {
    protected String name;
    protected int age;
    
    public Passenger(int a, String n){
        name = n;
        age = a;
    }
    
    public String getName(){
        return name;
    }
    public int getAge(){
        return age;
    }

    abstract public double applyDiscount (double p);
}
