/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project2;

/**
 *
 * @author sahib
 */
public class CarRental {
    private String  name;
    private String  zip;
    private char    size;
    private int     daylength;
    private double  cost;
    private double  totalFee;
    
    public CarRental(String name, String zip, int daylength){
        
        this.name = name;
        this.zip = zip;
        this.daylength = daylength;
    }


    public CarRental(String name, String zip, char size, int daylength){
        
        this.name = name;
        this.zip = zip;
        this.size = size;
        this.daylength = daylength;
        
        switch (size){
            
            case 'S':
                cost = 29.99;
                break;
            
            case 'M':
                cost = 38.99;
                break;
            
            default:
                cost = 43.5;
        }
        
        totalFee = cost*daylength;
    }
    
    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public char getSize() {
        return size;
    }

    public void setSize(char size) {
        this.size = size;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public int getDayLength() {
        return daylength;
    }

    public void setDayLength(int dayLength) {
        this.daylength = dayLength;
    }

    public double getTotalFee() {
        return totalFee;
    }

    public void setTotalFee(double totalFee) {
        this.totalFee = totalFee;
    }
  
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String display() {
        return "Name: " + name + ", Zip: " + zip + ", Size: " + 
                size + ", cost: " + cost + ", Length of Rental Days: " + daylength + 
                ", Total Fee: " + totalFee;
    }

    
    
}