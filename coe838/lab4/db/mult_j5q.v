//lpm_mult CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" DSP_BLOCK_BALANCING="Auto" LPM_PIPELINE=3 LPM_REPRESENTATION="UNSIGNED" LPM_WIDTHA=16 LPM_WIDTHB=16 LPM_WIDTHP=32 MAXIMIZE_SPEED=5 aclr clken clock dataa datab result CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48
//VERSION_BEGIN 14.0 cbx_cycloneii 2014:09:17:18:41:02:SJ cbx_lpm_add_sub 2014:09:17:18:41:02:SJ cbx_lpm_mult 2014:09:17:18:41:02:SJ cbx_mgl 2014:09:17:20:49:57:SJ cbx_padd 2014:09:17:18:41:02:SJ cbx_stratix 2014:09:17:18:41:02:SJ cbx_stratixii 2014:09:17:18:41:02:SJ cbx_util_mgl 2014:09:17:18:41:02:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
//  Your use of Altera Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Altera Program License 
//  Subscription Agreement, the Altera Quartus II License Agreement,
//  the Altera MegaCore Function License Agreement, or other 
//  applicable license agreement, including, without limitation, 
//  that your use is for the sole purpose of programming logic 
//  devices manufactured by Altera and sold by Altera or its 
//  authorized distributors.  Please refer to the applicable 
//  agreement for further details.



//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mult_j5q
	( 
	aclr,
	clken,
	clock,
	dataa,
	datab,
	result) /* synthesis synthesis_clearbox=1 */;
	input   aclr;
	input   clken;
	input   clock;
	input   [15:0]  dataa;
	input   [15:0]  datab;
	output   [31:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   aclr;
	tri1   clken;
	tri0   clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg	[15:0]	dataa_input_reg;
	reg	[15:0]	datab_input_reg;
	reg	[31:0]	result_output_reg;
	reg	[31:0]	result_extra0_reg;
	wire	[15:0]	dataa_wire;
	wire	[15:0]	datab_wire;
	wire	[31:0]	result_wire;


	// synopsys translate_off
	initial
		dataa_input_reg = 0;
	// synopsys translate_on
	always @(posedge clock or posedge aclr)
		if (aclr == 1'b1)	dataa_input_reg <= 16'b0;
		else if (clken == 1'b1)	dataa_input_reg <= dataa;
	// synopsys translate_off
	initial
		datab_input_reg = 0;
	// synopsys translate_on
	always @(posedge clock or posedge aclr)
		if (aclr == 1'b1)	datab_input_reg <= 16'b0;
		else if (clken == 1'b1)	datab_input_reg <= datab;
	// synopsys translate_off
	initial
		result_output_reg = 0;
	// synopsys translate_on
	always @(posedge clock or posedge aclr)
		if (aclr == 1'b1)	result_output_reg <= 32'b0;
		else if (clken == 1'b1)	result_output_reg <= result_extra0_reg;
	// synopsys translate_off
	initial
		result_extra0_reg = 0;
	// synopsys translate_on
	always @(posedge clock or posedge aclr)
		if (aclr == 1'b1)	result_extra0_reg <= 32'b0;
		else if (clken == 1'b1)	result_extra0_reg <= result_wire[31:0];

	assign dataa_wire = dataa_input_reg;
	assign datab_wire = datab_input_reg;
	assign result_wire = dataa_wire * datab_wire;
	assign result = ({result_output_reg});

endmodule //mult_j5q
//VALID FILE
