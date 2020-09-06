import java.io.BufferedReader;
import java.io.PrintWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;

//Client Side 


public class Client {


    public static void main(String[] args) throws IOException {

	String key="NETWORK SECURITY";
	String id="INITIATOR A";
	String t=""; //trusted initiator
	Vigenere cipher = new Vigenere();
	
        Socket s = new Socket("127.0.0.1", 9500);
        BufferedReader input = new BufferedReader(new InputStreamReader(s.getInputStream()));
	PrintWriter out = new PrintWriter(s.getOutputStream(), true);

	//Send id to B
        System.out.println("Client Side - INITIATOR A\n");
	System.out.println("\nID is being sent");
	//Sending id
	out.println(id);

	//Getting Response
	String response= input.readLine();
	System.out.println("Message Received is: "+response+"\n");
        //Decrypt response from B
	String decRes=cipher.decode(response,key);

	String temp[]=decRes.split(" ");
		if(id.contentEquals(temp[1]+" "+temp[2])){ //////////////////////////////
			System.out.println("ID's Match.");
			key=temp[0];
			System.out.println("New Key for Session: "+key);
			t=temp[3]+" "+temp[4];
			System.out.println("Trusted User is: "+t);
			
			//Sending response back.
			String end=cipher.encode(t,key);
			System.out.println("Sending Message "+end+" to "+t);
			out.println(end);
		}	

        System.exit(0);
    }
}
