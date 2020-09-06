#include <sys/types.h>
#include <errno.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <unistd.h>

#define SERVER_TCP_PORT 3000
#define	BUFLEN 500

#define Err1 "Error \n"
#define Err2 "Error in PDU\n"




struct PDU {
		char type;
		int length;
		char data[BUFLEN];
	} rpdu, tpdu;
int main(int argc, char *argv[])
{
	char	*host = "localhost"; /* host to use if none supplied */
	char	*bp, sbuf[BUFLEN], rbuf[BUFLEN], path[BUFLEN];
	int 	port, bytes_to_read;
	int		sd, n, end = 1; /* socket descriptor and socket type */
	FILE	*fp;	
	char *currentdir;

	struct stat fstat;
	struct hostent *hp; /* pointer to host information entry */
	struct sockaddr_in server; /* an Internet endpoint address */
	

	switch(argc){
		case 2:
			host = argv[1];
			port = SERVER_TCP_PORT;
			break;
		case 3:
			host = argv[1];
			port = atoi(argv[2]);
			break;
		default:
			fprintf(stderr, "Usage: %s host [port]\n", argv[0]);
			exit(1);
	}

	/* Create a stream socket */	
	if ((sd = socket(AF_INET, SOCK_STREAM, 0)) == -1) {
		fprintf(stderr, "Can't creat a socket\n");
		exit(1);
	}

	bzero((char *)&server, sizeof(struct sockaddr_in));
	server.sin_family = AF_INET;
	server.sin_port = htons(port);
	if (hp = gethostbyname(host)) 
		bcopy(hp->h_addr, (char *)&server.sin_addr, hp->h_length);
	else if (inet_aton(host, (struct in_addr *) &server.sin_addr)){
		fprintf(stderr, "Can't get server's address\n");
		exit(1);
	}

	/* Connecting to the server */
	if (connect(sd, (struct sockaddr *)&server, sizeof(server)) == -1){
		fprintf(stderr, "Can't connect \n");
		exit(1);
	}


	while(1){
		system("clear");
 		printf("Please enter command: \n D- download file; \n U- file upload; \n C- change directory; \n L- list directory; \n Q-Quit. \n");		
		scanf("%c",&tpdu.type);
		tpdu.length = 0; //Read user command
 		
		switch (tpdu.type){
		// DOWNLOAD
		case 'D':
			printf("Which file to download: \n");
			tpdu.length = read(0, tpdu.data, BUFLEN-1);
			tpdu.data[tpdu.length-1] = '\0';
			write(sd, &tpdu, sizeof(tpdu));
			read(sd, &rpdu, sizeof(rpdu));
			
			// server sends F PDU, 
			if(rpdu.type == 'F'){
				fp = fopen(tpdu.data, "w");
				fwrite(rpdu.data,sizeof(char), rpdu.length, fp);
				if(rpdu.length == BUFLEN) {
						read(sd, (char *)&rpdu, sizeof(rpdu));
						fwrite(rpdu.data, sizeof(char), rpdu.length, fp);
					}
					fclose(fp);
					printf("Transfered File.\n");
				} 
				else {
					fprintf(stderr, "%s", rpdu.data);
				}
				break;				
			
		// UPLOAD
		case 'U':

			tpdu.type = 'U';
				printf("Enter filename:\n");
				tpdu.length = read(0, tpdu.data, BUFLEN-1); // get user message
				tpdu.data[tpdu.length-1] = '\0';
				fp = fopen(tpdu.data, "r"); // open file to be uploaded
				if (fp == NULL) {
					fprintf(stderr, "Error: File \"%s\" not found.\n", tpdu.data);
				} else {
					write(sd, (char *)&tpdu, sizeof(tpdu)); // make upload request
					read(sd, (char *)&rpdu, sizeof(rpdu)); // recieve ready signal
					if (rpdu.type = 'R') { // check if server is ready
						tpdu.type = 'F';
						tpdu.length = fread(tpdu.data, sizeof(char), BUFLEN, fp);
						write(sd, (char *)&tpdu, sizeof(tpdu));
						printf("File sent.\n");
					} else {
						fprintf(stderr, "Error: Server not ready.\n");
					}
					fclose(fp);
				}
				break;


		// CHANGE DIRECTORY
		case 'C': 
			printf("Change directory to: \n");
			tpdu.length = read(0, tpdu.data, BUFLEN-1);
			tpdu.type = 'P';
			tpdu.data[tpdu.length-1] = '\0';
			currentdir = getcwd(NULL, 0);
			printf("Current Directory: %s\n", currentdir);
			printf("Directory changed to: \"%s\"\n", tpdu.data);
			write(sd, (char *)&tpdu, sizeof(tpdu));
			read(sd, (char *)&rpdu, sizeof(rpdu));

			if(rpdu.type = 'R'){
				printf("Directory Changed \n");
			}
			else {
				printf("Could not change Directory");
			}
			break;			
			

		// LIST DIRECTORY
		case 'L':
			printf("Enter the Directory to be Listed:\n");
			tpdu.type = 'L';
			tpdu.length = read(0, tpdu.data, BUFLEN);
			tpdu.data[tpdu.length-1] = '\0';
			write(sd, &tpdu, sizeof(tpdu));
			read(sd, &rpdu, sizeof(rpdu));
			if(rpdu.type = 'I'){
				write(1, rpdu.data, rpdu.length);
			}
			else {
				printf ("Could not List Directory");			
			
			}
			break;
		
		// QUIT
		case 'Q':
			tpdu.length = 0;
			write(sd, (char *)&tpdu, sizeof(tpdu));
			read(sd, (char *)&rpdu, sizeof(rpdu));
			if(rpdu.type = 'K'){
				close(sd);
				exit(0);
			}
			break;

		// ERROR
		case 'E':
			tpdu.type = 'X';
			tpdu.length = 0;
			write(sd, (char*)&tpdu, sizeof(tpdu));
			read(sd, (char*)&rpdu, sizeof(rpdu));
			if(rpdu.type = 'E'){
				printf(Err1);
			}
			break;
		
		

		}
		
		sleep(3);
	}
	close(sd);
	return(0);
	

}



	
