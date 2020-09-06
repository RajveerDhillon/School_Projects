//Coe 838 - lab2a CPA.cpp file

#include "CPA.h"

void CPA :: cpa_method(){
	
	//Inputs for CPA
	bool a, b, cin;

	//Temperary variables for the full adder
	bool x0, d0, d1;

	//Outputs for CPA
	bool Sum_out, C_out;

	//Assigning the signals to the inputs
	a = A1.read();
	b = B1.read();
	cin = Cin.read();
	
	//Full adder Implementation using the CPA behavior case

	x0 	= a xor b;
	Sum_out = x0 xor cin;

	d0 	= x0 and cin;
	d1 	= a and b;

	C_out 	= d0 or d1;

	//Assigning the signals to the outputs

	Sout.write(Sum_out);
	Cout.write(C_out);
}
void make_CPA(){
}
	
