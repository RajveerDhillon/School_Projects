#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/signal.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>
#include <unistd.h>

#define SERVER_TCP_PORT 3000
#define BUFLEN 500

#define Err2 "Error in PDU\n"


int echod(int);
void reaper(int);
struct PDU {
		char type;
		int length;
		char data[BUFLEN];
	} rpdu, tpdu;
int main(int argc, char **argv)
{
	int 	sd, new_sd, client_len, port;
	struct	sockaddr_in server, client;
	
	switch(argc){
		case 1:
			port = SERVER_TCP_PORT;
			break;
		case 2:
			port = atoi(argv[1]);
			break;
		default:
			fprintf(stderr, "Usage: %d [port]\n", argv[0]);
			exit(1);
	}

	/* Create a stream socket */	
	if ((sd = socket(AF_INET, SOCK_STREAM, 0)) == -1) {
		fprintf(stderr, "Can't creat a socket\n");
		exit(1);
	}

	/* Bind an address to the socket */
	bzero((char *)&server, sizeof(struct sockaddr_in));
	server.sin_family = AF_INET;
	server.sin_port = htons(port);
	server.sin_addr.s_addr = htonl(INADDR_ANY);
	if (bind(sd, (struct sockaddr *)&server, sizeof(server)) == -1){
		fprintf(stderr, "Can't bind name to socket\n");
		exit(1);
	}

	/* queue up to 5 connect requests */
	listen(sd, 5);

	(void) signal(SIGCHLD, reaper);

	while(1) {
		client_len = sizeof(client);
		new_sd = accept(sd, (struct sockaddr *)&client, &client_len);
		if(new_sd < 0){
			fprintf(stderr, "Can't accept client \n");
			exit(1);
		}
		switch (fork()) {
			/* child */
			case 0:
				(void) close(sd);
				exit(echod(new_sd));
			/* parent */			
			default:
				(void) close(new_sd);
				break;
			case -1:
				fprintf(stderr, "fork: error\n");
		}
	}
}


/*	echod program	*/
int echod(int sd)
{	
	int 	n, bytes_to_read, size;
	FILE *fp;
	DIR   *d;
	char *currentdir;
	struct dirent *ent;
	struct stat fstat;
	
	
	
	while(1){
		read(sd, (char *)&rpdu, sizeof(rpdu));
	
		switch (rpdu.type){
		// DOWNLOAD
			case 'D':
			       	fp = fopen(rpdu.data, "r");
				if(fp == NULL) //Cannot open the file
				{  
					fprintf(stdout, "File not found. Sending error message to client\n");
					tpdu.type = 'E';
					strcpy(tpdu.data, Err2);
					tpdu.length = strlen(tpdu.data);
					write(sd,(char *)&tpdu, sizeof(tpdu));
				
				}
				else {
					tpdu.length = fread(tpdu.data, sizeof(char), BUFLEN, fp);
					tpdu.type = 'F';
					write(sd, (char *)&tpdu, sizeof(tpdu));
					printf("File Downloaded: %s\n", rpdu.data);	
				}

				break;
	
			// UPLOAD     
			case 'U':
				tpdu.type = 'R';
				tpdu.length = 0;
				
				write(sd, (char *)&tpdu, sizeof(tpdu));	
				fp = fopen(rpdu.data, "w");
				printf("Creating File with Name: %s\n", rpdu.data);

				read(sd,  (char *)&rpdu, sizeof(rpdu));
			
				fwrite(rpdu.data, sizeof(char), rpdu.length, fp);
			
				fclose(fp);
				printf("File Uploaded to Directory\n");
			   	break;
	

			// CHANGE DIRECTORY 
			case 'P':
				currentdir = getcwd(NULL, 0);
				printf("Current Directory: %s\n", currentdir);
				if(opendir(rpdu.data)) { 			// check if directory is valid
						chdir(rpdu.data);
						printf("Directory changed to: \"%s\"\n", rpdu.data);
						tpdu.type = 'R';
					} else {	 // invalid directory
						tpdu.type = 'E';
						strcpy(tpdu.data, "Error: Invalid directory.\n");
						tpdu.length = strlen(tpdu.data);
					}
				write(sd, (char *)&tpdu, sizeof(tpdu)); 	// send reply to client
				break;

			// LIST DIRECTORY
			case 'L':
				if(opendir(rpdu.data)){
					d = opendir(rpdu.data);
					tpdu.data[0] = '\0';
					while((ent = readdir(d)) != NULL) {
						strcat(tpdu.data, ent->d_name);
						strcat(tpdu.data, "\n");
						printf("%s\n", tpdu.data);
					}
				closedir(d);
				tpdu.type = 'I';
				tpdu.length = strlen(tpdu.data);
				write(sd, (char *)&tpdu, sizeof(tpdu));
				printf("Listings of Files: \n");
				}
				else {
					tpdu.type = 'E';
					printf("Invalid Directory Listing\n");
					strcpy(tpdu.data, "Director Error\n");
					tpdu.length = strlen(tpdu.data);
				}
				break;
			//Quit
			case 'Q':
				close(sd);
				exit(0);
				return(0);
				break;
			//Error from Client
			case 'X':
				printf("Error in Client\n");
				break;


			default:
				tpdu.type = 'E';
				tpdu.length = 0;
				write(sd,  (char *)&tpdu, sizeof(tpdu));
				printf("Error, Invalid Option\n");
				break;
			}
	
	}
	close(sd);
	return(0);
}

/* reaper */
void reaper(int sig)
{
	int	status;
	while(wait3(&status, WNOHANG, (struct rusage *)0) >= 0);
}
