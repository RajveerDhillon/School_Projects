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
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.GridPane;
import javafx.scene.paint.Color;
import javafx.scene.shape.Rectangle;
import javafx.scene.shape.Circle;
import javafx.scene.text.Text;


/**
 *
 * @author Rajveer
 */


final public class CustMenuB {
    public static Scene Setup(BankGUI win){
        GridPane layout = new GridPane();
        layout.setPadding(new Insets(0,0,0,0));
        layout.setVgap(10);
        layout.setHgap(10);
        
        win.banner.setWidth(700);
        win.titleText.setText(" Bank App - Customer ");
        
        win.transactions = new Text("");
        GridPane.setHalignment(win.transactions, HPos.LEFT);
        
        ScrollPane activeTransactionScr = new ScrollPane(win.transactions);
        activeTransactionScr.setHbarPolicy(ScrollPane.ScrollBarPolicy.ALWAYS);
        activeTransactionScr.setVbarPolicy(ScrollPane.ScrollBarPolicy.ALWAYS);
        
        GridPane.setConstraints(activeTransactionScr, 0, 1);
        GridPane.setHalignment(activeTransactionScr, HPos.LEFT);
        activeTransactionScr.setPrefSize(10, 300);
        
        //win.userInfoText = new Text("");
        //GridPane.setConstraints(win.userInfoText, 0, 2);
        //GridPane.setHalignment(win.userInfoText, HPos.LEFT);
        
        TextField inFld = new TextField();
        inFld.setTranslateX(400);
        inFld.setTranslateY(270);
        inFld.setMaxWidth(300);
        inFld.setPromptText("Enter Amount");
        
        Circle logoutCir = new Circle(40);
        logoutCir.setFill(Color.CRIMSON);
        GridPane.setConstraints(logoutCir, 0, 4);
        GridPane.setHalignment(logoutCir, HPos.LEFT);
        
        Rectangle depositRec = new Rectangle (90, 40);
        depositRec.setFill(Color.CRIMSON);
        GridPane.setConstraints(depositRec, 0, 5);
        GridPane.setHalignment(depositRec, HPos.LEFT);
        
        Text depText = new Text("Deposit");
        depText.setFill(Color.NAVY);
        GridPane.setConstraints(depText, 0, 5);
        GridPane.setHalignment(depText, HPos.LEFT);
        depText.setTranslateX(10);
        
        depositRec.setOnMouseClicked((MouseEvent event) -> {
           
            try {
                win.getDatabase().getCurrentCustomer().Deposit(Double.parseDouble(inFld.getText()));
                
            }
            catch (NumberFormatException es){
                win.PopupWin("Deposit Event has Failed", "Please Enter a Vaild Amount for Deposit");
            }
            win.UpdateUser();
            inFld.setText("");
            
        });
        
        Rectangle withdrawRec = new Rectangle (90, 40);
        withdrawRec.setFill(Color.CRIMSON);
        GridPane.setConstraints(withdrawRec, 0, 5);
        GridPane.setHalignment(depositRec, HPos.LEFT);
        withdrawRec.setTranslateX(100);
        
        Text witText = new Text("Withdraw");
        witText.setFill(Color.NAVY);
        GridPane.setConstraints(witText, 0, 5);
        GridPane.setHalignment(witText, HPos.LEFT);
        witText.setTranslateX(110);
        
        withdrawRec.setOnMouseClicked((MouseEvent event) -> {
           
            try {
                win.getDatabase().getCurrentCustomer().Withdraw(Double.parseDouble(inFld.getText()));
                        
            }
            catch (NumberFormatException es){
                win.PopupWin("Withdraw Event has Failed", "Please Enter a Vaild Amount for Withdrawal");
            }
            win.UpdateUser();
            inFld.setText("");
            
        });
       
        Rectangle purchaseRec = new Rectangle (90, 40);
        purchaseRec.setFill(Color.CRIMSON);
        GridPane.setConstraints(purchaseRec, 0, 5);
        GridPane.setHalignment(purchaseRec, HPos.LEFT);
        purchaseRec.setTranslateX(200);
        
        Text purText = new Text("Purchase");
        depText.setFill(Color.NAVY);
        GridPane.setConstraints(purText, 0, 5);
        GridPane.setHalignment(purText, HPos.LEFT);
        purText.setTranslateX(210);
        
        purchaseRec.setOnMouseClicked((MouseEvent event) -> {
           
            try {
                if(!win.getDatabase().getCurrentCustomer().OnlinePur(Double.parseDouble(inFld.getText())))
                    win.PopupWin("Purchase Event has Failed", "Insufficent Funds or Minimum Price($50) not Reached.");
                
            }
            catch (NumberFormatException es){
                win.PopupWin("Purchase Event has Failed", "Please Enter a Vaild Purchase.");
            }
            win.UpdateUser();
            inFld.setText("");
            
        });
        
        GridPane.setConstraints(win.logoutButton, 0, 5);
        GridPane.setConstraints(win.logoutText, 0, 5);
        win.logoutButton.setTranslateX(0);
        win.logoutText.setX(310);
       
        layout.getChildren().addAll(win.banner, win.titleText, win.closeButton, activeTransactionScr, win.userInfoText, inFld, depositRec, depText, withdrawRec, witText, purchaseRec, purText, win.logoutButton, win.logoutText);
        
        Scene finalScene = new Scene (layout, 700, 350);
        return finalScene;
        
        
    }
    @Override
    public String toString(){
        return("Customer Menu Builder");
    }
}
