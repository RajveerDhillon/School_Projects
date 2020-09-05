/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 * Name: Rajveer Dhillon
 * Student ID: 500777569
 */
package coe318.lab7;

/**
 *
 * @author r9dhillo
 */
public class Node {
    
    public int nodeID;
    
    public Node (int nodeID){
        this.nodeID = nodeID;
    }
    
        @Override
    public String toString(){
        return("" + this.nodeID);
    }
    
}

