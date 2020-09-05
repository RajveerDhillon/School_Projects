#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
extern int pop();
extern void push(int);
extern void addHeap(int);
extern void heap_sorting();
extern void heap_builder();
extern int delete_root();
extern void restoring(int);
extern void show();
extern int heapSize();
int main(int argc, char * argv[])
{
  int value, i, heapout;
  while (scanf("%d\n", &value) != EOF) {
	  fprintf(stderr, "READING INPUT: %d\n", value);
	  addHeap(value);
  }
  for (i = 0; i <= heapSize(); i++) {
	  show();
	  heapout = delete_root(i);
	  push(heapout);
  }
  for (i; i >= 0; i--) {
	  heapout = pop();
	  printf("In ascending order: %d\n", heapout);
  }
  exit(0);
}
