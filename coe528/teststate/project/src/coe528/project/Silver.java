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
public class Silver extends Level implements Serializable{
    @Override 
    public void switchState(ContextCustomer c){
        if (c.getBalance() >= 10000 && c.getBalance() < 20000){
            c.setLevel(new Gold());
            System.out.println("Went from Silver to Gold");
            c.setFee(10);
            System.out.println("Fee is set to $10: Gold");
            c.setLevelStr("Gold");
            c.setOutString("Changed from Silver to Gold");
        }
        else if(c.getBalance() > 20000){
            c.setLevel(new Platinum());
            System.out.println("Went from Silver to Platinum");
            c.setFee(0);
            System.out.println("Fee is set to $0: Platinum");
            c.setLevelStr("Platinum");
            c.setOutString("Changed from Silver to Platinum");
        }
        else System.out.println("Already in Silver");
    }
}
