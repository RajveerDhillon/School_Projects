/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project2;
import java.util.ArrayList;

/**
 *
 * @author sahib
 */
public class MainCar {
    
    public static void main(String[] args){
        
        ArrayList<CarRental> carList = new ArrayList<CarRental>();
        
        carList.add(new CarRental("Ram", "L5T6F4",'M', 3));
        carList.add(new CarRental("Hunter", "L6T3U9",'S', 8));
        carList.add(new LuxuryCar("Joe", "M7R6O9", 6, true));
        carList.add(new LuxuryCar("Harrison", "L6I8R5", 7, false));
        carList.add(new CarRental("Carelton", "L6I8R5", 'R', 5));
        
        for (int i = 0; i < carList.size(); i++){
            System.out.println(carList.get(i).display());
        }
       
    }
}
