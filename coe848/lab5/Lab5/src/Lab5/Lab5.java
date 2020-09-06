/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Lab5;

import java.sql.*;
import java.util.*;
import java.util.logging.Logger;
/**
 *
 * @author sahib
 */
public class Lab5 {
    
    public static String url = "jdbc:sqlite:VideoGameDB.db";
    
    //Query 1
    public static void query1(Connection c){
        
        String query = "Select Video_Game.Title, Distribute.'Release Date North America',MAX(Distribute.Copies_Sold) From Video_Game Left Join Distribute Using (vgID) Where (Distribute.'Release Date North America' < Distribute.'Release Date Japan')";
        int i = 0;
        try{
            
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            
            ResultSet myRes = myStmt.executeQuery(query);
            
            while(myRes.next()){
                i = 1;
                String title = myRes.getString(i++);
                String releaseNA = myRes.getString(i++);
                String cop = myRes.getString(i++);
                
                System.out.println("Title: " + title + ". Release in NA: " + releaseNA + ". Copies Sold: "+ cop);
            }
            myStmt.close();
            
        }
        catch (Exception e){
            System.err.println( e.getClass().getName() + ": " + e.getMessage());
        }
    }
    
    //Query 2
    public static void query2(Connection c){
        String query = "Select \n" +
"    Video_Game.Title,\n" +
"    Distribute.\"Release Date Japan\",\n" +
"    Distribute.\"Release Date North America\"\n" +
"From\n" +
"    Video_Game\n" +
"    Left Join Distribute Using (vgID)\n" +
"Where Distribute.\"Release Date Japan\" = Distribute.\"Release Date North America\"";
    
    int i = 0;
    
    try{
    
    Connection myCon = DriverManager.getConnection(url);
    Statement myStmt = myCon.createStatement();
    ResultSet myRes = myStmt.executeQuery(query);
    
    while(myRes.next()){
        i = 1;
        String title = myRes.getString(i++);
        String releaseJP = myRes.getString(i++);
        String releaseNA = myRes.getString(i++);
        
        System.out.println("Title " + title + ". Release Data in JP: " + releaseJP + ". Release Data in NA: " + releaseNA);
    }
    myStmt.close();
}
    catch(Exception e){
    System.out.println(e.getClass().getName() + ": " + e.getMessage());
}
    }
    
    public static void query3(Connection c){
        String query = "Select \n" +
"    Video_Game.Title, MAX(Rating.MetaCritic)\n" +
"from Video_Game\n" +
"    Left Join Rating using (vgID)";
        int i = 0;
        
        try{
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            ResultSet myRes = myStmt.executeQuery(query);
            
            while (myRes.next()){
                i = 1;
                String title = myRes.getString(i++);
                String rating = myRes.getString(i++);
                
                System.out.println("Title: " + title + ". Rating(Metacritic): " + rating);
            }
            myStmt.close();
        }
           catch(Exception e){
    System.out.println(e.getClass().getName() + ": " + e.getMessage());
}
    }
    
    public static void query4(Connection c){
        String query = "Select \n" +
"    Video_Game.Title,\n" +
"    Video_Game.IP,\n" +
"    MIN(Distribute.Copies_Sold)\n" +
"    \n" +
"From \n" +
"    Video_Game\n" +
"    Left Join Distribute Using (vgID)\n" +
"Where \n" +
"    Video_Game.ip IS NOT NULL";
        
        int i = 0;
        try{
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            ResultSet myRes = myStmt.executeQuery(query);
            
            while (myRes.next()){
                i = 1;
                
                String title = myRes.getString(i++);
                String ip = myRes.getString(i++);
                String cop = myRes.getString(i++);
                
                System.out.println("Title: " + title + ", IP: " + ip + ", Copies Sold: " + cop);
            }
             myStmt.close();
        }
                  catch(Exception e){
    System.out.println(e.getClass().getName() + ": " + e.getMessage());
}
    }
    
    public static void query5(Connection c){
        
        String query = "Select \n" +
"    Title,\n" +
"    MAX(Copies_Sold)\n" +
"from Video_Game\n" +
"Inner Join Distribute Using (vgID)";
        int i = 0;
        try{
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            ResultSet myRes = myStmt.executeQuery(query);
            
            while (myRes.next()){
                i = 1;
                
                String title = myRes.getString(i++);
                String cop = myRes.getString(i++);
                
                System.out.println("Title: " + title + ", Copies Sold: " + cop);
            }
            myStmt.close();
        }
                         catch(Exception e){
    System.out.println(e.getClass().getName() + ": " + e.getMessage());
}
    }
    
