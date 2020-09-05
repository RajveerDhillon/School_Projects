/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.project;

import javafx.application.Application;
import static javafx.application.Application.launch;
import javafx.scene.Scene;
import javafx.geometry.HPos;
import javafx.geometry.Pos;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;
import javafx.scene.control.PasswordField;
import javafx.scene.layout.VBox;
import javafx.scene.layout.GridPane;
import javafx.scene.paint.Color;
import javafx.stage.Stage;
import javafx.scene.shape.Rectangle;
import javafx.scene.text.*;
import javafx.stage.Modality;
import javafx.stage.StageStyle;
/**
 *
 * @author Rajveer
 */
public class BankGUI extends Application{
    protected int id = 0;
    
    private static double Xoffset = 0;
    private static double Yoffset = 0;
    
    protected Rectangle banner, logoutButton;
    protected Rectangle closeButton;
    protected Text titleText, logoutText;
    
    protected TextField userInput;
    protected PasswordField passwordInput;
    
    protected Text userText = new Text();
    protected Text userInfoText = new Text();
    protected Text transactions = new Text();
    protected Text closeButtonTxt = new Text();
    protected Scene loginSc;
    protected Scene customerMenuSc;
    protected Scene managerMenuSc;
    
    protected BankDirectory database;
    
    private Stage mainWindow;
    
    public static void run(String[] args){
        launch(args);
    }
    
    protected void SetupWindowEle(){
        
        banner = new Rectangle(300, 30);
        banner.setFill(Color.DARKRED);
        GridPane.setConstraints(banner, 0, 0);
        banner.setOnMousePressed((MouseEvent event) -> {
            Xoffset = mainWindow.getX() - event.getScreenX();
            Yoffset = mainWindow.getY() - event.getScreenY();
        });
        
        banner.setOnMouseDragged((MouseEvent event) -> {  
            mainWindow.setX(event.getScreenX() + Xoffset);
            mainWindow.setY(event.getScreenY() + Yoffset);
        });
        
        titleText = new Text(" BankApp");
        titleText.setFill(Color.WHITE);
        GridPane.setConstraints(titleText, 0, 0);
        GridPane.setHalignment(titleText, HPos.LEFT);
        
        
        
        
        closeButton = new Rectangle(30, 30);
        closeButton.setFill(Color.NAVY);
        GridPane.setConstraints(closeButton, 0, 0);
        GridPane.setHalignment(closeButton, HPos.RIGHT);
        closeButton.setOnMouseClicked((MouseEvent event) -> {
            CloseProgram();
        
         });
        
        closeButtonTxt = new Text(" E ");
        closeButtonTxt.setFill(Color.CRIMSON);
        GridPane.setConstraints(closeButtonTxt, 0, 0);
        GridPane.setHalignment(closeButtonTxt, HPos.RIGHT);
        closeButtonTxt.setOnMouseClicked((MouseEvent event) -> {
            CloseProgram();
        
         });
        
        logoutButton = new Rectangle(80, 40);
        logoutButton.setFill(Color.CRIMSON);
        GridPane.setConstraints(logoutButton, 0, 7);
        GridPane.setHalignment(logoutButton, HPos.RIGHT);
        
        logoutText = new Text("  Logout  ");
        logoutText.setFill(Color.WHITE);
        GridPane.setConstraints(logoutText, 0, 7);
        GridPane.setHalignment(logoutText, HPos.RIGHT);
        logoutText.setOnMouseClicked((MouseEvent event) -> {
        Logout();
        
        });
    }    
        @Override
        public void start(Stage mainStage) throws Exception{
            
            mainWindow = mainStage;
            database = new BankDirectory();
            
            SetupWindowEle();
            customerMenuSc = CustMenuB.Setup(this);
            
            SetupWindowEle();
            managerMenuSc = ManMenuB.Setup(this);
            
            SetupWindowEle();
            loginSc = LoginMenu.Setup(this);
            
            mainWindow.setTitle("Bank Application");
            mainWindow.setScene(loginSc);
            
            mainWindow.initStyle(StageStyle.DECORATED);
            mainWindow.setOnCloseRequest(et -> {
                et.consume();
                CloseProgram();
            });
            mainWindow.show();
            
        }
        
        protected void UpdateUser(){
            System.out.println("UpdateUser has been activated");
            userText.setText(database.getCurrentCustomer().getUsername() + "  " + database.getCurrentCustomer().getLevelStr() + "  $" + Double.toString(database.getCurrentCustomer().getBalance()));
            transactions.setText(database.getCurrentCustomer().getTransaction());
        }
        
        protected void UpdateUserTexts(){
            System.out.println("UpdateUserTexts has been activated");
            userInfoText.setText(database.getCurrentManager().ListCustomers());
            
        }
        
        protected boolean Login(){
            if(database.Login(userInput.getText(), passwordInput.getText())){
                userInput.setText("");
                passwordInput.setText("");
                if(2 == database.getUserType()){
                    mainWindow.setScene(managerMenuSc);
                    UpdateUserTexts();
                }
                else if (1 == database.getUserType()){
                    mainWindow.setScene(customerMenuSc);
                    UpdateUser();
                }
                
                return true;
            }
            else{
                userInput.setText(null);
                passwordInput.setText(null);
                return false;
            }
            
        }
        
        private void Logout(){
            database.Logout();
            mainWindow.setScene(loginSc);
        }
        
        private void CloseProgram(){
            System.out.println("All Data Saved");
            database.Logout();
            mainWindow.close();
        }
        
        protected void PopupWin(String preface, String argument){
            Stage popWin = new Stage();
            popWin.initModality(Modality.APPLICATION_MODAL);
            popWin.setTitle(preface);
            
            Label lab = new Label(argument);
            VBox setupWin = new VBox(60);
            
            setupWin.getChildren().addAll(lab);
            setupWin.setAlignment(Pos.CENTER);
            Scene popSc = new Scene(setupWin);
            popWin.setScene(popSc);
            popWin.showAndWait();
        }
        
        
    
        public BankDirectory getDatabase(){
            return database;
        }
        
        public int getID(){
            return id++;
        }
        
        @Override
        public String toString(){
            return(database.toString() + "" + mainWindow.toString());
        }

    
    
}
