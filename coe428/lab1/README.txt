Rajveer Dhillon 500777569
I named the executable file as SortResult, so using SortResult as a command line and having parameters as 
integers will sort the integers from lowest to highest.

Everything works but something that bothers me is that when it prints the final results of the sorted parameters,
a 0 is placed in the front of it. I don't know why it's there but it doesn't do anything wrong to the program.

Answer to Question:

When writing mySort.c, the needed parameters are the data that needs to be sorted and the length of the array.
In this case, only the data is given and the first and last indices of the array. The code for mySort.c will be
the same but just an extra line of code that calculates the length. 

n = last; 