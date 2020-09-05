#include "mySort.h"

void mySort(int array[], unsigned int first, unsigned int last)
{
	if (first < last){
		int middle = first + ((last - first)/2);

		mySort(array, first, middle);
		mySort(array, middle+1, last);
		
		mergeall(array, first, middle, last);

	}
}
void mergeall(int array[], int first, int middle, int last)
{
	int a, b, c;
	int ind1 = middle - first + 1;
	int ind2 = last - middle;

	int leftHalf[ind1], rightHalf[ind2];
	for (a = 0; a < ind1; a++) {
		myCopy(&array[first + a], &leftHalf[a]);
	}
	for (b = 0; b < ind2; b++) {
		myCopy(&array[middle + b + 1], &rightHalf[b]);
	}

	a = 0;
	b = 0;
	c = first;
	while (myCompare(a, ind1) < 0 && myCompare(b, ind2) < 0) {
		if (leftHalf[a] <= rightHalf[b]) {
			myCopy(&leftHalf[a], &array[c]);
			a++;
		}
		else {
			myCopy(&rightHalf[b], &array[c]);
			b++;
		}
		c++;
	}
	while (b < ind2) {
		array[c] = rightHalf[b];
		myCopy(&rightHalf[b], &array[c]),
		b++;
		c++;
	}
	while (a < ind1) {
		myCopy(&leftHalf[a], &array[c]);
		a++;
		c++;
	}
}