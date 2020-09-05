/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.lab1;

/**
 *
 * @author r9dhillo
 */
public class Ticket {
    private Passenger passen;
    private Flight flit;
    private double prc;
    private static int numTicket;
    
    public Ticket(Passenger p, Flight flightobj, double price){
        passen = p;
        flit = flightobj;
        prc = price;
        numTicket++;
    }
    
    public Passenger getPassenger(){
        return passen;
    }
    
    public Flight getFlight(){
        return flit;
    }
    
    public double getPrice(){
        return prc;
    }
    
    public void setPassenger(int age, String name){
        this.passen.age = age;
        this.passen.name = name;
    }
    
    public void setFlight(String destination, String origin, double originalPrice, int capacity, String departureTime, int flightNumber){
        this.flit.flightNum = flightNumber;
        this.flit.depTime = departureTime;
        this.flit.dest = destination;
        this.flit.numOfSeatsLeft = capacity;
        this.flit.orgPrice = originalPrice;
        this.flit.orig = origin;
    }
    
    @Override
        public String toString(){
            return("Name: " + passen.name + ", FlightNumber: " + numTicket + ", From: " + flit.orig + ", to " + flit.dest + ", Departure Time: " + flit.depTime + ", Price: " + flit.orgPrice);
        }
}
