/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package coe318.lab6;

/**
 *
 * @author r9dhillo
 */
public class Resistor {
    public double R;
    public Node n1, n2;
    public int rID;
    private static int Rnumber = 1;
    
    public Resistor (double resistance, Node node1, Node node2){
        if (resistance < 0){
            throw new IllegalArgumentException ("Resistances cannot be negative.:");
        }
        if (node1 == null || node2 == null){
            throw new IllegalArgumentException ("The connecting nodes cannot be non-existant");
            }
        else{
            R = resistance;
            n1 = node1;
            n2 = node2;
            this.rID = this.Rnumber;
            Rnumber++;
        }
    }
    
    public Node[] getNodes(){
        Node[] nodes = {n1, n2};
        return nodes;
    }
    
    @Override
    public String toString(){
        return("R" + rID + " Starting at node: " + n1 + ", Ending at node " + n2 + ", Resistance is:  " +R);
    }
}
