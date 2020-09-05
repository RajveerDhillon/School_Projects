/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package coe318.lab6;

/**
 *
 * @author r9dhillo
 */
public class Node {
    private int nodeID;
    private static int nodeNum = 0;
    
    public Node (){
        this.nodeID = nodeNum;
        nodeNum++;
    }
    
    
    @Override
    public String toString(){
        return("" + this.nodeID);
    }
    
}
