// COE838 - Lab2 Accelerator based SoC Design
// CSA Header

#ifndef CSA_H   
#define CSA_H

#include <systemc.h>       


void make_CSA();
                                
SC_MODULE(CSA) {
	sc_in<bool> clk;
	sc_in<bool> A1;
	sc_in<bool> B1;
	sc_in<bool> Cin;
	sc_in<bool> Sin;
	sc_out<bool> Cout;
    	sc_out<bool> Sout;
 
	void csa_method();   
 
        SC_CTOR(CSA) {

        SC_METHOD(csa_method);
	dont_initialize();
        sensitive << clk.pos(); //edge sensitive
    }

};
#endif 
