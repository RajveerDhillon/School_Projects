/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.lab1;

/**
 *
 * @author Rajveer
 */
public class Non_Member extends Passenger {
    
    public Non_Member(int a, String n){
        super(a, n);
    }
    @Override
    public double applyDiscount(double p){
        if (age > 65){
            p = p - 0.10*p;
            return p;
        }
        
        return p;
    }
    
}


