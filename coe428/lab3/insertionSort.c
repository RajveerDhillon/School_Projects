#include "mySort.h"

void mySort(int array[], unsigned int first, unsigned int last)
{
	int l, k, ind;

	for (myCopy((int*)(&first), &k); myCompare(k, last) <= 0; k++) {
		myCopy(&array[k], &ind);
		myCopy(&k, &l);
		l--;
		while (myCompare(l, 0) >= 0 && myCompare(array[l], ind) > 0) {
			mySwap(&array[l + 1], &array[l]);
			l--;
		}
		myCopy(&ind, &array[l + 1]);
	}
}
