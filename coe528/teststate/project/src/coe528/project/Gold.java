/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.project;
import java.io.Serializable;
/**
 *
 * @author Rajveer
 */
public class Gold extends Level implements Serializable{
    @Override 
    public void switchState(ContextCustomer c){
        if (c.getBalance() >= 20000){
            c.setLevel(new Platinum());
            System.out.println("Went from Gold to Platinum");
            c.setFee(0);
            System.out.println("Fee is set to $0: Platinum");
            c.setLevelStr("Platinum");
            c.setOutString("Changed from Gold to Platinum");
        }
    
        else if(c.getBalance() < 10000 && c.getBalance() < 0){
            c.setLevel(new Silver());
            System.out.println("Went from Gold to Silver");
            c.setFee(20);
            System.out.println("Fee is set to $20: Silver");
            c.setLevelStr("Silver");
            c.setOutString("Changed from Gold to Silver");
        }
        else System.out.println("Already in Gold");
    }
}
