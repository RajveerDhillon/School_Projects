/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe318.lab4;

/**
 * User Name: r9dhillo
 * Name: Rajveer Dhillon
 * Student Id: 500777569
 */
public class MainAccount {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Account alice = new Account("Alice", 123, 100.00);
        Account bob = new Account("Bob", 789, 0);
        System.out.println(bob);
        System.out.println(alice);
        alice.withdraw(15);
        System.out.println(alice);
        alice.withdraw(200);
        System.out.println(alice);
        alice.withdraw(-1);
        System.out.println(alice);
        alice.deposit(150);
        alice.withdraw(200);
        System.out.println(alice);
        bob.deposit(300);
        System.out.println(bob);
        bob.withdraw(100);
        System.out.println(bob);
    }

}