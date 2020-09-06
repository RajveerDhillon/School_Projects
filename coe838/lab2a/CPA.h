// COE838 - Lab2 Accelerator based SoC Design
// CPA Header 

#ifndef CPA_H   
#define CPA_H

#include <systemc.h>       


void make_CPA();
                                
SC_MODULE(CPA) {
	sc_in<bool> clk;
	sc_in<bool> A1;
	sc_in<bool> B1;
	sc_in<bool> Cin;
    	sc_out<bool> Cout;
    	sc_out<bool> Sout;

	void cpa_method();   
 
        SC_CTOR(CPA) {

        SC_METHOD(cpa_method);
	dont_initialize();
        sensitive << clk.pos(); //edge sensitive
    }

};
#endif 
