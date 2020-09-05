/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package coe318.lab6;

/**
 *
 * @author r9dhillo
 */
public class Maincounter {
    
    public static void main(String[] args) {
        Circuit c1 = Circuit.getInstance();
        
        Node n1 = new Node();
        Node n2 = new Node();
        Node n3 = new Node();
        Node n4 = new Node();
        Node n5 = new Node();
        System.out.println(n1.toString());
        System.out.println(n2.toString());
        System.out.println(n3.toString());
        System.out.println(n4.toString());
        System.out.println(n5.toString());
        
        Resistor r1 = new Resistor(50.0, n1, n2);
        Resistor r2 = new Resistor(100.0, n2, n3);
        Resistor r3 = new Resistor(150.0, n3, n4);
        
        System.out.println(r1.toString());
        System.out.println(r2.toString());
        System.out.println(r3.toString());
        
        System.out.println("\nCircuit");
        
        c1.add(r1);
        c1.add(r2);
        c1.add(r3);
        System.out.println(c1.toString());
    }
}
