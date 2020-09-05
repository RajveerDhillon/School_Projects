/*
 //r9dhillo
 //Rajveer Dhillon 500777569
 //Lab 3
 
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <string.h>


int main(int argc, char** argv) {
   pid_t pid;
   int status, i, j;
   char * storing[100];
   char line[100];
   int flag = 0;
   while(1){
       sleep(1);
       printf("Your Command>\n");
       int a = 0, b = 0, c = 0, numw = 1;
       flag = 1;
       scanf(" %[^\n]", line);
       for(i = 0; line[i]!='\0'; i++){
            if(line[i]== ' '){
                numw++;
            }
        }

    for(j = 0; j<numw; j++){
            storing[j] = (char *) malloc(sizeof (char)*100);
        }

   for(a = 0; line[a]!= '\0'; a++){
       if(line[a]==' '){
               c++;
               b = 0;
        }else{
           storing[c][b]= line[a];
            b++;    
           }   
        }
       
       if (storing[numw-1][strlen(storing[numw-1])-1] == '&'){
               flag =0;
               storing[numw-1][strlen(storing[numw-1])-1] = '\0';
       }
          
   if ((pid = fork()) == 0) {
        //Child runs this
       storing[numw]= NULL;

        execvp(storing[0], storing);
        fprintf(stderr, "Should NEVER get here!\n");
        exit(1);
    }
    if(flag){
       wait(&status);
    }
    printf("Hello from parent with child %d\n", pid);

}
   return (EXIT_SUCCESS);
}