    public static void query6(Connection c){
        String query = "Select \n" +
"    Video_Game.Title,\n" +
"    Developers.Name,\n" +
"    Square_Enix.Developers,\n" +
"    Distribute.Copies_Sold\n" +
"from \n" +
"    Video_Game\n" +
"    Left Join Distribute using (vgID)\n" +
"    Left Join Square_Enix Using (sqID)\n" +
"    Left Join \"Contract(Pub to Dev)\" Using (sqID)\n" +
"    Left Join Developers Using (devID)";
        int i = 0;
        try{
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            ResultSet myRes = myStmt.executeQuery(query);
            
            while (myRes.next()){
                i = 1;
                
                String title = myRes.getString(i++);
                String devName = myRes.getString(i++);
                String sqName = myRes.getString(i++);
                String cop = myRes.getString(i++);
                
                System.out.println("Title: " + title + ", Developer Name: " + devName + ", Square Devleoper Name: " + sqName + ", Copies Sold: " + cop);
            }
            myStmt.close();
        }
                                catch(Exception e){
    System.out.println(e.getClass().getName() + ": " + e.getMessage());
}
    }
    
    public static void query7(Connection C){
        String query = "Select\n" +
"    Video_Game.Title,\n" +
"    case \n" +
"        WHEN (Platform.\"Microsoft Windows\" = 1 AND Platform.PS4 = 1 AND Platform.\"Xbox One\" = 1) OR \n" +
"        (Platform.\"Microsoft Windows\" = 1 AND Platform.PS4 = 1 AND Platform.\"Nintendo Switch\" = 1) OR\n" +
"        (Platform.\"Microsoft Windows\" = 1 AND Platform.\"Xbox One\" = 1 AND Platform.\"Nintendo Switch\" = 1) OR\n" +
"        (Platform.PS4 = 1 AND Platform.\"Xbox One\" = 1 AND Platform.\"Nintendo Switch\" = 1)\n" +
"        THEN 'NO'\n" +
"        else 'YES'\n" +
"    end as PlatformExclusive,\n" +
"    Platform.\"Microsoft Windows\",\n" +
"    Platform.PS4,\n" +
"    Platform.\"Xbox One\",\n" +
"    Platform.\"Nintendo Switch\"\n" +
"From\n" +
"    Video_Game\n" +
"    Left Join Platform Using (vgID)";
        int i = 0;
        try{
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            ResultSet myRes = myStmt.executeQuery(query);
            
            while (myRes.next()){
                i = 1;
                
                String title = myRes.getString(i++);
                String platformEx = myRes.getString(i++);
                String ms = myRes.getString(i++);
                String ps4 = myRes.getString(i++);
                String xbox = myRes.getString(i++);
                String nswi = myRes.getString(i++);
        
                System.out.println("Title: " + title + ". Platform Exclusive: " + platformEx + ". Microsoft Windows: " + ms + ". PS4: " + ps4 + ". Xbox: " + xbox + ". Nintendo Switch: " + nswi);
            }
            myStmt.close();
        }
                                       catch(Exception e){
    System.out.println(e.getClass().getName() + ": " + e.getMessage());
}
    }
    
    public static void query8(Connection c){
        String query = "Select \n" +
"    Video_Game.Title,\n" +
"    Video_Game.\"Remake/Remaster\",\n" +
"    Distribute.Copies_Sold\n" +
"    \n" +
"From\n" +
"    Video_Game\n" +
"    Left Join Distribute Using (vgID)\n" +
"Where\n" +
"    Video_Game.\"Remake/Remaster\" = 0";
        int i = 0;
        try{
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            ResultSet myRes = myStmt.executeQuery(query);
            
            while (myRes.next()){
                i = 1;
                
                String title = myRes.getString(i++);
                String re_rem = myRes.getString(i++);
                String cop = myRes.getString(i++);
                
                System.out.println("Title: " + title + ". Remastered/Remaked: " + re_rem + ". Copies Sold: " + cop);
            }
            myStmt.close();
        }
                                              catch(Exception e){
    System.out.println(e.getClass().getName() + ": " + e.getMessage());
}
    }
    
