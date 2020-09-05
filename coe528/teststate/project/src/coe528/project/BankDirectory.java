/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.project;
import java.nio.file.Paths;
import java.io.IOException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
/**
 *
 * @author Rajveer
 */
public class BankDirectory implements Serializable{
    private User currentUser;
    private int currentUserType;
    
    protected static final String directory = (Paths.get(".").toAbsolutePath().normalize().toString()) + "\\src\\dir\\Profiles\\";
    
    public BankDirectory(){
        
        writeObject(new Manager(directory), directory + "admin.ser");
    }
    
    
    
    
    
    protected static boolean deleteObject(String filename){
        File userProf = new File(filename);
        
        if (userProf.exists())
            return userProf.delete();
        else return false;
    }
    
    protected static User[] ListObjects(){
        ObjectInputStream inou = null;
        File[] fileList = (new File(directory)).listFiles();
        User[] outputList = new User[fileList.length];
        
        for(int i = 0; i < fileList.length; i++){
            try{
                inou = new ObjectInputStream(new FileInputStream(fileList[i]));
                outputList[i] = (User) inou.readObject();
                inou.close();
            }
            catch(IOException | ClassNotFoundException er){
                er.printStackTrace();
                try{
                    inou.close();
                }
                catch(IOException er2){
                    System.out.println("ListObjects catch catch has been activated");
                }
            }
        }
        return outputList;
    }
    
    protected boolean LoadObjects(String user){
        FileInputStream fileIn = null;
        ObjectInputStream inpou = null;
        try{
            fileIn = new FileInputStream(new File(directory + user + ".ser"));
            inpou = new ObjectInputStream(fileIn);
            
            currentUser = (User) inpou.readObject();
            
            fileIn.close();
            inpou.close();
            
            return true;
        }
        catch(IOException | ClassNotFoundException et){
            System.out.println("File Not Found");
            try{
                fileIn.close();
                inpou.close();
            }
            catch(IOException ey){
                System.out.println("LoadObject catch catch has been activated");
            }
        }
        return false;
    }
    
    /**
     *
     * @param obj
     * @param filename
     * @return
     */
    public static boolean writeObject(Object obj, String filename){
        FileOutputStream fos = null;
        ObjectOutputStream oos = null;
        try{
            fos = new FileOutputStream(filename);
            oos = new ObjectOutputStream(fos);
            oos.writeObject(obj);
            oos.close();
            fos.close();
            return true;
        }
        catch(IOException e){
            try{
                oos.close();
                fos.close();
            }
            catch(IOException ex){
                System.out.println("WriteObject catch catch has been activated");
            }
            return false;
        }
        
    }
    
    public boolean Login(String user, String pass){
        if(RepInv1(user) == true){
            if(currentUser.Login(user, pass)){
                currentUserType = currentUser.getRole();
                return true;
            }
            else{
                currentUser = null;
                currentUserType = 0;
                return false;
            }
            
        }
        else return false;
    }
    
    public void Logout(){
        if(RepInv2() == true){
            currentUser.LogoutAll();
            writeObject(currentUser, directory + currentUser.getUsername() + ".ser");
            System.out.println("Saved the user");
        }
        currentUser = null;
        currentUserType = 0;
    }
    
    
    public int getUserType(){
        return currentUserType;
    }
    
    public ContextCustomer getCurrentCustomer(){
        if(currentUser.getRole() == 1)
            return (ContextCustomer) (currentUser);
        else return null;
    }
    
    public Manager getCurrentManager(){
        if(currentUser.getRole() == 2)
            return (Manager)(currentUser);
        else return null;
    }
    
    public String getUserString(){
        if (true == RepInv2())
            return currentUser.toString();
        else return "";
    }
    
    @Override
    public String toString(){
        if(currentUserType == 2)
            return ("Manager");
        else return("Customer");
    }
    
    
    
    private boolean RepInv1(String user){
                if(currentUser != null || !LoadObjects(user)){
                    return false;
                }
                else return true;
    }
    
    private boolean RepInv2(){
        if(currentUser != null){
            return true;
        }
        else return false;
    }
    
}

