// COE838 - Lab2 Accelerator based SoC Design
// ArrayMultiplier Header  

#ifndef ARRAYMULTIPLIER_H   
#define ARRAYMULTIPLIER_H

#include <systemc.h>       


void make_ArrayMultiplier();
                                
SC_MODULE(ArrayMultiplier) {
	sc_in<bool> clk;
    	sc_in<bool> A0; sc_in<bool> A1; sc_in<bool> A2; sc_in<bool> A3;
	sc_in<bool> A4; sc_in<bool> A5; sc_in<bool> A6; sc_in<bool> A7;

    	sc_in<bool> B0; sc_in<bool> B1; sc_in<bool> B2; sc_in<bool> B3;
	sc_in<bool> B4; sc_in<bool> B5; sc_in<bool> B6; sc_in<bool> B7;

	void arraymultiplier_method();   
 
        SC_CTOR(ArrayMultiplier) {

        SC_METHOD(arraymultiplier_method);
	dont_initialize();
        sensitive << clk.pos(); //edge sensitive
    }

};
#endif 
