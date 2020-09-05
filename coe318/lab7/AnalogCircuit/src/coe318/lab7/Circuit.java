/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 * Name: Rajveer Dhillon
 * Student ID: 500777569
 */
package coe318.lab7;
import  java.util.ArrayList;

/**
 *
 * @author r9dhillo
 */
public class Circuit {
    
 ArrayList<Resistor> resistors;
 ArrayList<Voltage> voltages;
 public String [] position = new String [10]; 
 private static int counter = 0;
 private int resCounter = 0;
 private int volCounter = 0;
    private static Circuit instance = null;
    
    public static Circuit getInstance(){
        if(instance == null){
            instance = new Circuit();
        }
        return instance;
    }
    
    private Circuit(){
        this.resistors = new ArrayList<Resistor>();
        this.voltages = new ArrayList<Voltage>();
    }
    
    public void addRes(Resistor k){
        this.resistors.add(k);
        counter++;
        position [counter] = "r";
    }
    public void addVol(Voltage l){
        this.voltages.add(l);
        counter++;
        position [counter] = "v";
    }
    @Override
    public String toString(){
        String circuit = new String ();
        for (int i = 0; i < position.length; i++){
            if (position[i] == "r"){ 
                circuit += this.resistors.get(resCounter).toString() + "\n";
                resCounter++;
            }
            if (position[i] == "v") {
                circuit += this.voltages.get(volCounter).toString() + "\n";
                volCounter++;
            }
        }
        return circuit;
    }
    
}

