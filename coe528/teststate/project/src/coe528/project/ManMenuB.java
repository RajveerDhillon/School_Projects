/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.project;

import javafx.geometry.HPos;
import javafx.geometry.Insets;
import javafx.scene.Scene;
import javafx.scene.control.ScrollPane;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyCode;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.GridPane;
import javafx.scene.paint.Color;
import javafx.scene.shape.Rectangle;
import javafx.scene.text.Text;

/**
 *
 * @author Rajveer
 */
public class ManMenuB {
    protected static Scene Setup(BankGUI win){
        GridPane layout = new GridPane();
        layout.setPadding(new Insets(0,0,0,0));
        layout.setVgap(8);
        layout.setHgap(3);
        
        win.banner.setWidth(700);
        win.titleText.setText(" Bank App - Manager ");
        
        
        
        ScrollPane activeTransactionUScr = new ScrollPane(win.userInfoText);
        activeTransactionUScr.setHbarPolicy(ScrollPane.ScrollBarPolicy.ALWAYS);
        activeTransactionUScr.setVbarPolicy(ScrollPane.ScrollBarPolicy.ALWAYS);
        
        GridPane.setConstraints(activeTransactionUScr, 0, 1);
        GridPane.setHalignment(activeTransactionUScr, HPos.LEFT);
        activeTransactionUScr.setPrefSize(10, 300);
        
        Rectangle addUserRec = new Rectangle(90, 40);
        addUserRec.setFill(Color.CRIMSON);
        GridPane.setConstraints(addUserRec, 0, 2);
        GridPane.setHalignment(addUserRec, HPos.LEFT);
        
        Rectangle delUserRec = new Rectangle(90, 40);
        delUserRec.setFill(Color.CRIMSON);
        GridPane.setConstraints(delUserRec, 0, 2);
        GridPane.setHalignment(delUserRec, HPos.LEFT);
        delUserRec.setTranslateX(100);
        
        Text delUserTxt = new Text("Delete User");
        delUserTxt.setFill(Color.WHITE);
        GridPane.setConstraints(delUserTxt, 0, 2);
        GridPane.setHalignment(delUserTxt, HPos.LEFT);
        delUserTxt.setTranslateX(110);
        
        Text addUserTxt = new Text("Create User");
        addUserTxt.setFill(Color.WHITE);
        GridPane.setConstraints(addUserTxt, 0, 2);
        GridPane.setHalignment(addUserTxt, HPos.LEFT);
        
        TextField userFld = new TextField();
        GridPane.setConstraints(userFld, 0, 2);
        //userFld.setTranslateX(100);
        //userFld.setMaxWidth(120);
        GridPane.setConstraints(userFld, 0, 4);
        GridPane.setHalignment(userFld, HPos.CENTER);
        userFld.setPromptText("Username");
        
        TextField passFld = new TextField();
        GridPane.setConstraints(passFld, 0, 5);
        GridPane.setHalignment(passFld, HPos.CENTER);
        //passFld.setTranslateX(250);
        //passFld.setMaxWidth(120);
        passFld.setPromptText("Password");
        
        TextField depFld = new TextField();
        GridPane.setConstraints(depFld, 0, 6);
        GridPane.setHalignment(depFld, HPos.CENTER);
        //depFld.setTranslateX(400);
        //depFld.setMaxWidth(120);
        depFld.setPromptText("Initial Deposit");
        
        
        
        addUserRec.setOnMouseClicked((MouseEvent event) -> {
            try{
                if(win.database.getCurrentManager().addCustomer(userFld.getText(), passFld.getText(), "" + win.getID(), Double.parseDouble(depFld.getText())))
                    win.PopupWin("Success", "Successfully Created the User.");
            }
            catch(NumberFormatException em){
                win.PopupWin("Failed", "Error on the Amount Entered or Insufficient Amount");
            }
            win.UpdateUserTexts();
            userFld.setText("");
            passFld.setText("");
            depFld.setText("");
        });
        
        depFld.setOnKeyPressed(key -> {
            if(key.getCode() == KeyCode.ENTER) {
                
                try{
                    if(win.getDatabase().getCurrentManager().addCustomer(userFld.getText(), passFld.getText(), "" + win.getID(), Double.parseDouble(depFld.getText())))
                        win.PopupWin("Success", "Successfully Created User.");
                    else win.PopupWin("Failed", "Error in Creating User. Enter Valid Information on User");
                
                }
                catch(NumberFormatException ek){
                    win.PopupWin("Failed", "Error on the Amount Entered or Insufficient Funds");
                
                }
                
                win.UpdateUserTexts();
                userFld.setText("");
                passFld.setText("");
                depFld.setText("");
            }
        });
        
        delUserRec.setOnMouseClicked(es -> {
            if(win.getDatabase().getCurrentManager().deleteCustomer(userFld.getText()))
                win.PopupWin("Success", "Specified User Deleted");
            else win.PopupWin("Failed", "Error in Deleting Specified User, Enter Appropriate Info");
            
            win.UpdateUserTexts();
            userFld.setText("");
            passFld.setText("");
            depFld.setText("");
        });
        
        delUserRec.setOnKeyPressed(es -> {
            if(es.getCode() == KeyCode.DELETE){
            if(win.getDatabase().getCurrentManager().deleteCustomer(userFld.getText()))
                win.PopupWin("Success", "Specified User Deleted");
            else win.PopupWin("Failed", "Error in Deleting Specified User, Enter Appropriate Info");
            
            win.UpdateUserTexts();
            userFld.setText("");
            passFld.setText("");
            depFld.setText("");
            }
        });
        
        
        layout.getChildren().addAll(win.banner, win.titleText, win.closeButton, activeTransactionUScr, addUserRec, addUserTxt, userFld, passFld, depFld, delUserRec, delUserTxt, win.logoutButton, win.logoutText);
        Scene Manscene = new Scene(layout, 700, 500);
        return Manscene;
                
        
    }
    
    @Override
    public String toString(){
        return ("Manager Menu Builder");
    }
}
