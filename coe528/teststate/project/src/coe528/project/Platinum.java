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
public class Platinum extends Level implements Serializable{
    @Override
    public void switchState(ContextCustomer c){
        if(c.getBalance() < 20000 && c.getBalance() >= 10000){
            c.setLevel(new Gold());
            System.out.println("Went from Platinum to Gold");
            c.setFee(10);
            System.out.println("Fee is set to $10: Gold");
            c.setLevelStr("Gold");
            c.setOutString("Changed from Platinum to Gold");
        }
        else if (c.getBalance() < 10000 && c.getBalance() >= 0){
            c.setLevel(new Silver());
            System.out.println("Went from Platinum to Silver");
            c.setFee(20);
            System.out.println("Fee is set to $20: Silver");
            c.setLevelStr("Silver");
            c.setOutString("Changed from Platinum to Silver");
        }
        else System.out.println("Already in Platinum");
    }
}
