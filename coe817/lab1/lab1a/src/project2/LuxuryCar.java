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
public class LuxuryCar extends CarRental{
    
    private boolean chauffer;
    
    public LuxuryCar(String name, String zip, int daylength, boolean chauffer){
        
        super(name, zip, daylength);
        this.chauffer = chauffer;
        this.setSize('L');
        this.setCost(79.99);
        
        if (chauffer == true){
            this.setTotalFee(this.getCost() * this.getDayLength() + 200);
            
        }
        else {this.setTotalFee(this.getDayLength() * this.getCost());}
    }
    
    public boolean getChauffer(){
        return chauffer;
    }
    public void setChauffer(boolean chauffer){
        this.chauffer = chauffer;
    }
    
    @Override
    public String display(){
                return "Name: " + this.getName() + ", Zip: " + this.getZip() + 
                ", Size: " + this.getSize() + ", cost: " + this.getCost() + 
                ", Length of Rental Days: " + this.getDayLength() + 
                ", Total Fees: " + this.getTotalFee() + ", Chauffer:" + chauffer;
    }
    
}
