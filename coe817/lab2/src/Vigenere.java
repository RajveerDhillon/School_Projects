public class Vigenere {
    
    static String encode(String msg, String key){
        String result = "";
        String tmpm = msg.toUpperCase();
        String tmpk = key.toUpperCase();
        String[] msgs = tmpm.split(" ");
        int cnt=0;
        
       
        for(int i =0;i<msgs.length;++i){
            for(int j=0;j<msgs[i].length();++j){
                char o=(char)((((int)msgs[i].charAt(j)+(int)tmpk.charAt(cnt))%26)+65); 
                
                 result = result+o;
                 if(cnt<tmpk.length()-1){cnt++;}
                 else{cnt=0;}
            }
            result = result+" ";
        }
       System.out.println("Encrypted Message -> " + result);
       return(result);
    }
    
    static String decode(String msg, String key){
        String result = "";
        String tmpm = msg.toUpperCase();
        String tmpk = key.toUpperCase();
        String[] msgs = tmpm.split(" ");
        int cnt=0,tmp=0;
        
        for(int i =0;i<msgs.length;++i){
            for(int j=0;j<msgs[i].length();++j){
                tmp = msgs[i].charAt(j) - tmpk.charAt(cnt);
                char o = (char) ((tmp+26)%26+65);
                result = result+o;
                if(cnt<tmpk.length()-1){cnt++;}
                else{cnt=0;}
            }
            result = result+" ";
        }
        System.out.println("Decrypted Message -> " + result);
        return(result);
    }
     
}
