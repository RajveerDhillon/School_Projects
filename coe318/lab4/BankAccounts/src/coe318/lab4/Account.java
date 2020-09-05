/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe318.lab4;

/**
 *User Name: r9dhillo
 * Name: Rajveer Dhillon
 * Student Id: 500777569
 */
public class Account {
    String name;
    int number;
    public double balance, amount;
    boolean statement;
    
    public Account (String name,int number, double initialBalance) {
        this.name = name;
        this.number = number;
        balance = initialBalance;
        
    }
    
    public String getName() {
        return name;
    }
    
    public double getBalance () {
        return balance;
    }
    
    public int getNumber () {
        return number;
    }
    
    boolean deposit(double amount) {
        this.amount = amount;
        balance = balance + amount;
        statement = true;
        return statement ;
        
    }
    boolean withdraw(double amount) {
        this.amount = amount;
        if (balance >= amount && amount >= 0){
            balance = balance - amount;
            statement = true;
        }
        
        else {
            statement = false;
        }
        return statement;
    }
    @Override
    public String toString () {// DO NOT MODIFY
        return "(" + getName() + "," + getNumber() + "," + String.format("$%.2f", getBalance()) + ")";
    }
}
