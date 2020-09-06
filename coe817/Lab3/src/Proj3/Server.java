/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Proj3;

import java.io.IOException;
import java.io.PrintStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.security.PublicKey;
import java.security.PrivateKey;
import java.security.KeyPair;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.spec.X509EncodedKeySpec;
import java.util.Base64;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Scanner;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import sun.misc.BASE64Decoder;
/**
 *
 * @author sahib
 */
public class Server {
    public static void main(String[] args) throws IOException {
        
        PublicKey pbA, pbB;
        PrivateKey prB;
        Cipher rsaCiph;
        KeyPair pairB;
        KeyPairGenerator kpgenB;
        
        System.out.println("Server: ");
        System.out.println("Connecting.......");
        ServerSocket ss = new ServerSocket(1010);
        
        Socket ssc = ss.accept();
        
        Scanner clientIn = new Scanner(ssc.getInputStream());
        
        System.out.println("Connected!");
        PrintStream printStr = new PrintStream(ssc.getOutputStream());
        
        
        
        try {
            
            kpgenB = KeyPairGenerator.getInstance("RSA");
            pairB = kpgenB.generateKeyPair();
            pbB = pairB.getPublic();
            prB = pairB.getPrivate();
            
            String publicS_B = Base64.getEncoder().encodeToString(pbB.getEncoded());
            printStr.println(publicS_B);
            
            rsaCiph = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            rsaCiph.init(Cipher.DECRYPT_MODE, prB);
            
            String IDa = clientIn.nextLine();
            String nonceA = clientIn.nextLine();
            byte[] Abyte = Base64.getDecoder().decode(IDa);
            byte[] Anoncebyte = Base64.getDecoder().decode(nonceA);
            IDa = new String(rsaCiph.doFinal(Abyte));
            nonceA = new String(rsaCiph.doFinal(Anoncebyte));
            System.out.println(IDa + " " + nonceA);
            
            
            String publicS_A = clientIn.nextLine();
            byte[] Akeybyte = Base64.getDecoder().decode(publicS_A);
            X509EncodedKeySpec X509key = new X509EncodedKeySpec(Akeybyte);
            pbA = KeyFactory.getInstance("RSA").generatePublic(X509key);
            
            SimpleDateFormat dteFor = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
            String dtB = dteFor.format(new Date());
            rsaCiph.init(Cipher.ENCRYPT_MODE, pbA);
            byte[] Anoncebyte2 = rsaCiph.doFinal(nonceA.getBytes("UTF-8"));
            byte[] Bnoncebyte2 = rsaCiph.doFinal(dtB.getBytes("UTF-8"));
            String Anonceencrypt = Base64.getEncoder().encodeToString(Anoncebyte2);
            String Bnonceencrypt = Base64.getEncoder().encodeToString(Bnoncebyte2);
            
            printStr.println(Anonceencrypt);
            printStr.println(Bnonceencrypt);
            
            rsaCiph.init(Cipher.DECRYPT_MODE, prB);
            String nonceB = clientIn.nextLine();
            byte[] BCnoncebyte = Base64.getDecoder().decode(nonceB);
            nonceB = new String(rsaCiph.doFinal(BCnoncebyte));
            System.out.println(nonceB);
            
            String sessionKey = clientIn.nextLine();
            byte[] sessionKeybyte = Base64.getDecoder().decode(sessionKey);
            String sessionKeydecode = new String(rsaCiph.doFinal(sessionKeybyte));
            System.out.println(sessionKeydecode);
            
            String encodeMessage = clientIn.nextLine();
            System.out.println(encodeMessage);
            
            SecretKeyFactory KFact = SecretKeyFactory.getInstance("DES");
            DESKeySpec desKey = new DESKeySpec(sessionKeydecode.getBytes());
            SecretKey secKey = KFact.generateSecret(desKey);
            Cipher desCiph = Cipher.getInstance("DES/ECB/PKCS5Padding");
            desCiph.init(Cipher.DECRYPT_MODE, secKey);
            
            byte[] decB = new BASE64Decoder().decodeBuffer(encodeMessage);
            byte[] deEncB = desCiph.doFinal(decB);
            String decryptBval = new String(deEncB);
            System.out.println("Message From Client:");
            System.out.println(decryptBval);
            
        }
        catch (Exception e)
        {
            System.out.println("Error General");
        }        
    }
}
