import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.InputStreamReader;
import java.net.ServerSocket;
import java.net.Socket;


public class Server {

    // Runs the server.
     
    public static void main(String[] args) throws IOException {
        String currentKey="NETWORK SECURITY";
	String key="RYERSON";
	String id="INITIATOR B";
	String t=""; //trusted initiator
	Vigenere cipher = new Vigenere();


        ServerSocket listen = new ServerSocket(9500);
        try {
            while (true) {
                Socket socket = listen.accept();
                try {
			BufferedReader input = new BufferedReader(new InputStreamReader(socket.getInputStream()));
                    	PrintWriter out = new PrintWriter(socket.getOutputStream(), true);
                        System.out.println("Server Side - INITIATOR B\n");
                        //Recieving message from A
                	t=input.readLine();
			System.out.println("Request is from "+t+"\n");
			System.out.println("Message to be sent: ");
			System.out.println("Key: "+key+" to "+t+" from "+id+"\n");
			
                        //Compile Message
			String Send=key+" "+t+" "+id;
                        //Encrypt Message
			Send=cipher.encode(Send,currentKey);
                        //Sending Message
			System.out.println("\nSending Message: "+Send);
			out.println(Send);
                        
			currentKey=key;
                        //Recieve response from A
			String response=input.readLine();
			System.out.println("Response from "+t);
			System.out.println("Message is: "+response);
			
                        //decrypt response
			String decResponse=cipher.decode(response,currentKey);
			
			
                } 
                finally {
                   	 socket.close();
                  }
            }
        }
        finally {
            listen.close();
        }
    }
}
