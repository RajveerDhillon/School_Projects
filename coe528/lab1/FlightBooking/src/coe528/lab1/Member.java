/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.lab1;

/**
 *
 * @author r9dhillo
 */
public class Member extends Passenger {
    private int yrOfMem;
    
    public Member(int a, String n, int yom){
        super(a, n);
        yrOfMem = yom;     
        
    }
    
    public int getYearMem(){
    return yrOfMem;
    }
    public void setYearMem(int yrOfMem){
        this.yrOfMem = yrOfMem;
    }

    /**
     *
     * @param p
     * @return
     */
    @Override
    public double applyDiscount(double p){
        if (yrOfMem > 5){
            p = p - 0.50*p;
            return p;
        }
        else if (yrOfMem < 5 && yrOfMem > 1){
            p = p - 0.10*p;
            return p;
        }
        
        
        return p;
    } 
}
