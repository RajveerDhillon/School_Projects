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
public abstract class User implements Serializable{
    private String username, password;
    private int role;
    
    protected User (String user, String pass, int role){
        this.username = user;
        this.password = pass;
        this.role = role;
    }
    
    protected boolean LoginType(String us, String pas){
        return (this.username.equals(us) && this.password.equals(pas));
    }
    
    abstract protected void LogoutAll();

    protected String getUsername(){
        return username;
    } 
    
    protected int getRole(){
        return role;
    }

    boolean Login(String user, String pass) {
        return(this.username.equals(user) && this.password.equals(pass));
    }

    void Logouts() {
        
    }
    
    
}
