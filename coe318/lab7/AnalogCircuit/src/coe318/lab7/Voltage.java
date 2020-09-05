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
public class Voltage {
    private double value;
    private Node n1, n2;
    private static int voltageNumber = 1;
    private int label;

public Voltage (Node node1, Node node2, double value){
        if(value < 0 ){
             n1 = node2;
             n2 = node1;
            }
        if (node1 == null || node2 == null || node1.nodeID == node2.nodeID){
            throw new IllegalArgumentException ("The connecting nodes cannot be non-existant or the same nodes");
            }
        else{
            this.value = value;
            n1 = node1;
            n2 = node2;
            if (this.n1.nodeID < this.n2.nodeID){
                this.value = -1*value;
            }
            this.label = this.voltageNumber;
            voltageNumber++;
        
        }
}
        
     public Node[] getNodes(){
        Node[] nodes = {n1, n2};
        return nodes;
     }
    @Override
    public String toString(){
        return("V" + label + " " + n1 + " " + n2+ " " + "DC "+ value);
    }
}