/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.lab4;

/**
 *
 * @author r9dhillo
 */
import java.util.ArrayList; 
/**
 *
 * @author r9dhillo
 */
public class StackofDistinctStrings { 
    // Overview: StacksOfDistinctStrings are mutable, bounded     
    // collection of distinct strings that operate in  
    // LIFO (Last-In-First-Out) order.  
    //  
    private ArrayList<String> items; 
    // constructor 
    /**
     *
     */
    public StackofDistinctStrings() { 
        // EFFECTS: Creates a new StackOfDistinctStrings object 
        items = new ArrayList<String>(); 
    } 
    public void push(String element) throws Exception { 
        // MODIFIES: this 
        // EFFECTS: Appends the element at the top of the stack  
        //          if the element is not in the stack, otherwise 
        //          does nothing. 
        if(element == null) throw new Exception(); 
        if(false == items.contains(element))  
            items.add(element); 
    } 
    public String pop() throws Exception { 
        // MODIFIES: this 
        // EFFECTS: Removes an element from the top of the stack  
        if (items.size() == 0) throw new Exception(); 
        return items.remove(items.size()-1); 
    } 
 
    public boolean repOK() { 
        // EFFECTS: Returns true if the rep invariant holds for this    
        //          object; otherwise returns false    
// c) Write the code for the repOK() here 
        return true;
    } 
    public String toString() { 
        // EFFECTS: Returns a string that contains the strings in the  
        //          stack and the top element. Implements the  
        //          abstraction function.   
// d) Write the code for the toString() here 