/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project1;

import java.util.Scanner;

/**
 *
 * @author sahib
 */
public class Vigenere {
    
static String generateKey(String key, String message) 
{ 
    int mesLen = message.length(); 
  
    for (int i = 0; ; i++) 
    { 
        if (mesLen == i) 
            i = 0; 
        if (key.length() == message.length()) 
            break; 
        key+=(key.charAt(i)); 
    } 
    return key; 
} 
   
static String encrypt(String key, String message) 
{ 
    String cipher= ""; 
  
    for (int i = 0; i < message.length(); i++) 
    { 
        
        int n = (message.charAt(i) + key.charAt(i)) %26; 
  
       
        n += 'A'; 
  
        cipher += (char)(n); 
    } 
    return cipher; 
} 
  

static String decrypt(String key, String cipher) 
{ 
    String decryption = ""; 
  
    for (int i = 0 ; i < cipher.length() &&  
                            i < key.length(); i++) 
    { 
        
        int n = (cipher.charAt(i) -  
                    key.charAt(i) + 26) %26; 
  
        
        n += 'A'; 
        decryption += (char)(n); 
    } 
    return decryption; 
} 
  
// Driver code 
public static void main(String[] args)  
{ 
            String key, message, cipher;
        Scanner scan = new Scanner(System.in);
        
        System.out.println("Input message: ");
        message = scan.nextLine();
        
        System.out.println("Input Key: ");
        key = scan.nextLine();
        
        key = generateKey(key, message);
        System.out.println(key);
        
        cipher = encrypt(key, message);
        System.out.println("Cipher Message:\n"+cipher);
        
        cipher = decrypt(key, cipher);
        System.out.println("Original Message:\n"+ cipher);
        System.out.println("Check if the Same:"+ (cipher.equals(message)));
        
    }
}