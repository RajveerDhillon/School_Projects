package coe318.lab5;

import java.util.Scanner;

public class SimpleUI implements UserInterface {
    private BlackJackGame game;
    private Scanner user = new Scanner(System.in);

  @Override
    public void setGame(BlackJackGame game) {
        this.game = game;
    }

  @Override
    public void display() {
        System.out.println("The House holds: " + this.game.getHouseCards().toString());
        System.out.println("\nUser hold: " + this.game.getYourCards().toString());
    }

  @Override
    public boolean hitMe() {
      System.out.println("Would you like a hit? (y/n)");
      String userChoice = user.nextLine();
      boolean hit = false;
      if (userChoice == "y"){
          hit = true;
      }
      else if(userChoice == "n"){
          hit = false;
      }
      else{
          System.out.println("You must enter either 'y' or 'n'.");
          hitMe();

      }
      return hit;
    }

  @Override
    public void gameOver() {
        this.display();
        
        int yourScore = game.score(game.getYourCards());
        int houseScore = game.score(game.getHouseCards());
        
        System.out.println("Your Score: " + yourScore + ", House Score: " + houseScore);
        if ((yourScore > houseScore || houseScore > 21) && (yourScore <= 21)){
            System.out.println("You win.");
        }
        else{
            System.out.println("You lose.");
        }
        
        System.out.println("End of Game.");
    }

}