#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
extern char *  pop();
extern void push(char *);
extern void add(char *,int);
extern int isEmpty();
extern void printResult();
int main(int argc, char * argv[])
{
	int ch, l;
	int i = 0;
	int j = 0;
	char * strtmp;
	char * popout;
	char temp[100];
    char temp2[100];
	while ((ch = getchar()) != EOF) {
		if (!(isalpha(ch) || ch == '>' || ch == '<' || ch == '/'))
			continue;
		else if (ch == '<') {
			ch = getchar();
			if (isalpha(ch)) {
                printf("it got here\n");
				temp[0] = ch;
				i = 1;
				while (temp[i] != '>') {
                      printf("The input: %c\n", getchar()); 
					temp[i] = getchar();
					i++;
					printf("temp: %s i:%d\n", temp[i], i);
				}
				temp[i] = 0;
				i--;
				for (j = i; j >= 0; j--) {
					strtmp += temp[j];
					printf("Strtmp: %c j:%d\n", strtmp, j);
				}
				printf("before push\n");
				push(strtmp);
				printf("push happened\n");
				add(strtmp, i);
			}
			else if (ch == '/') {
				l = 0;
				while (temp[l] != '>') {
					temp[l] = getchar();
					l++;
				}
				temp[l] = 0;
				l--;
				if (isEmpty() == 0) {
					popout = pop();
					printf("Pop happened\n");
					exit(1);
				}
				else {
					for (j = 0; j <= i; j++) {
						temp2[j] = popout[j];
					}
					for (j = 0; j <= i; j++) {
						if (temp2[j] != temp[j]) {
							printf("NOT Valid, not same\n");
							exit(1);
						}
						else {
							printf("Both Match\n");
						}
					}

				}
			}
		}

	}
	if (isEmpty() != 0) {
		printf("Not Valid\n");
		exit(1);
	}
	else {
		printf("Valid\n");
		printResult();
	}
	exit(0);

}
    

