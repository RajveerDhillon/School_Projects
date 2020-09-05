/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.project;

import javafx.geometry.HPos;
import javafx.geometry.Insets;
import javafx.scene.Scene;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyCode;
import javafx.scene.layout.GridPane;
import javafx.scene.paint.Color;
import javafx.scene.shape.Box;
import javafx.scene.shape.Rectangle;
import javafx.scene.text.Text;

/**
 *
 * @author Rajveer
 */
public class LoginMenu {
    protected static Scene Setup(BankGUI win){
        GridPane layout = new GridPane();
        layout.setPadding(new Insets(0,0,0,0));
        layout.setVgap(10);
        layout.setHgap(5);
        
        Box sampleBox = new Box(200,100,200);
        GridPane.setConstraints(sampleBox, 0, 1);
        GridPane.setHalignment(sampleBox, HPos.CENTER);
        
        win.userInput = new TextField();
        win.userInput.setPromptText("Username");
        GridPane.setConstraints(win.userInput, 0, 2);
        
        win.passwordInput = new PasswordField();
        win.passwordInput.setPromptText("Password");
        GridPane.setConstraints(win.passwordInput, 0, 3);
        
        Rectangle loginRec = new Rectangle(90, 40);
        loginRec.setFill(Color.CRIMSON);
        GridPane.setConstraints(loginRec, 0, 4);
        GridPane.setHalignment(loginRec, HPos.CENTER);
        
        Text loginTxt = new Text("LOGIN");
        loginTxt.setFill(Color.WHITE);
        GridPane.setConstraints(loginTxt, 0, 4);
        GridPane.setHalignment(loginTxt, HPos.CENTER);
        
        loginRec.setOnMouseClicked(ed -> {
            if(!win.Login()){
                win.PopupWin("Login Failed", "Enter Valid Username or Password");
            }
            
        });
        win.passwordInput.setOnKeyPressed(er -> {
            if(er.getCode() == KeyCode.ENTER){
            if(!win.Login()){
                win.PopupWin("Login Failed", "Enter Valid Username or Password");
            }
            }
            
        });
        
        layout.getChildren().addAll(win.banner, win.titleText, win.closeButton, sampleBox, win.userInput, win.passwordInput, loginRec, loginTxt);
        
        Scene loginScene = new Scene(layout, 300, 440);
        return loginScene;
        
    }
}
