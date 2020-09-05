/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * 


* Rajveer Dhillon
* 500777569
* section 8


 */
package coe528.lab2;
import java.util.Scanner;

/**
 *
 * @author Rajveer
 */
public class Palindrome {
    //Requires:<numbered input from 1 to 4>
    //Modifies: <none>
    //Effects: <Returns true if string is palindrome else false>
    
    public static boolean isPalindrome(String a){
        try{
        if(a.length() > 1){    
        String[] strA = a.split("");
        for (int i = 0; i < a.length(); i++){
            if(!strA[i].equals(strA[a.length() - i - 1])){
                return false;
            }
        }
        return true;
    }
        else return false;
        }
        catch (NullPointerException e){
            return false;
        }
    }
    
    public static void main(String[] args){
        Scanner scan1 = new Scanner(System.in);
        boolean end = false;
        int userIn;
        while(end != true){
            System.out.println("Enter the desired command line arguement. 5 is to end program");
            userIn = scan1.nextInt();
            
            switch(userIn){
                
                case 1:
                    System.out.println(isPalindrome(null));
                    break;
                
                case 2:
                    System.out.println(isPalindrome(""));
                    break;
                
                case 3:
                    System.out.println(isPalindrome("deed"));
                    break;
                    
                case 4:
                    System.out.println(isPalindrome("abcd"));
                    break;
                
                case 5:
                    end = true;
                    System.out.println("Program has ended");
                    break;
                    
                default:
                    System.out.println("You entered an invalid input");
                    break;
                }
       
            }    
        }
    }