    public static void query9(Connection c){
        String query = "Select Distinct\n" +
"    Video_Game.Title,\n" +
"    count(Director.Name),\n" +
"    Distribute.Copies_Sold,\n" +
"    Produce.vgID as p_vgId,\n" +
"    Produce.dirID as p_dirID\n" +
"from \n" +
"    Video_Game \n" +
"    Left Join Produce ON Video_Game.vgID = p_vgID\n" +
"    Left Join Director ON Director.dirID = p_dirID\n" +
"    Left Join Distribute ON Distribute.vgID = Video_Game.vgID\n" +
"Group by Director.Name\n" +
"Having count(Director.Name) > 1";
        int i = 0;
        try{
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            ResultSet myRes = myStmt.executeQuery(query);
            
            while (myRes.next()){
                i = 1;
                
                String title = myRes.getString(i++);
                String Director  = myRes.getString(i++);
                String cop = myRes.getString(i++);
                String vgID = myRes.getString(i++);
                String dirID = myRes.getString(i++);
                
                System.out.println("Title: " + title + ". Director: " + Director + ". Copies Sold: " +cop+ ". vgID: " + vgID + ". dirID: " + dirID);
              }
            myStmt.close();
        }
                                              catch(Exception e){
    System.out.println(e.getClass().getName() + ": " + e.getMessage());
}           
    }
    
    public static void query10(Connection c){
        String query = "Select\n" +
"    Video_Game.Title,\n" +
"    Genre.Gen1,\n" +
"    Genre.Gen2\n" +
"From\n" +
"    Video_Game\n" +
"    Left Join Genre Using (vgID)\n" +
"Where Genre.Gen2 IS NOT NULL";
        int i = 0;
        try{
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            ResultSet myRes = myStmt.executeQuery(query);
            
            while (myRes.next()){
                i = 1;
                
                String title = myRes.getString(i++);
                String gen1 = myRes.getString(i++);
                String gen2 = myRes.getString(i++);
                
                System.out.println("Title: " + title + ". Genre 1: " + gen1 + ". Genre 2: " + gen2);
                }
            myStmt.close();
        }
                                              catch(Exception e){
    System.out.println(e.getClass().getName() + ": " + e.getMessage());
}             
    }
  
    
    public static void main(String[] args) throws SQLException {
        
        Scanner s = new Scanner(System.in);
        String sel = null;
        
        Connection c = null;
        try{
            Class.forName("org.sqlite.JDBC");
            c = DriverManager.getConnection(url);
        }
        catch (Exception e) {
            System.err.println(e.getMessage());
        }
        
        System.out.println("Opened DataBade Successfully\n");
        
        //Menu
        
        System.out.println("1. Biggest Releases First in North America");
        System.out.println("2. Games Where JP and NA Release Dates are the Same");
        System.out.println("3. Highest Rated Game");
        System.out.println("4. Least Successful IP");
        System.out.println("5. Most Sold Game");
        System.out.println("6. Outsourced vs Internal Game Performance");
        System.out.println("7. Releases on Exclusive Platforms");
        System.out.println("8. Remake or Original");
        System.out.println("9. Same Director with Successful Games");
        System.out.println("10. Which Games have more than 2 Genres?");
        
        
        while (true){
            System.out.println("Enter Selection: ");
            sel = s.nextLine();
            
            System.out.println("");
            
            if(sel.equals("1")){
                query1(c);
            }
            
            else if(sel.equals("2")){
                query2(c);
            }
            
            else if(sel.equals("3")){
                query3(c);
            }
            
            else if(sel.equals("4")){
                query4(c);
            }
            
            else if(sel.equals("5")){
                query5(c);
            }
            
            else if(sel.equals("6")){
                query6(c);
            }
            
            else if(sel.equals("7")){
                query7(c);
            }
            
            else if(sel.equals("8")){
                query8(c);
            }
            
            else if(sel.equals("9")){
                query9(c);
            }
            
            else if(sel.equals("10")){
                query10(c);
            }
            
            
            else if(sel.equals("quit")){
                break;
            }
        }
        c.close();
    }
}
