/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.lab4;

/**
 *
 * @author Rajveer
 */
import java.util.ArrayList;
public class StackofDistinctStrings {
    // Overview: StackofDistinctStrings are mutable, bounded
    //collection of distinct strings that operate in
    //LIFO (Last-In-First-Out) order.
    //
    // The abstraction function is:
    // AF(c) = a Stack of Strings, s, such that
    // The n-th element from the bottom of the stack = items(N-1)
    // Where the 1st element is at the bottom of the stack
    // and the last element is at the top
    //
    // The rep invariant is:
    //  elements never contain a null value or have an out of bounds element
    //
    // The rep
    private ArrayList<String> items;
    
    // constructor
    public StackofDistinctStrings(){
        // EFFECTS: Creates a new StackofDistinctStrings object
        items = new ArrayList<>();
        
    }
    
    public void push(String element) throws Exception {
        //MODIFIES: this
        //EFFECTS: Appends the element at the top of the stack 
        //         if the element is not in the stack, otherwise
        //         does nothing
        if (element == null) throw new Exception();
        if (false == items.contains(element))
            items.add(element);
        
    }   
    
    public String pop()throws Exception {
        //MODIFIES: this
        //EFFECTS: Removes an element from the top of the stack 
        if (items.isEmpty()) throw new Exception();
        return items.remove(items.size()-1);
    }
    
    public boolean repOK() {
        //EFFECTS: Returns true if the rep invariant holds for this
        //         object; otherwise returns false
        for (String n: items){
            if (n == null){
                return (false);
            }
        }
        return true;
        
    }
    @Override
    public String toString() {
        //EFFECTS: Returns a string that contains the strings in the
        //         stack and the top element. Implements the
        //         abstraction function.
        if (repOK() == false){
            return("The rep invariant does not hold");
        }
        else{
            int i = items.size();
            System.out.println("Top of stack; last in");
            for (String n: items){
                System.out.println(n);
            }
            return ("Bottom of Stack; first in");
        }
    }
    
}