/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project1;

/**
 *
 * @author sahib
 */
public class BookCollection {
    private final int MAXBOOKS = 30000;
    private Book[] bookList = new Book[MAXBOOKS];
    
    public BookCollection(){
        //code not included
    }
    
    public int countScienceBooks(String countNum){
        
        int i = 0, count = 0;
        
        while (this.bookList[i] != null){
        if(bookList[i].getCallNumber().equals(countNum)){
                count++;
            }
            i++;
        }
        return count;
    }
    
    public static void main(String[] args){
        BookCollection books = new BookCollection();
        String cNumTrue = "Q";
        
        books.bookList[0] = new Book("A Brief History of Time", "Stephen Hawking", "Q");
        books.bookList[1] = new Book("The Selfish Gene", "Richard Dawkins", "Q");
        books.bookList[2] = new Book("The Testaments", "Margaret Atwood", "F");
        books.bookList[3] = new Book("Becoming", "Michelle Obama", "F");
        
        for (int i = 0; i < 4; i++){
            System.out.println("Book Title: " + books.bookList[i].getTitle() + " Book Author: " + books.bookList[i].getAuthor());
        }
    
        System.out.println("Science Books in Book Collection: ");
        System.out.println(books.countScienceBooks(cNumTrue));
        
    }
}
