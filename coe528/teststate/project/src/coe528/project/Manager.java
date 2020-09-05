/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.project;

import java.io.Serializable;

/**
 *
 * @author Rajveer
 */
public class Manager extends User implements Serializable {
    private final String directory;
    
    protected Manager(String directory){
        super("admin", "admin", 2);
        this.directory = directory;
    }
    
    protected boolean addCustomer(String user, String pass, String accountID, double inDep){
        if(true == RepInv(inDep, user, 1)){
            ContextCustomer newCustomer = new ContextCustomer(user, pass, accountID, inDep);
            return BankDirectory.writeObject(newCustomer, directory + user + ".ser");
            //return true;
        }
        else return false;
    }
    
    protected boolean deleteCustomer(String user){
        if(true == RepInv(0, user, 2)){
            try{
                System.out.println("Attempting to delete specified user");
                return BankDirectory.deleteObject(directory + user + ".ser");
                //return true;
            }
            catch (Exception e){
                System.out.println("ERROR IN DELETION");
                return false;
            }
        }
        return false;
        
    }
    
    protected String ListCustomers(){
        String outputStr = "";
        for (User u: BankDirectory.ListObjects()){
            outputStr += u.toString() + "\n";
        }
        return outputStr;
    }

    @Override
    protected void LogoutAll() {
        
    }
    
    private boolean RepInv(double val, String user, int st){
        switch (st){
            case 1:
                if(val >= 100 && !user.equals("admin") && (true)){
                    return true;
            }
                else return false;
            case 2:
                if(!user.equals("admin")){
                    return true;
                }
                else return false;
        }
        return false;
        
        
    }
    
    @Override
    public String toString(){
        return("Username : admin, Role: " + super.getRole());
    }
    
}
