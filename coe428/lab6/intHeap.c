#include <stdio.h>

#define MAX 100
/*
int main()
{
	int count;
	int elements[MAX], limit;
	printf("\nEnter Total Number of Elements:\t");
	scanf("%d", &limit);
	for (count = 1; count <= limit; count++)
	{
		printf("Element No.%d:\t", count);
		scanf("%d", &elements[count]);
	}
	printf("\nElements To Sort\n");
	show(elements, limit);
	heap_sorting(elements, limit);
	printf("\nSorted Elements List\n");
	show(elements, limit);
	return 0;
}
*/
int heap[MAX];
static int limit;
void heap_sorting()
{
	int temp;
	heap_builder();
	printf("\nHeap Elements\n");
	show();
	while (limit > 1)
	{
		temp = delete_root();
		heap[limit + 1] = temp;
	}
}

void heap_builder()
{
	int count;
	for (count = limit / 2; count >= 1; count--)
	{
		restoring(count);
	}
}

int delete_root()
{
	int temp = heap[1];
	heap[1] = heap[limit];
	(limit)--;
	restoring(1);
	return temp;
}

void addHeap(int thing2add)
{
	heap[limit] = thing2add;
	int i = limit;
	int parent = ((i - 1) / 2);
	while ((parent > 0) && (heap[parent] < thing2add)) {
		heap[i] = heap[parent];
		heap[parent] = thing2add;
		i = parent;
		parent = ((i - 1) / 2);
	}
	limit++;
}

void restoring(int count)
{
	int left_child = 2 * count, right_child = left_child + 1;
	int num = heap[count];
	while (right_child <= limit)
	{
		if (num >= heap[left_child] && num >= heap[right_child])
		{
			heap[count] = num;
			return;
		}
		else if (heap[left_child] > heap[right_child])
		{
			heap[count] = heap[left_child];
			count = left_child;
		}
		else
		{
			heap[count] = heap[right_child];
			count = right_child;
		}
		left_child = 2 * count;
		right_child = left_child + 1;
	}
	if (left_child == limit && num < heap[left_child])
	{
		heap[count] = heap[left_child];
		count = left_child;
	}
	heap[count] = num;
}

void show()
{
	int count;
	for (count = 1; count <= limit; count++)
	{
		printf("%3d", heap[count]);
	}
	printf("\n");
}

int heapSize() {
	return limit;
}