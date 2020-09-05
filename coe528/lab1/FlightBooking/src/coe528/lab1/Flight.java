/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.lab1;
/**
 *
 * @author r9dhillo
 * Name: Rajveer Dhillon
 * Student number: 500777569
 * Section: 8
 */


public class Flight {
    protected int flightNum;
    protected int numOfSeatsLeft;
    protected double orgPrice;
    
    protected String orig;
    protected String dest;
    protected String depTime;
    
    public Flight(String destination, String origin,double originalPrice, int capacity, String departureTime, int flightNumber){
        dest = destination;
        orig = origin;
        orgPrice = originalPrice;
        numOfSeatsLeft = capacity;
        depTime = departureTime;
        flightNum = flightNumber;
        
        if (dest.equals(orig)){
            throw new IllegalArgumentException("The Origin and Destination cannot be the same."); 
       
        }
    }
        
        public String getDestination(){
            return dest;
        }
        
        public int getFlightNumber(){
            return this.flightNum;
        }
        
        public int getCapacity(){
            return numOfSeatsLeft;
        }
        
        public double getOrginalPrice(){
            return orgPrice;
        }
        
        public String getOrigin(){
            return orig;
        }
        
        
        public String getDepartureTime(){
            return depTime;
        }
        
        public void setDestination(String destination1){
            this.dest = destination1;
        }
        
        public void setDepartureTime(String departure){
            this.depTime = departure;
        }
        
        public void setOrigin(String origin1){
            this.orig = origin1;
        }
        
        public void setDestination(int flitnum){
            this.flightNum = flitnum;
        }
        
        public void setCapacity(int capa){
            this.numOfSeatsLeft = capa;
        }
        
        public void setOriginalPrice(double oPrice){
            this.orgPrice = oPrice;
        }
    /**
     *
     * @return the boolean
     */
    public boolean bookASeat (){
            if (numOfSeatsLeft > 0){
                numOfSeatsLeft--;
                return (true);
            }
            else {return (false);}
        }
        @Override
        public String toString(){
            return ("Flight: " + flightNum + ", " + orig + " to " + dest + ", " + depTime + ", original price: $" + orgPrice);
        }
    }


