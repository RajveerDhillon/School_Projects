#include <stdio.h>
#include <stdlib.h>
#include "mySort.h"

int main(int argc, char * argv[])
{int data[100000]; /* Array of ints to sort */
int nDataItems = argc;  /* number of actual items in the array */
    int i, k;
	fprintf(stderr, "I was invoked with the command: %s\n", argv[0]);
	if (argc > 1) {
		fprintf(stderr, "The command line arguments are:\n");
		for (k = 1; k < argc; k++) {
			data[k] = atoi(argv[k]);
		}
	}
	else {
		fprintf(stderr, "There were no command line arguments.\n");
		/* Test data */

		nDataItems = 4;

		data[0] = 10;

		data[1] = 20;

		data[2] = 30;

		data[3] = 40;
	}


    mySort(data, nDataItems);
    /* Check that the data array is sorted. */
    for(i = 0; i < nDataItems-1; i++) {
        if (data[i] > data[i+1]) {
            fprintf(stderr, "Sort error: data[%d] (= %d)"
              " should be <= data[%d] (= %d)- -aborting\n",
              i, data[i], i+1, data[i+1]);
            exit(1);
        }
    }
    /* Print sorted array to stdout */
    for(i = 0; i < nDataItems; i++) {
        printf("%d\n", data[i]);
    }
    exit(0);
}
