/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package coe318.lab6;
import java.util.ArrayList;

/**
 *
 * @author r9dhillo
 */
public class Circuit {
    
    ArrayList<Resistor> resistors;
    private static Circuit instance = null;
    
    public static Circuit getInstance(){
        if(instance == null){
            instance = new Circuit();
        }
        return instance;
    }
    
    private Circuit(){
        this.resistors = new ArrayList<Resistor>();
    }
    
    public void add(Resistor r){
        this.resistors.add(r);
    }
    
    @Override
    public String toString(){
        String circuit = new String();
        
        for (int j=0; j < this.resistors.size(); j++){
        circuit += this.resistors.get(j).toString() + "\n";
        }
        return circuit;
    }
}
