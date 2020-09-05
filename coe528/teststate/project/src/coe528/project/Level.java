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
public abstract class Level implements Serializable{
    public abstract void switchState(ContextCustomer c);
}
