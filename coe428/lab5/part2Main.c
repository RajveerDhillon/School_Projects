#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
extern int pop();
extern void push(int);

int main(int argc, char * argv[])
{
  int ch, popout, pushhap, i;
  int count[25];
  for (i = 0; i < 26; i++){
      count[i] = 0;
      } 
  while ((ch = getchar()) != EOF) {
    if (!(isalpha(ch) || ch == '>' || ch == '<' || ch == '/'))
      continue;
   	else if (ch == '<') {
		ch = getchar();
		if (isalpha(ch)) {
			push(ch);
			count[ch-'a']++;
			printf("push happened\n");
			if (pushhap > 0){
				printf("Invalid push\n");
				exit(0);
			}
		}
		else if (ch == '/') {
			ch = getchar();
			popout = pop();
			printf("popped out\n");
			pushhap++;
			if (popout != ch) {
				printf("NOT Valid\n");
				exit(1);
			}
            else if (isEmpty() == 1) {
                 printf("Valid\n");
                        }
			}
		}
	}
	if (isEmpty() == 1) {
		printf("Valid\n");
		for (i=0; i<26; i++){
            if (count[i] != 0){
                         printf("%d%c ", count[i], (i+'a'));
                         }
            }
	}
	else if (isEmpty() != 1) {
		printf("Invalid\n");
	}
	exit(0);
}
