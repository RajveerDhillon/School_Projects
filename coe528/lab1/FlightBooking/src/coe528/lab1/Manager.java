/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.lab1;
import  java.util.ArrayList;
import java.util.Scanner;
/**
 *
 * @author Rajveer
 */
public class Manager {
    ArrayList<Flight> NumOfFlights;
    ArrayList<Ticket> NumOfTickets;
    private static Manager instance = null;
    public static Manager getInstance(){
        if(instance == null){
            instance = new Manager();
        }
        return instance;
    }
    
    private Manager(){
        this.NumOfFlights = new ArrayList<Flight>();
        this.NumOfTickets = new ArrayList<Ticket>();
    }
    
    public void createFlights(){
        int flightNum, cap;
        String origin, destination, departTime;
        double price;
        Scanner scanInt = new Scanner(System.in);
        Scanner scanString = new Scanner(System.in);
        Scanner scanDouble = new Scanner(System.in);
        
        System.out.println("Enter the desired flight number: ");
        flightNum = scanInt.nextInt();
        
        System.out.println("Enter the Capacity: ");
        cap = scanInt.nextInt();
        
        System.out.println("Enter the desired destination: ");
        destination = scanString.nextLine();
        
        System.out.println("Enter the Origin of the flight: ");
        origin = scanString.nextLine();
        
        System.out.println("Enter the departure time and date: ");
        departTime = scanString.nextLine();
        
        System.out.println("Enter the price: ");
        price = scanDouble.nextDouble();
        
        Flight Nflight = new Flight(destination, origin, price, cap, departTime, flightNum);
        
        NumOfFlights.add(Nflight);
        
        System.out.println("The desired flight is made: ");
        System.out.println(Nflight);

    }
    
    public void displayAvailableFlights(String origin, String destination){
        int lengthOfList = NumOfFlights.size();
        int avalSeats;
        boolean check = true;
        String org, dest;
        
        for (int k = 0; k < lengthOfList; k++){
            org = NumOfFlights.get(k).getOrigin();
            dest = NumOfFlights.get(k).getDestination();
            avalSeats = NumOfFlights.get(k).getCapacity();
            if((org.equals(origin) == true) && (dest.equals(destination) == true) && avalSeats > 0){
                if (check == true){
                    System.out.println("List of available flights: ");
                    check = false;
                } 
                System.out.println(NumOfFlights.get(k));
                }
               
        }
        if (check == true){
            System.out.println("No available flights right now.");
        }
        
    }
    
    public Flight getFlight(int flightnumber){
        for (int j = 0; j < NumOfFlights.size();j++){
            if (NumOfFlights.get(j).getFlightNumber() == flightnumber){
                return NumOfFlights.get(j);
            }
        }
        return null;
    }
    
    public void bookseat(int flightnumber, Passenger p){
        boolean check2 = false;
        int counter = 0;
        for(int m = 0; m < NumOfFlights.size(); m++){
            if (NumOfFlights.get(m).getFlightNumber() == flightnumber){
                check2 = true;
                counter = m;
            }
        }
        
     double price;
     if(check2 == true && (NumOfFlights.get(counter).getCapacity() > 0)){
        NumOfFlights.get(counter).bookASeat();
        price = p.applyDiscount(NumOfFlights.get(counter).getOrginalPrice());
        Ticket t = new Ticket(p, NumOfFlights.get(counter), price);
        NumOfTickets.add(t);
        System.out.println("A seat has been booked for flight " + flightnumber);
        System.out.println("Ticket: " + t);
        }
     
     else{
     if (check2 == true && (NumOfFlights.isEmpty())){
         System.out.println("The flight " + flightnumber + " is full you cannot book a ticket for this flight");
     }
     else if (check2 == false){
         System.out.println("The flight " + flightnumber + " does not exist");
     }
         }
    }
    
    public static void main(String[] args){
        Manager Mg = new Manager();
        Flight rF;
        Passenger rP;
        Scanner scan1 = new Scanner(System.in);
        Scanner scan2 = new Scanner(System.in);
        String userInput, destination, origin, name;
        int FN, age, years;
        boolean flag = false;
        
        while (flag != true){
            System.out.println("Enter c to create a flight");
            System.out.println("Enter d to display all flights");
            System.out.println("Enter i to display information on a flight");
            System.out.println("Enter b to book a flight");
            System.out.println("Eneter e to end the program");
            userInput = scan1.nextLine();
            
            switch(userInput){
                case "c":
                    Mg.createFlights();
                    break;
                case "d":
                System.out.println("Enter origin of flight");
                origin = scan1.nextLine();
                System.out.println("Enter the destination of flight");
                destination = scan1.nextLine();
                Mg.displayAvailableFlights(origin, destination);
                break;
                
                case "i":
                    System.out.println("Enter flight number");
                    FN = scan2.nextInt();
                    rF = Mg.getFlight(FN);
                    if(rF == null){
                        System.out.println("Flight " + FN + " does not exist");
                    }
                    else{
                        System.out.println("Information for flight " + FN + ":");
                        System.out.println(rF);
                    }
                    break;
                case "b":
                    System.out.println("If passenger has a membership enter m, nit passenger does not have a membership enter n");
                    userInput = scan1.nextLine();
                    System.out.println("Enter passenger's age");
                    age = scan2.nextInt();
                    System.out.println("Enter passenger's name");
                    name = scan1.nextLine();
                    System.out.println("Enter flight number");
                    FN = scan2.nextInt();
                    
                    if (userInput.equals("n")){
                        rP = new Non_Member(age, name);
                        Mg.bookseat(FN, rP);
                }
                    else if (userInput.equals("m")){
                        System.out.println("Enter the years in which the membership was held:");
                        years = scan2.nextInt();
                        rP = new Member(age, name, years);
                        Mg.bookseat(FN, rP);
                    }
                break;    
                
                case"e":
                    flag = true;
                    System.out.println("Program has ended");
                    break;
                default:
                    System.out.println("You entered an invalid input");
                    break;
            }       
            
            
        }
    }
    
}
