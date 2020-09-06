//Coe 838 - lab2a CSA.cpp file

#include "CSA.h"

void CSA :: csa_method(){

	//signals for inputs 
	bool a, b, cin;

	//temperary signals for the full adder
	bool x0, d0, d1;

	//signals for the output
	bool Sum_out, C_out;

	//Setting the signals to the output
	a = A1.read() and B1.read();
	b = Sin.read();
	cin = Cin;

	//Implementing the full adder with CSA case
	x0 	= a xor b;
	Sum_out = x0 xor cin;

	d0 	= x0 and cin;
	d1 	= a and b;

	C_out 	= d0 or d1;

	//Assigning the signals to the outputs

	Sout.write(Sum_out);
	Cout.write(C_out);
}
void make_CSA(){
}
	
