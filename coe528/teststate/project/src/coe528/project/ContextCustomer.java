/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.project;

import java.io.Serializable;
import java.util.ArrayList;

/**
 * 
 * @author Rajveer
 * 
 * Overview: Customer class used to record username, password, and role with methods to deposit, withdraw and purchase
 * This Class is Mutable
 * 
 * Abstract Function AF(c) = ContextCustomer C
 * c.Level = c.myLevel i.e. c.Level = silver, c.level = gold, c.level = platinum
 * c.balance, c.username, c.password, c.accountID, c.fee, c.Transactions, c.purchase
 * 
 * RepInv RV(c) = true if c.balance > 0
 *                        c.username != null
 *                        c.purchase > 50
 *                        c.balance -c.purchase-c.fee > 0
 *
 * false otherwise
 * 
 */
public final class ContextCustomer extends User implements Serializable {
    private double balance;
    private Level myLevel = new Silver();
    private String stringLevel;
    private int fee;
    private final String accountID;
    private final ArrayList<String> transactionHistory;
    private String outString;
    
    
    //constructor
    public ContextCustomer(String user, String pass, String accountID, double initial){
        /*
        *Mutable: TransactionHistory, accountID, balance
        *Immutable:Username, Password
        */
        super(user, pass, 1); //1 meaning that this is not a manager, therefore it is a customer
        transactionHistory = new ArrayList<>();
        this.accountID = accountID;
        this.balance = initial;
        
        goSwitch();
        transactionHistory.add(this.toString());
    }
    
    public void setLevel(Level s){
        myLevel = s;
    }
    public Level getLevel(){
        return myLevel;
    }
    public void goSwitch(){
        myLevel.switchState(this);
        transactionHistory.add(outString);
    }
    
    public void setOutString(String s){
        outString = s;
    }
    
    public String getOutString(){
        return outString;
    }
    protected boolean Deposit(double dep){
        /*
        Requires: double dep, input from user
        Mutable: balance, transactionHistory, outString
        Effects: adds a double value to the double balance and returns true otherwise if not a double value, returns a false
        
        */
        //Implementation of RepInvariant or in this case RepOk
        if (true == RepVar(dep, 1)){
            this.balance += dep;
            transactionHistory.add("Deposit: $" + dep);
            goSwitch();
            System.out.println(outString = toString());
            System.out.println("");
            return true;
        }
        else {
            System.out.println("Not a valid deposit");
            System.out.println(outString = toString());
            System.out.println("");
            return false;}
    }
    
    
    protected boolean Withdraw(double wit){
        //Requires: double wit, from User
        //Mutable: balance, transactionHistory, outString
        //Effects: Subtracts a double value from balance and returns true but cannot be greater than balance otherwise it returns false
        //Implementation of RepInvariant or in this case RepOk
        if (true == RepVar(wit, 2)){
            this.balance -= wit;
            transactionHistory.add("Withdrawn: $" + wit);
            goSwitch();
            System.out.println(outString = toString());
            System.out.println("");
            return true;
        }
        else {
            System.out.println("Not a valid withdraw");
            System.out.println(outString = toString());
            System.out.println("");
            return false;}
    }
    
    protected boolean OnlinePur(double val){
        //Requires: 
        //Mutable: balance, transactionHistory, outString, fee
        //Effects: Subtracts a double value from balance and also subtracts a int fee from balance too depending on customer level. The purchases must be $50 and above and the double val cannot be greater than balance otherwise a return false
        //Implementation of RepInvariant or in this case RepOk
        if (true == RepVar(val, 3)){
            Withdraw(val+fee);
            transactionHistory.add("Purchased: $" + val + " , Fees: $" + fee + ", Balance: $" + this.balance);
            goSwitch();
            return true;
        }
        
        else{
            System.out.println("Not a valid purchase");
            System.out.println(outString = toString());
            System.out.println("");
            return false;}
        
    }

    
    protected double getBalance(){
        return this.balance;
    }
    protected void setBalance(double g){
        this.balance = g;
    }
    
    protected void setFee(int f){
        this.fee = f;
    }
    protected int getFee(){
        return this.fee;
    }
    
    protected void setLevelStr(String h){
        stringLevel = h;
    }
    
    protected String getLevelStr(){
        return stringLevel;
    }
    
    protected String getTransaction(){
        //Requires: Nothing
        //Mutable: transactionHistory
        //Effects: returns a String of Transactions that occured
        String output = "";
        for(String s : transactionHistory){
            output += s + "\n";
        }
        return output;
    }
    @Override
    public String toString(){
        System.out.println("toString of customer has been activated");
        return("Username: " + super.getUsername() + ", Customer, " + "Balance: " + getBalance() + ", Level: " + getLevelStr() + ", Account ID: " + accountID );
    }

    @Override
    protected void LogoutAll() {
        goSwitch();
    }
    
    private boolean RepVar(double mon, int st){
        //This is the RepOk method 
        //case statement 1: deposit, 2: withdraw, 3: purchase
        switch (st){
            case 1: 
                //Deposit
                //RV(c) = true if c.
                if (mon > 0){
                    return true;
                }
                else {
                    return false;
                }
                
            
            case 2:
                //Withdraw
                if(mon > 0 || this.balance - mon >= 0){
                    return true;
                }
                else return false;
            
            case 3: 
                //Purchase
                if (mon >= 50 && this.balance - (mon + fee) >= 0){
                    return true;
                }
                else return false;
        }
        return false;
    }
}
