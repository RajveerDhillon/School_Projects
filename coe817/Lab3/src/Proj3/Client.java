/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Proj3;

import java.io.IOException;
import java.io.PrintStream;
import java.net.Socket;
import java.security.PublicKey;
import java.security.PrivateKey;
import java.security.KeyPair;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.spec.X509EncodedKeySpec;
import java.util.Base64;
import java.util.Date;
import java.util.Scanner;
import java.text.SimpleDateFormat;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import sun.misc.BASE64Encoder;

/**
 *
 * @author sahib
 */
public class Client {
    public static void main(String[] args) throws IOException {
        
        KeyPairGenerator kpgenA;
        KeyPair kpA;
        PublicKey pbA, pbB;
        PrivateKey prA;
        Cipher rsaCiph;
        String IDa = "Initiator A";
        String sessionKey = "SESSION KEY ESTABLISHED";
        
        System.out.println("Client: ");
        
        Socket ss = new Socket("localhost", 1010);
        
        Scanner serverIn = new Scanner(ss.getInputStream());
        Scanner userInput = new Scanner(System.in);
        
        PrintStream printStr = new PrintStream(ss.getOutputStream());
        
        System.out.println("Connected to Server");
        
        try{
            
            //Generate a key pair for A
            kpgenA = KeyPairGenerator.getInstance("RSA");
            kpA = kpgenA.generateKeyPair();
            pbA = kpA.getPublic();
            prA = kpA.getPrivate();
            
            String publicB = serverIn.nextLine();
            byte [] keyByteB = Base64.getDecoder().decode(publicB);
            X509EncodedKeySpec X509Key = new X509EncodedKeySpec(keyByteB);
            pbB = KeyFactory.getInstance("RSA").generatePublic(X509Key);
            
            rsaCiph = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            rsaCiph.init(Cipher.ENCRYPT_MODE,pbB);
            
            SimpleDateFormat dateForm = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
            String date_A = dateForm.format(new Date());
            
            byte[] idAbyte = rsaCiph.doFinal(IDa.getBytes("UTF-8"));
            byte[] nonceAbyte = rsaCiph.doFinal(date_A.getBytes("UTF-8"));
            
            
            String encodIDa = Base64.getEncoder().encodeToString(idAbyte);
            String encnonceA = Base64.getEncoder().encodeToString(nonceAbyte);
            
            //Checking for the nonce and id of A encrypted
            printStr.println(encodIDa);
            printStr.println(encnonceA);
            
            
            //Send public key A to B
            String pubA = Base64.getEncoder().encodeToString(pbA.getEncoded());
            printStr.println(pubA);
            
            String Nonce_A = serverIn.nextLine();
            String Nonce_B = serverIn.nextLine();
            
            rsaCiph.init(Cipher.DECRYPT_MODE, prA);
            byte[] nonceA2byte = Base64.getDecoder().decode(Nonce_A);
            byte[] nonceB2byte = Base64.getDecoder().decode(Nonce_B);
            Nonce_A = new String(rsaCiph.doFinal(nonceA2byte));
            Nonce_B = new String(rsaCiph.doFinal(nonceB2byte));
            System.out.println("Nonce A: " + Nonce_A + "\nNonce B:" + Nonce_B);
            
            System.out.println("Enter Message to be Sent to Server:");
            rsaCiph.init(Cipher.ENCRYPT_MODE, pbB);
            nonceB2byte = rsaCiph.doFinal(Nonce_B.getBytes("UTF-8"));
            String encryptNonceB = Base64.getEncoder().encodeToString(nonceB2byte);
            printStr.println(encryptNonceB);
            byte[] KSbyte = rsaCiph.doFinal(sessionKey.getBytes("UTF-8"));
            String encrKS = Base64.getEncoder().encodeToString(KSbyte);
            printStr.println(encrKS);
            
            String userS = userInput.nextLine();
            
            SecretKeyFactory keyFact = SecretKeyFactory.getInstance("DES");
            DESKeySpec desKey = new DESKeySpec(sessionKey.getBytes());
            SecretKey secKey = keyFact.generateSecret(desKey);
            Cipher desCiph = Cipher.getInstance("DES/ECB/PKCS5Padding");
            desCiph.init(Cipher.ENCRYPT_MODE, secKey);
            
            byte[] messbyte = desCiph.doFinal(userS.getBytes("UTF-8"));
            String encryptMess = new BASE64Encoder().encode(messbyte);
            printStr.println(encryptMess);
            
            System.out.println("Message Sent. Look at Server Output");
            
        } catch (Exception e){
            System.out.println("Error General");
        }
    }
}
