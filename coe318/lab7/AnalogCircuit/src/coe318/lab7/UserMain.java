/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 * Name: Rajveer Dhillon
 * Student ID: 500777569
 */
package coe318.lab7;
import java.util.Scanner;
/**
 *
 * @author r9dhillo
 */
public class UserMain {
    
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String s;
        String [] ss = new String [3];
        Circuit c1 = Circuit.getInstance();
        System.out.println("Enter the components: ");
        while (input.hasNext()) {
            s = input.nextLine();
            if (s.equals("end")){
                    System.out.println("All DONE!");
                    System.exit(0);
            }
            else if (s.equals("Spice") || s.equals("spice")){
                System.out.println(c1.toString());
            }
            else{
            ss = s.split(" ", 4); 
            Node n1 = new Node(Integer.parseInt(ss[1]));
            Node n2 = new Node(Integer.parseInt(ss[2]));
            double val = Double.parseDouble(ss[3]);
            switch (ss [0]) {
                case "r":
                    Resistor r = new Resistor (n1, n2, val);
                    c1.addRes(r);
                    break;
                case "v":
                    Voltage v = new Voltage (n1, n2, val);
                    c1.addVol(v);
                    break;

                default:
                    System.out.println("Got " + s);
            }
        }
    }
}
}
