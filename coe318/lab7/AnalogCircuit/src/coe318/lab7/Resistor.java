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
public class Resistor {

    private double value;
    private Node n1, n2;
    private static int resistorNumber = 1;
    private int label;
    
    /**
     *
     * @param resistor
     * @param node1
     * @param node2
     * @param value
     */
    public Resistor (Node node1, Node node2, double value){
        if(value < 0 ){
             throw new IllegalArgumentException ("Resistance cannot be negative.:");
            }
        if (node1 == null || node2 == null || node1.nodeID == node2.nodeID){
            throw new IllegalArgumentException ("The connecting nodes cannot be non-existant or the same nodes");
            }
        else{
            this.value = value;
            n1 = node1;
            n2 = node2;
            }
            this.label = this.resistorNumber;
            resistorNumber++;
        
        }
    @Override
    public String toString(){
        return("R" + label + " " + n1 + " " + n2+ " " + value);
    }
    
     public Node[] getNodes(){
        Node[] nodes = {n1, n2};
        return nodes;
     }
}
