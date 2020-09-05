-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/12/2019 21:40:12"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	a : IN std_logic_vector(31 DOWNTO 0);
	b : IN std_logic_vector(31 DOWNTO 0);
	op : IN std_logic_vector(2 DOWNTO 0);
	result : INOUT std_logic_vector(31 DOWNTO 0);
	carry : OUT std_logic;
	zero : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- carry	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[16]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[17]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[18]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[19]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[20]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[21]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[22]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[23]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[24]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[25]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[26]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[27]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[28]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[29]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[30]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[31]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[31]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[30]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[29]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[28]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[27]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[26]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[25]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[24]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[23]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[22]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[21]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[20]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[19]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[18]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[17]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[16]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_carry : std_logic;
SIGNAL ww_zero : std_logic;
SIGNAL \result[0]~input_o\ : std_logic;
SIGNAL \result[1]~input_o\ : std_logic;
SIGNAL \result[2]~input_o\ : std_logic;
SIGNAL \result[3]~input_o\ : std_logic;
SIGNAL \result[4]~input_o\ : std_logic;
SIGNAL \result[5]~input_o\ : std_logic;
SIGNAL \result[6]~input_o\ : std_logic;
SIGNAL \result[7]~input_o\ : std_logic;
SIGNAL \result[8]~input_o\ : std_logic;
SIGNAL \result[9]~input_o\ : std_logic;
SIGNAL \result[10]~input_o\ : std_logic;
SIGNAL \result[11]~input_o\ : std_logic;
SIGNAL \result[12]~input_o\ : std_logic;
SIGNAL \result[13]~input_o\ : std_logic;
SIGNAL \result[14]~input_o\ : std_logic;
SIGNAL \result[15]~input_o\ : std_logic;
SIGNAL \result[16]~input_o\ : std_logic;
SIGNAL \result[17]~input_o\ : std_logic;
SIGNAL \result[18]~input_o\ : std_logic;
SIGNAL \result[19]~input_o\ : std_logic;
SIGNAL \result[20]~input_o\ : std_logic;
SIGNAL \result[21]~input_o\ : std_logic;
SIGNAL \result[22]~input_o\ : std_logic;
SIGNAL \result[23]~input_o\ : std_logic;
SIGNAL \result[24]~input_o\ : std_logic;
SIGNAL \result[25]~input_o\ : std_logic;
SIGNAL \result[26]~input_o\ : std_logic;
SIGNAL \result[27]~input_o\ : std_logic;
SIGNAL \result[28]~input_o\ : std_logic;
SIGNAL \result[29]~input_o\ : std_logic;
SIGNAL \result[30]~input_o\ : std_logic;
SIGNAL \result[31]~input_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \result[16]~output_o\ : std_logic;
SIGNAL \result[17]~output_o\ : std_logic;
SIGNAL \result[18]~output_o\ : std_logic;
SIGNAL \result[19]~output_o\ : std_logic;
SIGNAL \result[20]~output_o\ : std_logic;
SIGNAL \result[21]~output_o\ : std_logic;
SIGNAL \result[22]~output_o\ : std_logic;
SIGNAL \result[23]~output_o\ : std_logic;
SIGNAL \result[24]~output_o\ : std_logic;
SIGNAL \result[25]~output_o\ : std_logic;
SIGNAL \result[26]~output_o\ : std_logic;
SIGNAL \result[27]~output_o\ : std_logic;
SIGNAL \result[28]~output_o\ : std_logic;
SIGNAL \result[29]~output_o\ : std_logic;
SIGNAL \result[30]~output_o\ : std_logic;
SIGNAL \result[31]~output_o\ : std_logic;
SIGNAL \carry~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \mux1|Mux31~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \mux1|Mux31~1_combout\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \mux1|Mux31~2_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \mux1|Mux30~1_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \mux1|Mux30~2_combout\ : std_logic;
SIGNAL \adder1|p2|sum~0_combout\ : std_logic;
SIGNAL \mux1|Mux30~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \mux1|Mux29~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \mux1|Mux29~1_combout\ : std_logic;
SIGNAL \adder1|p1|Cout~0_combout\ : std_logic;
SIGNAL \adder1|p4|Cout~0_combout\ : std_logic;
SIGNAL \adder1|p3|sum~0_combout\ : std_logic;
SIGNAL \mux1|Mux29~2_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \adder1|p4|sum~0_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \mux1|Mux28~1_combout\ : std_logic;
SIGNAL \mux1|Mux28~2_combout\ : std_logic;
SIGNAL \adder1|p4|Cout~1_combout\ : std_logic;
SIGNAL \mux1|Mux28~0_combout\ : std_logic;
SIGNAL \adder1|p4|Cout~2_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \adder1|p5|sum~0_combout\ : std_logic;
SIGNAL \mux1|Mux27~0_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \mux1|Mux27~1_combout\ : std_logic;
SIGNAL \mux1|Mux27~2_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \adder1|p6|sum~0_combout\ : std_logic;
SIGNAL \adder1|p6|Cout~2_combout\ : std_logic;
SIGNAL \mux1|Mux26~0_combout\ : std_logic;
SIGNAL \adder1|p6|Cout~0_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \mux1|Mux26~1_combout\ : std_logic;
SIGNAL \adder1|p5|Cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux26~2_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \mux1|Mux25~0_combout\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \mux1|Mux25~1_combout\ : std_logic;
SIGNAL \mux1|Mux25~2_combout\ : std_logic;
SIGNAL \adder1|p6|Cout~1_combout\ : std_logic;
SIGNAL \mux1|Mux25~3_combout\ : std_logic;
SIGNAL \adder1|p7|Cout~0_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \mux1|Mux24~0_combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \mux1|Mux24~1_combout\ : std_logic;
SIGNAL \mux1|Mux24~2_combout\ : std_logic;
SIGNAL \mux1|Mux24~3_combout\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \adder1|p9|sum~0_combout\ : std_logic;
SIGNAL \adder1|p8|Cout~0_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \mux1|Mux23~0_combout\ : std_logic;
SIGNAL \mux1|Mux23~1_combout\ : std_logic;
SIGNAL \mux1|Mux23~2_combout\ : std_logic;
SIGNAL \adder1|p9|Cout~0_combout\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \adder1|p10|Cout~2_combout\ : std_logic;
SIGNAL \mux1|Mux22~0_combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \adder1|p10|Cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux22~1_combout\ : std_logic;
SIGNAL \adder1|p10|sum~0_combout\ : std_logic;
SIGNAL \mux1|Mux22~2_combout\ : std_logic;
SIGNAL \adder1|p10|Cout~3_combout\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \mux1|Mux21~0_combout\ : std_logic;
SIGNAL \mux1|Mux21~1_combout\ : std_logic;
SIGNAL \adder1|p11|sum~0_combout\ : std_logic;
SIGNAL \mux1|Mux21~2_combout\ : std_logic;
SIGNAL \adder1|p10|Cout~1_combout\ : std_logic;
SIGNAL \adder1|p11|Cout~0_combout\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \mux1|Mux20~0_combout\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \mux1|Mux20~1_combout\ : std_logic;
SIGNAL \mux1|Mux20~2_combout\ : std_logic;
SIGNAL \mux1|Mux20~3_combout\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \mux1|Mux19~0_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \mux1|Mux19~1_combout\ : std_logic;
SIGNAL \adder1|p13|sum~0_combout\ : std_logic;
SIGNAL \adder1|p12|Cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux19~2_combout\ : std_logic;
SIGNAL \adder1|p13|Cout~0_combout\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \adder1|p14|Cout~0_combout\ : std_logic;
SIGNAL \adder1|p14|Cout~2_combout\ : std_logic;
SIGNAL \mux1|Mux18~0_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \mux1|Mux18~1_combout\ : std_logic;
SIGNAL \adder1|p14|sum~0_combout\ : std_logic;
SIGNAL \mux1|Mux18~2_combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \mux1|Mux17~0_combout\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \mux1|Mux17~1_combout\ : std_logic;
SIGNAL \mux1|Mux17~2_combout\ : std_logic;
SIGNAL \adder1|p14|Cout~1_combout\ : std_logic;
SIGNAL \mux1|Mux17~3_combout\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \mux1|Mux16~1_combout\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \mux1|Mux16~0_combout\ : std_logic;
SIGNAL \mux1|Mux16~2_combout\ : std_logic;
SIGNAL \adder1|p15|Cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux16~3_combout\ : std_logic;
SIGNAL \b[16]~input_o\ : std_logic;
SIGNAL \adder1|p17|sum~0_combout\ : std_logic;
SIGNAL \adder1|p16|Cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux15~0_combout\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \mux1|Mux15~1_combout\ : std_logic;
SIGNAL \mux1|Mux15~2_combout\ : std_logic;
SIGNAL \adder1|p17|Cout~0_combout\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \b[17]~input_o\ : std_logic;
SIGNAL \adder1|p18|Cout~0_combout\ : std_logic;
SIGNAL \adder1|p18|Cout~2_combout\ : std_logic;
SIGNAL \mux1|Mux14~0_combout\ : std_logic;
SIGNAL \mux1|Mux14~1_combout\ : std_logic;
SIGNAL \adder1|p18|sum~0_combout\ : std_logic;
SIGNAL \mux1|Mux14~2_combout\ : std_logic;
SIGNAL \adder1|p18|Cout~1_combout\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \mux1|Mux13~0_combout\ : std_logic;
SIGNAL \b[18]~input_o\ : std_logic;
SIGNAL \mux1|Mux13~1_combout\ : std_logic;
SIGNAL \mux1|Mux13~2_combout\ : std_logic;
SIGNAL \mux1|Mux13~3_combout\ : std_logic;
SIGNAL \adder1|p19|Cout~0_combout\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \mux1|Mux12~1_combout\ : std_logic;
SIGNAL \b[19]~input_o\ : std_logic;
SIGNAL \mux1|Mux12~0_combout\ : std_logic;
SIGNAL \mux1|Mux12~2_combout\ : std_logic;
SIGNAL \mux1|Mux12~3_combout\ : std_logic;
SIGNAL \b[20]~input_o\ : std_logic;
SIGNAL \adder1|p21|sum~0_combout\ : std_logic;
SIGNAL \adder1|p20|Cout~0_combout\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \mux1|Mux11~0_combout\ : std_logic;
SIGNAL \mux1|Mux11~1_combout\ : std_logic;
SIGNAL \mux1|Mux11~2_combout\ : std_logic;
SIGNAL \b[21]~input_o\ : std_logic;
SIGNAL \mux1|Mux10~0_combout\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \mux1|Mux10~1_combout\ : std_logic;
SIGNAL \mux1|Mux10~2_combout\ : std_logic;
SIGNAL \adder1|p21|Cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux10~3_combout\ : std_logic;
SIGNAL \adder1|p22|Cout~0_combout\ : std_logic;
SIGNAL \b[22]~input_o\ : std_logic;
SIGNAL \adder1|p23|sum~0_combout\ : std_logic;
SIGNAL \mux1|Mux9~0_combout\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \mux1|Mux9~1_combout\ : std_logic;
SIGNAL \mux1|Mux9~2_combout\ : std_logic;
SIGNAL \adder1|p23|Cout~1_combout\ : std_logic;
SIGNAL \adder1|p23|Cout~2_combout\ : std_logic;
SIGNAL \adder1|p23|Cout~0_combout\ : std_logic;
SIGNAL \b[23]~input_o\ : std_logic;
SIGNAL \mux1|Mux8~1_combout\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \mux1|Mux8~0_combout\ : std_logic;
SIGNAL \mux1|Mux8~2_combout\ : std_logic;
SIGNAL \mux1|Mux8~3_combout\ : std_logic;
SIGNAL \b[24]~input_o\ : std_logic;
SIGNAL \mux1|Mux7~0_combout\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \mux1|Mux7~1_combout\ : std_logic;
SIGNAL \adder1|p24|Cout~0_combout\ : std_logic;
SIGNAL \adder1|p25|sum~0_combout\ : std_logic;
SIGNAL \mux1|Mux7~2_combout\ : std_logic;
SIGNAL \b[25]~input_o\ : std_logic;
SIGNAL \mux1|Mux6~0_combout\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \mux1|Mux6~1_combout\ : std_logic;
SIGNAL \mux1|Mux6~2_combout\ : std_logic;
SIGNAL \adder1|p25|Cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux6~3_combout\ : std_logic;
SIGNAL \b[26]~input_o\ : std_logic;
SIGNAL \adder1|p27|sum~0_combout\ : std_logic;
SIGNAL \mux1|Mux5~0_combout\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \mux1|Mux5~1_combout\ : std_logic;
SIGNAL \adder1|p26|Cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux5~2_combout\ : std_logic;
SIGNAL \b[27]~input_o\ : std_logic;
SIGNAL \adder1|p28|sum~0_combout\ : std_logic;
SIGNAL \adder1|p27|Cout~0_combout\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \adder1|p28|Cout~1_combout\ : std_logic;
SIGNAL \adder1|p28|Cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux4~0_combout\ : std_logic;
SIGNAL \mux1|Mux4~1_combout\ : std_logic;
SIGNAL \mux1|Mux4~2_combout\ : std_logic;
SIGNAL \adder1|p28|Cout~2_combout\ : std_logic;
SIGNAL \b[28]~input_o\ : std_logic;
SIGNAL \adder1|p29|sum~0_combout\ : std_logic;
SIGNAL \mux1|Mux3~0_combout\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \mux1|Mux3~1_combout\ : std_logic;
SIGNAL \mux1|Mux3~2_combout\ : std_logic;
SIGNAL \adder1|p29|Cout~0_combout\ : std_logic;
SIGNAL \adder1|p29|Cout~1_combout\ : std_logic;
SIGNAL \adder1|p29|Cout~2_combout\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \mux1|Mux2~0_combout\ : std_logic;
SIGNAL \b[29]~input_o\ : std_logic;
SIGNAL \mux1|Mux2~1_combout\ : std_logic;
SIGNAL \mux1|Mux2~2_combout\ : std_logic;
SIGNAL \mux1|Mux2~3_combout\ : std_logic;
SIGNAL \b[30]~input_o\ : std_logic;
SIGNAL \adder1|p31|sum~0_combout\ : std_logic;
SIGNAL \mux1|Mux1~0_combout\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \mux1|Mux1~1_combout\ : std_logic;
SIGNAL \adder1|p30|Cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux1~2_combout\ : std_logic;
SIGNAL \b[31]~input_o\ : std_logic;
SIGNAL \mux1|Mux0~0_combout\ : std_logic;
SIGNAL \mux1|Mux0~1_combout\ : std_logic;
SIGNAL \adder1|p32|sum~0_combout\ : std_logic;
SIGNAL \adder1|p31|Cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux0~2_combout\ : std_logic;
SIGNAL \adder1|p32|Cout~0_combout\ : std_logic;
SIGNAL \zero~0_combout\ : std_logic;
SIGNAL \zero~1_combout\ : std_logic;
SIGNAL \zero~2_combout\ : std_logic;
SIGNAL \zero~3_combout\ : std_logic;
SIGNAL \zero~4_combout\ : std_logic;
SIGNAL \zero~5_combout\ : std_logic;
SIGNAL \zero~6_combout\ : std_logic;
SIGNAL \zero~7_combout\ : std_logic;
SIGNAL \zero~8_combout\ : std_logic;
SIGNAL \zero~9_combout\ : std_logic;
SIGNAL \zero~10_combout\ : std_logic;
SIGNAL \ALT_INV_zero~10_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_op <= op;
carry <= ww_carry;
zero <= ww_zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_zero~10_combout\ <= NOT \zero~10_combout\;

-- Location: IOOBUF_X1_Y0_N9
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux31~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux30~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux29~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux28~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux27~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux26~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux25~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux24~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux23~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux22~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux21~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux20~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux19~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X13_Y24_N9
\result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux18~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux17~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux16~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\result[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux15~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[16]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\result[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux14~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[17]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\result[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux13~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[18]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\result[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux12~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[19]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\result[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux11~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[20]~output_o\);

-- Location: IOOBUF_X7_Y24_N16
\result[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux10~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[21]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\result[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux9~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[22]~output_o\);

-- Location: IOOBUF_X13_Y24_N2
\result[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux8~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[23]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\result[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux7~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[24]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\result[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux6~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[25]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\result[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux5~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[26]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\result[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux4~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[27]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\result[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux3~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[28]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\result[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux2~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[29]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\result[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux1~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[30]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\result[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux0~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \result[31]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\carry~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder1|p32|Cout~0_combout\,
	devoe => ww_devoe,
	o => \carry~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_zero~10_combout\,
	devoe => ww_devoe,
	o => \zero~output_o\);

-- Location: IOIBUF_X11_Y0_N22
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

-- Location: LCCOMB_X11_Y2_N2
\mux1|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux31~0_combout\ = \op[2]~input_o\ $ (((!\op[0]~input_o\ & (\a[0]~input_o\ $ (\b[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \mux1|Mux31~0_combout\);

-- Location: IOIBUF_X11_Y0_N1
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X11_Y2_N4
\mux1|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux31~1_combout\ = (\a[0]~input_o\ & ((\op[0]~input_o\) # ((\b[0]~input_o\ & !\op[2]~input_o\)))) # (!\a[0]~input_o\ & (\op[0]~input_o\ & ((\b[0]~input_o\) # (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \mux1|Mux31~1_combout\);

-- Location: IOIBUF_X16_Y0_N22
\op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: LCCOMB_X11_Y2_N30
\mux1|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux31~2_combout\ = (\mux1|Mux31~1_combout\ & (!\op[1]~input_o\ & ((\a[1]~input_o\) # (!\mux1|Mux31~0_combout\)))) # (!\mux1|Mux31~1_combout\ & (\mux1|Mux31~0_combout\ & ((\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux31~0_combout\,
	datab => \a[1]~input_o\,
	datac => \mux1|Mux31~1_combout\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux31~2_combout\);

-- Location: IOIBUF_X11_Y0_N8
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X11_Y2_N20
\mux1|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux30~1_combout\ = (\op[0]~input_o\ & (!\op[2]~input_o\ & ((\b[1]~input_o\) # (\a[1]~input_o\)))) # (!\op[0]~input_o\ & ((\op[2]~input_o\) # ((\b[1]~input_o\ & \a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[1]~input_o\,
	datad => \op[2]~input_o\,
	combout => \mux1|Mux30~1_combout\);

-- Location: IOIBUF_X7_Y24_N1
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X11_Y2_N6
\mux1|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux30~2_combout\ = (\mux1|Mux30~1_combout\ & ((\a[0]~input_o\) # ((!\op[2]~input_o\)))) # (!\mux1|Mux30~1_combout\ & (((\a[2]~input_o\ & \op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \mux1|Mux30~1_combout\,
	datac => \a[2]~input_o\,
	datad => \op[2]~input_o\,
	combout => \mux1|Mux30~2_combout\);

-- Location: LCCOMB_X11_Y2_N24
\adder1|p2|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p2|sum~0_combout\ = \a[1]~input_o\ $ (((\a[0]~input_o\ & ((\b[0]~input_o\) # (\op[2]~input_o\))) # (!\a[0]~input_o\ & (\b[0]~input_o\ & \op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \op[2]~input_o\,
	combout => \adder1|p2|sum~0_combout\);

-- Location: LCCOMB_X11_Y2_N26
\mux1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux30~0_combout\ = (\op[1]~input_o\ & ((\adder1|p2|sum~0_combout\ $ (\b[1]~input_o\)))) # (!\op[1]~input_o\ & (\mux1|Mux30~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux30~2_combout\,
	datab => \adder1|p2|sum~0_combout\,
	datac => \b[1]~input_o\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux30~0_combout\);

-- Location: IOIBUF_X13_Y0_N22
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X10_Y4_N18
\mux1|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux29~0_combout\ = (\op[0]~input_o\ & ((\a[2]~input_o\) # ((\op[2]~input_o\) # (\b[2]~input_o\)))) # (!\op[0]~input_o\ & (\a[2]~input_o\ & (!\op[2]~input_o\ & \b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \a[2]~input_o\,
	datac => \op[2]~input_o\,
	datad => \b[2]~input_o\,
	combout => \mux1|Mux29~0_combout\);

-- Location: IOIBUF_X7_Y0_N15
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X11_Y2_N12
\mux1|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux29~1_combout\ = (\mux1|Mux29~0_combout\ & (((\a[3]~input_o\) # (!\op[2]~input_o\)))) # (!\mux1|Mux29~0_combout\ & (\a[1]~input_o\ & ((\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux29~0_combout\,
	datab => \a[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \op[2]~input_o\,
	combout => \mux1|Mux29~1_combout\);

-- Location: LCCOMB_X11_Y2_N16
\adder1|p1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p1|Cout~0_combout\ = (\a[0]~input_o\ & ((\b[0]~input_o\) # (\op[2]~input_o\))) # (!\a[0]~input_o\ & (\b[0]~input_o\ & \op[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \adder1|p1|Cout~0_combout\);

-- Location: LCCOMB_X11_Y2_N10
\adder1|p4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p4|Cout~0_combout\ = (\b[1]~input_o\ & ((\a[1]~input_o\) # (\adder1|p1|Cout~0_combout\))) # (!\b[1]~input_o\ & (\a[1]~input_o\ & \adder1|p1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datac => \a[1]~input_o\,
	datad => \adder1|p1|Cout~0_combout\,
	combout => \adder1|p4|Cout~0_combout\);

-- Location: LCCOMB_X11_Y2_N14
\adder1|p3|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p3|sum~0_combout\ = \a[2]~input_o\ $ (\b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	combout => \adder1|p3|sum~0_combout\);

-- Location: LCCOMB_X11_Y2_N8
\mux1|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux29~2_combout\ = (\op[1]~input_o\ & ((\adder1|p4|Cout~0_combout\ $ (\adder1|p3|sum~0_combout\)))) # (!\op[1]~input_o\ & (\mux1|Mux29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux29~1_combout\,
	datab => \adder1|p4|Cout~0_combout\,
	datac => \adder1|p3|sum~0_combout\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux29~2_combout\);

-- Location: IOIBUF_X9_Y24_N8
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X10_Y4_N6
\adder1|p4|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p4|sum~0_combout\ = \a[3]~input_o\ $ (\b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datac => \b[3]~input_o\,
	combout => \adder1|p4|sum~0_combout\);

-- Location: IOIBUF_X0_Y11_N22
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X10_Y4_N12
\mux1|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux28~1_combout\ = (\op[2]~input_o\ & (((!\op[0]~input_o\)))) # (!\op[2]~input_o\ & ((\b[3]~input_o\ & ((\a[3]~input_o\) # (\op[0]~input_o\))) # (!\b[3]~input_o\ & (\a[3]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[0]~input_o\,
	combout => \mux1|Mux28~1_combout\);

-- Location: LCCOMB_X10_Y4_N14
\mux1|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux28~2_combout\ = (\op[2]~input_o\ & ((\mux1|Mux28~1_combout\ & ((\a[2]~input_o\))) # (!\mux1|Mux28~1_combout\ & (\a[4]~input_o\)))) # (!\op[2]~input_o\ & (((\mux1|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \a[4]~input_o\,
	datac => \a[2]~input_o\,
	datad => \mux1|Mux28~1_combout\,
	combout => \mux1|Mux28~2_combout\);

-- Location: LCCOMB_X10_Y4_N8
\adder1|p4|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p4|Cout~1_combout\ = (\adder1|p4|Cout~0_combout\ & ((\a[2]~input_o\) # (\b[2]~input_o\))) # (!\adder1|p4|Cout~0_combout\ & (\a[2]~input_o\ & \b[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p4|Cout~0_combout\,
	datac => \a[2]~input_o\,
	datad => \b[2]~input_o\,
	combout => \adder1|p4|Cout~1_combout\);

-- Location: LCCOMB_X10_Y4_N24
\mux1|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux28~0_combout\ = (\op[1]~input_o\ & (\adder1|p4|sum~0_combout\ $ (((\adder1|p4|Cout~1_combout\))))) # (!\op[1]~input_o\ & (((\mux1|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p4|sum~0_combout\,
	datab => \mux1|Mux28~2_combout\,
	datac => \adder1|p4|Cout~1_combout\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux28~0_combout\);

-- Location: LCCOMB_X10_Y4_N10
\adder1|p4|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p4|Cout~2_combout\ = (\a[3]~input_o\ & ((\adder1|p4|Cout~1_combout\) # (\b[3]~input_o\))) # (!\a[3]~input_o\ & (\adder1|p4|Cout~1_combout\ & \b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \adder1|p4|Cout~1_combout\,
	datac => \b[3]~input_o\,
	combout => \adder1|p4|Cout~2_combout\);

-- Location: IOIBUF_X32_Y0_N15
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LCCOMB_X9_Y3_N2
\adder1|p5|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p5|sum~0_combout\ = \b[4]~input_o\ $ (\a[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[4]~input_o\,
	datad => \a[4]~input_o\,
	combout => \adder1|p5|sum~0_combout\);

-- Location: LCCOMB_X9_Y3_N14
\mux1|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux27~0_combout\ = (\op[2]~input_o\ & (\op[0]~input_o\)) # (!\op[2]~input_o\ & ((\op[0]~input_o\ & ((\b[4]~input_o\) # (\a[4]~input_o\))) # (!\op[0]~input_o\ & (\b[4]~input_o\ & \a[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \op[0]~input_o\,
	datac => \b[4]~input_o\,
	datad => \a[4]~input_o\,
	combout => \mux1|Mux27~0_combout\);

-- Location: IOIBUF_X0_Y7_N15
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X9_Y3_N24
\mux1|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux27~1_combout\ = (\mux1|Mux27~0_combout\ & (((\a[5]~input_o\) # (!\op[2]~input_o\)))) # (!\mux1|Mux27~0_combout\ & (\a[3]~input_o\ & (\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \mux1|Mux27~0_combout\,
	datac => \op[2]~input_o\,
	datad => \a[5]~input_o\,
	combout => \mux1|Mux27~1_combout\);

-- Location: LCCOMB_X9_Y3_N28
\mux1|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux27~2_combout\ = (\op[1]~input_o\ & (\adder1|p4|Cout~2_combout\ $ ((\adder1|p5|sum~0_combout\)))) # (!\op[1]~input_o\ & (((\mux1|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p4|Cout~2_combout\,
	datab => \adder1|p5|sum~0_combout\,
	datac => \op[1]~input_o\,
	datad => \mux1|Mux27~1_combout\,
	combout => \mux1|Mux27~2_combout\);

-- Location: IOIBUF_X0_Y11_N15
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LCCOMB_X9_Y3_N12
\adder1|p6|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p6|sum~0_combout\ = \a[5]~input_o\ $ (\b[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[5]~input_o\,
	datad => \b[5]~input_o\,
	combout => \adder1|p6|sum~0_combout\);

-- Location: LCCOMB_X9_Y3_N20
\adder1|p6|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p6|Cout~2_combout\ = (\a[5]~input_o\ & \b[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[5]~input_o\,
	datad => \b[5]~input_o\,
	combout => \adder1|p6|Cout~2_combout\);

-- Location: LCCOMB_X9_Y3_N6
\mux1|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux26~0_combout\ = (\op[0]~input_o\ & (((\op[2]~input_o\)))) # (!\op[0]~input_o\ & ((\op[2]~input_o\ & (\a[4]~input_o\)) # (!\op[2]~input_o\ & ((\adder1|p6|Cout~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \adder1|p6|Cout~2_combout\,
	combout => \mux1|Mux26~0_combout\);

-- Location: LCCOMB_X9_Y3_N16
\adder1|p6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p6|Cout~0_combout\ = (\a[5]~input_o\) # (\b[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[5]~input_o\,
	datad => \b[5]~input_o\,
	combout => \adder1|p6|Cout~0_combout\);

-- Location: IOIBUF_X1_Y0_N1
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X9_Y3_N8
\mux1|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux26~1_combout\ = (\mux1|Mux26~0_combout\ & (((\a[6]~input_o\) # (!\op[0]~input_o\)))) # (!\mux1|Mux26~0_combout\ & (\adder1|p6|Cout~0_combout\ & ((\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux26~0_combout\,
	datab => \adder1|p6|Cout~0_combout\,
	datac => \a[6]~input_o\,
	datad => \op[0]~input_o\,
	combout => \mux1|Mux26~1_combout\);

-- Location: LCCOMB_X9_Y3_N18
\adder1|p5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p5|Cout~0_combout\ = (\a[4]~input_o\ & ((\b[4]~input_o\) # (\adder1|p4|Cout~2_combout\))) # (!\a[4]~input_o\ & (\b[4]~input_o\ & \adder1|p4|Cout~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \b[4]~input_o\,
	datac => \adder1|p4|Cout~2_combout\,
	combout => \adder1|p5|Cout~0_combout\);

-- Location: LCCOMB_X9_Y3_N22
\mux1|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux26~2_combout\ = (\op[1]~input_o\ & (\adder1|p6|sum~0_combout\ $ (((\adder1|p5|Cout~0_combout\))))) # (!\op[1]~input_o\ & (((\mux1|Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p6|sum~0_combout\,
	datab => \mux1|Mux26~1_combout\,
	datac => \op[1]~input_o\,
	datad => \adder1|p5|Cout~0_combout\,
	combout => \mux1|Mux26~2_combout\);

-- Location: IOIBUF_X9_Y0_N8
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X9_Y4_N18
\mux1|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux25~0_combout\ = (\op[0]~input_o\ & (\a[7]~input_o\)) # (!\op[0]~input_o\ & ((\a[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \a[5]~input_o\,
	datac => \op[0]~input_o\,
	combout => \mux1|Mux25~0_combout\);

-- Location: IOIBUF_X34_Y3_N22
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LCCOMB_X9_Y3_N0
\mux1|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux25~1_combout\ = (\a[6]~input_o\ & ((\op[1]~input_o\ & (!\b[6]~input_o\)) # (!\op[1]~input_o\ & ((\b[6]~input_o\) # (\op[0]~input_o\))))) # (!\a[6]~input_o\ & (\b[6]~input_o\ & ((\op[1]~input_o\) # (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \op[1]~input_o\,
	datac => \b[6]~input_o\,
	datad => \op[0]~input_o\,
	combout => \mux1|Mux25~1_combout\);

-- Location: LCCOMB_X9_Y3_N26
\mux1|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux25~2_combout\ = (\op[1]~input_o\ & (((\mux1|Mux25~1_combout\)))) # (!\op[1]~input_o\ & ((\op[2]~input_o\ & (\mux1|Mux25~0_combout\)) # (!\op[2]~input_o\ & ((\mux1|Mux25~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux25~0_combout\,
	datab => \op[1]~input_o\,
	datac => \op[2]~input_o\,
	datad => \mux1|Mux25~1_combout\,
	combout => \mux1|Mux25~2_combout\);

-- Location: LCCOMB_X9_Y3_N10
\adder1|p6|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p6|Cout~1_combout\ = (\adder1|p6|Cout~0_combout\ & ((\adder1|p4|Cout~2_combout\ & ((\b[4]~input_o\) # (\a[4]~input_o\))) # (!\adder1|p4|Cout~2_combout\ & (\b[4]~input_o\ & \a[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p4|Cout~2_combout\,
	datab => \adder1|p6|Cout~0_combout\,
	datac => \b[4]~input_o\,
	datad => \a[4]~input_o\,
	combout => \adder1|p6|Cout~1_combout\);

-- Location: LCCOMB_X9_Y3_N4
\mux1|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux25~3_combout\ = \mux1|Mux25~2_combout\ $ (((\op[1]~input_o\ & ((\adder1|p6|Cout~2_combout\) # (\adder1|p6|Cout~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux25~2_combout\,
	datab => \adder1|p6|Cout~2_combout\,
	datac => \op[1]~input_o\,
	datad => \adder1|p6|Cout~1_combout\,
	combout => \mux1|Mux25~3_combout\);

-- Location: LCCOMB_X9_Y3_N30
\adder1|p7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p7|Cout~0_combout\ = (\a[6]~input_o\ & ((\adder1|p6|Cout~1_combout\) # ((\b[6]~input_o\) # (\adder1|p6|Cout~2_combout\)))) # (!\a[6]~input_o\ & (\b[6]~input_o\ & ((\adder1|p6|Cout~1_combout\) # (\adder1|p6|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p6|Cout~1_combout\,
	datab => \a[6]~input_o\,
	datac => \b[6]~input_o\,
	datad => \adder1|p6|Cout~2_combout\,
	combout => \adder1|p7|Cout~0_combout\);

-- Location: IOIBUF_X1_Y0_N15
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LCCOMB_X9_Y2_N6
\mux1|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux24~0_combout\ = (\op[1]~input_o\ & (\b[7]~input_o\ $ (((\a[7]~input_o\))))) # (!\op[1]~input_o\ & ((\b[7]~input_o\ & ((\op[0]~input_o\) # (\a[7]~input_o\))) # (!\b[7]~input_o\ & (\op[0]~input_o\ & \a[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \b[7]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[7]~input_o\,
	combout => \mux1|Mux24~0_combout\);

-- Location: IOIBUF_X1_Y0_N22
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LCCOMB_X9_Y2_N0
\mux1|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux24~1_combout\ = (\op[0]~input_o\ & (\a[8]~input_o\)) # (!\op[0]~input_o\ & ((\a[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[8]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[6]~input_o\,
	combout => \mux1|Mux24~1_combout\);

-- Location: LCCOMB_X9_Y2_N18
\mux1|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux24~2_combout\ = (\op[2]~input_o\ & (\mux1|Mux24~0_combout\ $ (\mux1|Mux24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux24~0_combout\,
	datab => \mux1|Mux24~1_combout\,
	datad => \op[2]~input_o\,
	combout => \mux1|Mux24~2_combout\);

-- Location: LCCOMB_X9_Y2_N4
\mux1|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux24~3_combout\ = \mux1|Mux24~0_combout\ $ (((\op[1]~input_o\ & (\adder1|p7|Cout~0_combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux24~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p7|Cout~0_combout\,
	datab => \mux1|Mux24~2_combout\,
	datac => \op[1]~input_o\,
	datad => \mux1|Mux24~0_combout\,
	combout => \mux1|Mux24~3_combout\);

-- Location: IOIBUF_X0_Y5_N22
\b[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: LCCOMB_X9_Y2_N26
\adder1|p9|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p9|sum~0_combout\ = \b[8]~input_o\ $ (\a[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[8]~input_o\,
	datad => \a[8]~input_o\,
	combout => \adder1|p9|sum~0_combout\);

-- Location: LCCOMB_X9_Y2_N24
\adder1|p8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p8|Cout~0_combout\ = (\b[7]~input_o\ & ((\adder1|p7|Cout~0_combout\) # (\a[7]~input_o\))) # (!\b[7]~input_o\ & (\adder1|p7|Cout~0_combout\ & \a[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datac => \adder1|p7|Cout~0_combout\,
	datad => \a[7]~input_o\,
	combout => \adder1|p8|Cout~0_combout\);

-- Location: IOIBUF_X34_Y2_N15
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: LCCOMB_X9_Y2_N30
\mux1|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux23~0_combout\ = (\op[2]~input_o\ & (((\op[0]~input_o\)))) # (!\op[2]~input_o\ & ((\a[8]~input_o\ & ((\op[0]~input_o\) # (\b[8]~input_o\))) # (!\a[8]~input_o\ & (\op[0]~input_o\ & \b[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \a[8]~input_o\,
	datac => \op[0]~input_o\,
	datad => \b[8]~input_o\,
	combout => \mux1|Mux23~0_combout\);

-- Location: LCCOMB_X9_Y2_N16
\mux1|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux23~1_combout\ = (\mux1|Mux23~0_combout\ & (((\a[9]~input_o\) # (!\op[2]~input_o\)))) # (!\mux1|Mux23~0_combout\ & (\a[7]~input_o\ & ((\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \a[9]~input_o\,
	datac => \mux1|Mux23~0_combout\,
	datad => \op[2]~input_o\,
	combout => \mux1|Mux23~1_combout\);

-- Location: LCCOMB_X9_Y2_N28
\mux1|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux23~2_combout\ = (\op[1]~input_o\ & (\adder1|p9|sum~0_combout\ $ ((\adder1|p8|Cout~0_combout\)))) # (!\op[1]~input_o\ & (((\mux1|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p9|sum~0_combout\,
	datab => \adder1|p8|Cout~0_combout\,
	datac => \op[1]~input_o\,
	datad => \mux1|Mux23~1_combout\,
	combout => \mux1|Mux23~2_combout\);

-- Location: LCCOMB_X9_Y2_N8
\adder1|p9|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p9|Cout~0_combout\ = (\b[8]~input_o\ & ((\a[8]~input_o\) # (\adder1|p8|Cout~0_combout\))) # (!\b[8]~input_o\ & (\a[8]~input_o\ & \adder1|p8|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[8]~input_o\,
	datac => \a[8]~input_o\,
	datad => \adder1|p8|Cout~0_combout\,
	combout => \adder1|p9|Cout~0_combout\);

-- Location: IOIBUF_X11_Y24_N22
\b[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: LCCOMB_X10_Y2_N2
\adder1|p10|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p10|Cout~2_combout\ = (\b[9]~input_o\ & \a[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[9]~input_o\,
	datad => \a[9]~input_o\,
	combout => \adder1|p10|Cout~2_combout\);

-- Location: LCCOMB_X9_Y2_N20
\mux1|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux22~0_combout\ = (\op[0]~input_o\ & (((\op[2]~input_o\)))) # (!\op[0]~input_o\ & ((\op[2]~input_o\ & ((\a[8]~input_o\))) # (!\op[2]~input_o\ & (\adder1|p10|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p10|Cout~2_combout\,
	datab => \a[8]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \mux1|Mux22~0_combout\);

-- Location: IOIBUF_X5_Y0_N22
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LCCOMB_X10_Y2_N24
\adder1|p10|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p10|Cout~0_combout\ = (\b[9]~input_o\) # (\a[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[9]~input_o\,
	datad => \a[9]~input_o\,
	combout => \adder1|p10|Cout~0_combout\);

-- Location: LCCOMB_X9_Y2_N22
\mux1|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux22~1_combout\ = (\op[0]~input_o\ & ((\mux1|Mux22~0_combout\ & (\a[10]~input_o\)) # (!\mux1|Mux22~0_combout\ & ((\adder1|p10|Cout~0_combout\))))) # (!\op[0]~input_o\ & (\mux1|Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \mux1|Mux22~0_combout\,
	datac => \a[10]~input_o\,
	datad => \adder1|p10|Cout~0_combout\,
	combout => \mux1|Mux22~1_combout\);

-- Location: LCCOMB_X10_Y2_N26
\adder1|p10|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p10|sum~0_combout\ = \b[9]~input_o\ $ (\a[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[9]~input_o\,
	datad => \a[9]~input_o\,
	combout => \adder1|p10|sum~0_combout\);

-- Location: LCCOMB_X10_Y2_N28
\mux1|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux22~2_combout\ = (\op[1]~input_o\ & (\adder1|p9|Cout~0_combout\ $ (((\adder1|p10|sum~0_combout\))))) # (!\op[1]~input_o\ & (((\mux1|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p9|Cout~0_combout\,
	datab => \mux1|Mux22~1_combout\,
	datac => \adder1|p10|sum~0_combout\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux22~2_combout\);

-- Location: LCCOMB_X10_Y2_N10
\adder1|p10|Cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p10|Cout~3_combout\ = (\adder1|p9|Cout~0_combout\ & ((\b[9]~input_o\) # (\a[9]~input_o\))) # (!\adder1|p9|Cout~0_combout\ & (\b[9]~input_o\ & \a[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p9|Cout~0_combout\,
	datac => \b[9]~input_o\,
	datad => \a[9]~input_o\,
	combout => \adder1|p10|Cout~3_combout\);

-- Location: IOIBUF_X0_Y10_N15
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\b[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: LCCOMB_X10_Y2_N30
\mux1|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux21~0_combout\ = (\b[10]~input_o\ & ((\op[0]~input_o\) # ((\a[10]~input_o\ & !\op[2]~input_o\)))) # (!\b[10]~input_o\ & (\op[0]~input_o\ & ((\a[10]~input_o\) # (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[10]~input_o\,
	datab => \a[10]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[0]~input_o\,
	combout => \mux1|Mux21~0_combout\);

-- Location: LCCOMB_X10_Y2_N0
\mux1|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux21~1_combout\ = (\op[2]~input_o\ & ((\mux1|Mux21~0_combout\ & (\a[11]~input_o\)) # (!\mux1|Mux21~0_combout\ & ((\a[9]~input_o\))))) # (!\op[2]~input_o\ & (((\mux1|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[11]~input_o\,
	datab => \op[2]~input_o\,
	datac => \mux1|Mux21~0_combout\,
	datad => \a[9]~input_o\,
	combout => \mux1|Mux21~1_combout\);

-- Location: LCCOMB_X10_Y2_N20
\adder1|p11|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p11|sum~0_combout\ = \a[10]~input_o\ $ (\b[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[10]~input_o\,
	datad => \b[10]~input_o\,
	combout => \adder1|p11|sum~0_combout\);

-- Location: LCCOMB_X10_Y2_N22
\mux1|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux21~2_combout\ = (\op[1]~input_o\ & (\adder1|p10|Cout~3_combout\ $ (((\adder1|p11|sum~0_combout\))))) # (!\op[1]~input_o\ & (((\mux1|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p10|Cout~3_combout\,
	datab => \mux1|Mux21~1_combout\,
	datac => \adder1|p11|sum~0_combout\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux21~2_combout\);

-- Location: LCCOMB_X9_Y2_N2
\adder1|p10|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p10|Cout~1_combout\ = (\adder1|p10|Cout~0_combout\ & ((\b[8]~input_o\ & ((\adder1|p8|Cout~0_combout\) # (\a[8]~input_o\))) # (!\b[8]~input_o\ & (\adder1|p8|Cout~0_combout\ & \a[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[8]~input_o\,
	datab => \adder1|p8|Cout~0_combout\,
	datac => \a[8]~input_o\,
	datad => \adder1|p10|Cout~0_combout\,
	combout => \adder1|p10|Cout~1_combout\);

-- Location: LCCOMB_X10_Y2_N12
\adder1|p11|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p11|Cout~0_combout\ = (\a[10]~input_o\ & ((\adder1|p10|Cout~1_combout\) # ((\adder1|p10|Cout~2_combout\) # (\b[10]~input_o\)))) # (!\a[10]~input_o\ & (\b[10]~input_o\ & ((\adder1|p10|Cout~1_combout\) # (\adder1|p10|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p10|Cout~1_combout\,
	datab => \a[10]~input_o\,
	datac => \adder1|p10|Cout~2_combout\,
	datad => \b[10]~input_o\,
	combout => \adder1|p11|Cout~0_combout\);

-- Location: IOIBUF_X11_Y24_N1
\b[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: LCCOMB_X10_Y2_N16
\mux1|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux20~0_combout\ = (\a[11]~input_o\ & ((\op[1]~input_o\ & (!\b[11]~input_o\)) # (!\op[1]~input_o\ & ((\b[11]~input_o\) # (\op[0]~input_o\))))) # (!\a[11]~input_o\ & (\b[11]~input_o\ & ((\op[1]~input_o\) # (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[11]~input_o\,
	datab => \op[1]~input_o\,
	datac => \b[11]~input_o\,
	datad => \op[0]~input_o\,
	combout => \mux1|Mux20~0_combout\);

-- Location: IOIBUF_X13_Y0_N1
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: LCCOMB_X10_Y2_N18
\mux1|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux20~1_combout\ = (\op[0]~input_o\ & (\a[12]~input_o\)) # (!\op[0]~input_o\ & ((\a[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[12]~input_o\,
	datac => \a[10]~input_o\,
	datad => \op[0]~input_o\,
	combout => \mux1|Mux20~1_combout\);

-- Location: LCCOMB_X10_Y2_N4
\mux1|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux20~2_combout\ = (\op[2]~input_o\ & (\mux1|Mux20~0_combout\ $ (\mux1|Mux20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|Mux20~0_combout\,
	datac => \op[2]~input_o\,
	datad => \mux1|Mux20~1_combout\,
	combout => \mux1|Mux20~2_combout\);

-- Location: LCCOMB_X10_Y2_N6
\mux1|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux20~3_combout\ = \mux1|Mux20~0_combout\ $ (((\op[1]~input_o\ & (\adder1|p11|Cout~0_combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux20~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p11|Cout~0_combout\,
	datab => \mux1|Mux20~0_combout\,
	datac => \mux1|Mux20~2_combout\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux20~3_combout\);

-- Location: IOIBUF_X16_Y0_N8
\b[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: LCCOMB_X11_Y2_N28
\mux1|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux19~0_combout\ = (\b[12]~input_o\ & ((\op[0]~input_o\) # ((\a[12]~input_o\ & !\op[2]~input_o\)))) # (!\b[12]~input_o\ & (\op[0]~input_o\ & ((\a[12]~input_o\) # (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[12]~input_o\,
	datad => \op[2]~input_o\,
	combout => \mux1|Mux19~0_combout\);

-- Location: IOIBUF_X18_Y0_N8
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: LCCOMB_X10_Y2_N8
\mux1|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux19~1_combout\ = (\mux1|Mux19~0_combout\ & (((\a[13]~input_o\) # (!\op[2]~input_o\)))) # (!\mux1|Mux19~0_combout\ & (\a[11]~input_o\ & (\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[11]~input_o\,
	datab => \mux1|Mux19~0_combout\,
	datac => \op[2]~input_o\,
	datad => \a[13]~input_o\,
	combout => \mux1|Mux19~1_combout\);

-- Location: LCCOMB_X11_Y2_N22
\adder1|p13|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p13|sum~0_combout\ = \a[12]~input_o\ $ (\b[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[12]~input_o\,
	datad => \b[12]~input_o\,
	combout => \adder1|p13|sum~0_combout\);

-- Location: LCCOMB_X10_Y2_N14
\adder1|p12|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p12|Cout~0_combout\ = (\a[11]~input_o\ & ((\b[11]~input_o\) # (\adder1|p11|Cout~0_combout\))) # (!\a[11]~input_o\ & (\b[11]~input_o\ & \adder1|p11|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[11]~input_o\,
	datac => \b[11]~input_o\,
	datad => \adder1|p11|Cout~0_combout\,
	combout => \adder1|p12|Cout~0_combout\);

-- Location: LCCOMB_X11_Y2_N0
\mux1|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux19~2_combout\ = (\op[1]~input_o\ & ((\adder1|p13|sum~0_combout\ $ (\adder1|p12|Cout~0_combout\)))) # (!\op[1]~input_o\ & (\mux1|Mux19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux19~1_combout\,
	datab => \op[1]~input_o\,
	datac => \adder1|p13|sum~0_combout\,
	datad => \adder1|p12|Cout~0_combout\,
	combout => \mux1|Mux19~2_combout\);

-- Location: LCCOMB_X11_Y2_N18
\adder1|p13|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p13|Cout~0_combout\ = (\adder1|p12|Cout~0_combout\ & ((\a[12]~input_o\) # (\b[12]~input_o\))) # (!\adder1|p12|Cout~0_combout\ & (\a[12]~input_o\ & \b[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p12|Cout~0_combout\,
	datac => \a[12]~input_o\,
	datad => \b[12]~input_o\,
	combout => \adder1|p13|Cout~0_combout\);

-- Location: IOIBUF_X34_Y8_N8
\b[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: LCCOMB_X16_Y6_N8
\adder1|p14|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p14|Cout~0_combout\ = (\b[13]~input_o\) # (\a[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[13]~input_o\,
	datad => \a[13]~input_o\,
	combout => \adder1|p14|Cout~0_combout\);

-- Location: LCCOMB_X16_Y6_N18
\adder1|p14|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p14|Cout~2_combout\ = (\b[13]~input_o\ & \a[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[13]~input_o\,
	datad => \a[13]~input_o\,
	combout => \adder1|p14|Cout~2_combout\);

-- Location: LCCOMB_X13_Y6_N24
\mux1|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux18~0_combout\ = (\op[0]~input_o\ & (((\op[2]~input_o\)))) # (!\op[0]~input_o\ & ((\op[2]~input_o\ & ((\a[12]~input_o\))) # (!\op[2]~input_o\ & (\adder1|p14|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \adder1|p14|Cout~2_combout\,
	datac => \op[2]~input_o\,
	datad => \a[12]~input_o\,
	combout => \mux1|Mux18~0_combout\);

-- Location: IOIBUF_X34_Y6_N15
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: LCCOMB_X13_Y6_N26
\mux1|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux18~1_combout\ = (\mux1|Mux18~0_combout\ & (((\a[14]~input_o\) # (!\op[0]~input_o\)))) # (!\mux1|Mux18~0_combout\ & (\adder1|p14|Cout~0_combout\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p14|Cout~0_combout\,
	datab => \mux1|Mux18~0_combout\,
	datac => \op[0]~input_o\,
	datad => \a[14]~input_o\,
	combout => \mux1|Mux18~1_combout\);

-- Location: LCCOMB_X16_Y6_N20
\adder1|p14|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p14|sum~0_combout\ = \b[13]~input_o\ $ (\a[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[13]~input_o\,
	datad => \a[13]~input_o\,
	combout => \adder1|p14|sum~0_combout\);

-- Location: LCCOMB_X13_Y6_N12
\mux1|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux18~2_combout\ = (\op[1]~input_o\ & (\adder1|p13|Cout~0_combout\ $ (((\adder1|p14|sum~0_combout\))))) # (!\op[1]~input_o\ & (((\mux1|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p13|Cout~0_combout\,
	datab => \op[1]~input_o\,
	datac => \mux1|Mux18~1_combout\,
	datad => \adder1|p14|sum~0_combout\,
	combout => \mux1|Mux18~2_combout\);

-- Location: IOIBUF_X13_Y24_N22
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LCCOMB_X13_Y6_N6
\mux1|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux17~0_combout\ = (\op[0]~input_o\ & (\a[15]~input_o\)) # (!\op[0]~input_o\ & ((\a[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[13]~input_o\,
	combout => \mux1|Mux17~0_combout\);

-- Location: IOIBUF_X16_Y24_N8
\b[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: LCCOMB_X13_Y6_N0
\mux1|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux17~1_combout\ = (\b[14]~input_o\ & ((\op[1]~input_o\ & ((!\a[14]~input_o\))) # (!\op[1]~input_o\ & ((\op[0]~input_o\) # (\a[14]~input_o\))))) # (!\b[14]~input_o\ & (\a[14]~input_o\ & ((\op[1]~input_o\) # (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[14]~input_o\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[14]~input_o\,
	combout => \mux1|Mux17~1_combout\);

-- Location: LCCOMB_X13_Y6_N18
\mux1|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux17~2_combout\ = (\op[1]~input_o\ & (((\mux1|Mux17~1_combout\)))) # (!\op[1]~input_o\ & ((\op[2]~input_o\ & (\mux1|Mux17~0_combout\)) # (!\op[2]~input_o\ & ((\mux1|Mux17~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux17~0_combout\,
	datab => \op[1]~input_o\,
	datac => \op[2]~input_o\,
	datad => \mux1|Mux17~1_combout\,
	combout => \mux1|Mux17~2_combout\);

-- Location: LCCOMB_X13_Y6_N8
\adder1|p14|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p14|Cout~1_combout\ = (\adder1|p14|Cout~0_combout\ & ((\a[12]~input_o\ & ((\b[12]~input_o\) # (\adder1|p12|Cout~0_combout\))) # (!\a[12]~input_o\ & (\b[12]~input_o\ & \adder1|p12|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[12]~input_o\,
	datab => \b[12]~input_o\,
	datac => \adder1|p14|Cout~0_combout\,
	datad => \adder1|p12|Cout~0_combout\,
	combout => \adder1|p14|Cout~1_combout\);

-- Location: LCCOMB_X13_Y6_N20
\mux1|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux17~3_combout\ = \mux1|Mux17~2_combout\ $ (((\op[1]~input_o\ & ((\adder1|p14|Cout~1_combout\) # (\adder1|p14|Cout~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux17~2_combout\,
	datab => \adder1|p14|Cout~1_combout\,
	datac => \op[1]~input_o\,
	datad => \adder1|p14|Cout~2_combout\,
	combout => \mux1|Mux17~3_combout\);

-- Location: IOIBUF_X16_Y24_N22
\a[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: LCCOMB_X13_Y6_N16
\mux1|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux16~1_combout\ = (\op[0]~input_o\ & (\a[16]~input_o\)) # (!\op[0]~input_o\ & ((\a[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[16]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[14]~input_o\,
	combout => \mux1|Mux16~1_combout\);

-- Location: IOIBUF_X21_Y24_N1
\b[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: LCCOMB_X13_Y6_N14
\mux1|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux16~0_combout\ = (\a[15]~input_o\ & ((\op[1]~input_o\ & ((!\b[15]~input_o\))) # (!\op[1]~input_o\ & ((\op[0]~input_o\) # (\b[15]~input_o\))))) # (!\a[15]~input_o\ & (\b[15]~input_o\ & ((\op[1]~input_o\) # (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \b[15]~input_o\,
	combout => \mux1|Mux16~0_combout\);

-- Location: LCCOMB_X13_Y6_N10
\mux1|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux16~2_combout\ = (\op[2]~input_o\ & (\mux1|Mux16~1_combout\ $ (\mux1|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \mux1|Mux16~1_combout\,
	datac => \mux1|Mux16~0_combout\,
	combout => \mux1|Mux16~2_combout\);

-- Location: LCCOMB_X13_Y6_N2
\adder1|p15|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p15|Cout~0_combout\ = (\b[14]~input_o\ & ((\adder1|p14|Cout~2_combout\) # ((\adder1|p14|Cout~1_combout\) # (\a[14]~input_o\)))) # (!\b[14]~input_o\ & (\a[14]~input_o\ & ((\adder1|p14|Cout~2_combout\) # (\adder1|p14|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[14]~input_o\,
	datab => \adder1|p14|Cout~2_combout\,
	datac => \adder1|p14|Cout~1_combout\,
	datad => \a[14]~input_o\,
	combout => \adder1|p15|Cout~0_combout\);

-- Location: LCCOMB_X13_Y6_N4
\mux1|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux16~3_combout\ = \mux1|Mux16~0_combout\ $ (((\op[1]~input_o\ & ((\adder1|p15|Cout~0_combout\))) # (!\op[1]~input_o\ & (\mux1|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux16~2_combout\,
	datab => \mux1|Mux16~0_combout\,
	datac => \op[1]~input_o\,
	datad => \adder1|p15|Cout~0_combout\,
	combout => \mux1|Mux16~3_combout\);

-- Location: IOIBUF_X9_Y24_N22
\b[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(16),
	o => \b[16]~input_o\);

-- Location: LCCOMB_X9_Y6_N2
\adder1|p17|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p17|sum~0_combout\ = \b[16]~input_o\ $ (\a[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[16]~input_o\,
	datad => \a[16]~input_o\,
	combout => \adder1|p17|sum~0_combout\);

-- Location: LCCOMB_X13_Y6_N28
\adder1|p16|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p16|Cout~0_combout\ = (\adder1|p15|Cout~0_combout\ & ((\a[15]~input_o\) # (\b[15]~input_o\))) # (!\adder1|p15|Cout~0_combout\ & (\a[15]~input_o\ & \b[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder1|p15|Cout~0_combout\,
	datac => \a[15]~input_o\,
	datad => \b[15]~input_o\,
	combout => \adder1|p16|Cout~0_combout\);

-- Location: LCCOMB_X9_Y6_N22
\mux1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux15~0_combout\ = (\b[16]~input_o\ & ((\op[0]~input_o\) # ((!\op[2]~input_o\ & \a[16]~input_o\)))) # (!\b[16]~input_o\ & (\op[0]~input_o\ & ((\op[2]~input_o\) # (\a[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[16]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \a[16]~input_o\,
	combout => \mux1|Mux15~0_combout\);

-- Location: IOIBUF_X0_Y8_N1
\a[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: LCCOMB_X9_Y6_N24
\mux1|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux15~1_combout\ = (\mux1|Mux15~0_combout\ & (((\a[17]~input_o\)) # (!\op[2]~input_o\))) # (!\mux1|Mux15~0_combout\ & (\op[2]~input_o\ & ((\a[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux15~0_combout\,
	datab => \op[2]~input_o\,
	datac => \a[17]~input_o\,
	datad => \a[15]~input_o\,
	combout => \mux1|Mux15~1_combout\);

-- Location: LCCOMB_X9_Y6_N4
\mux1|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux15~2_combout\ = (\op[1]~input_o\ & (\adder1|p17|sum~0_combout\ $ ((\adder1|p16|Cout~0_combout\)))) # (!\op[1]~input_o\ & (((\mux1|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \adder1|p17|sum~0_combout\,
	datac => \adder1|p16|Cout~0_combout\,
	datad => \mux1|Mux15~1_combout\,
	combout => \mux1|Mux15~2_combout\);

-- Location: LCCOMB_X9_Y6_N10
\adder1|p17|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p17|Cout~0_combout\ = (\adder1|p16|Cout~0_combout\ & ((\b[16]~input_o\) # (\a[16]~input_o\))) # (!\adder1|p16|Cout~0_combout\ & (\b[16]~input_o\ & \a[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p16|Cout~0_combout\,
	datac => \b[16]~input_o\,
	datad => \a[16]~input_o\,
	combout => \adder1|p17|Cout~0_combout\);

-- Location: IOIBUF_X0_Y8_N15
\a[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\b[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(17),
	o => \b[17]~input_o\);

-- Location: LCCOMB_X9_Y6_N8
\adder1|p18|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p18|Cout~0_combout\ = (\b[17]~input_o\) # (\a[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[17]~input_o\,
	datac => \a[17]~input_o\,
	combout => \adder1|p18|Cout~0_combout\);

-- Location: LCCOMB_X9_Y6_N12
\adder1|p18|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p18|Cout~2_combout\ = (\b[17]~input_o\ & \a[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[17]~input_o\,
	datac => \a[17]~input_o\,
	combout => \adder1|p18|Cout~2_combout\);

-- Location: LCCOMB_X9_Y6_N30
\mux1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux14~0_combout\ = (\op[0]~input_o\ & (((\op[2]~input_o\)))) # (!\op[0]~input_o\ & ((\op[2]~input_o\ & ((\a[16]~input_o\))) # (!\op[2]~input_o\ & (\adder1|p18|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p18|Cout~2_combout\,
	datab => \op[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \a[16]~input_o\,
	combout => \mux1|Mux14~0_combout\);

-- Location: LCCOMB_X9_Y6_N0
\mux1|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux14~1_combout\ = (\mux1|Mux14~0_combout\ & ((\a[18]~input_o\) # ((!\op[0]~input_o\)))) # (!\mux1|Mux14~0_combout\ & (((\adder1|p18|Cout~0_combout\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datab => \adder1|p18|Cout~0_combout\,
	datac => \mux1|Mux14~0_combout\,
	datad => \op[0]~input_o\,
	combout => \mux1|Mux14~1_combout\);

-- Location: LCCOMB_X9_Y6_N28
\adder1|p18|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p18|sum~0_combout\ = \b[17]~input_o\ $ (\a[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[17]~input_o\,
	datac => \a[17]~input_o\,
	combout => \adder1|p18|sum~0_combout\);

-- Location: LCCOMB_X9_Y6_N14
\mux1|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux14~2_combout\ = (\op[1]~input_o\ & (\adder1|p17|Cout~0_combout\ $ (((\adder1|p18|sum~0_combout\))))) # (!\op[1]~input_o\ & (((\mux1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p17|Cout~0_combout\,
	datab => \mux1|Mux14~1_combout\,
	datac => \adder1|p18|sum~0_combout\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux14~2_combout\);

-- Location: LCCOMB_X9_Y6_N18
\adder1|p18|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p18|Cout~1_combout\ = (\adder1|p18|Cout~0_combout\ & ((\adder1|p16|Cout~0_combout\ & ((\b[16]~input_o\) # (\a[16]~input_o\))) # (!\adder1|p16|Cout~0_combout\ & (\b[16]~input_o\ & \a[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p16|Cout~0_combout\,
	datab => \adder1|p18|Cout~0_combout\,
	datac => \b[16]~input_o\,
	datad => \a[16]~input_o\,
	combout => \adder1|p18|Cout~1_combout\);

-- Location: IOIBUF_X0_Y7_N22
\a[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: LCCOMB_X9_Y4_N0
\mux1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux13~0_combout\ = (\op[0]~input_o\ & (\a[19]~input_o\)) # (!\op[0]~input_o\ & ((\a[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[19]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[17]~input_o\,
	combout => \mux1|Mux13~0_combout\);

-- Location: IOIBUF_X9_Y24_N15
\b[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(18),
	o => \b[18]~input_o\);

-- Location: LCCOMB_X9_Y6_N16
\mux1|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux13~1_combout\ = (\op[1]~input_o\ & (\b[18]~input_o\ $ ((\a[18]~input_o\)))) # (!\op[1]~input_o\ & ((\b[18]~input_o\ & ((\a[18]~input_o\) # (\op[0]~input_o\))) # (!\b[18]~input_o\ & (\a[18]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \b[18]~input_o\,
	datac => \a[18]~input_o\,
	datad => \op[0]~input_o\,
	combout => \mux1|Mux13~1_combout\);

-- Location: LCCOMB_X9_Y6_N26
\mux1|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux13~2_combout\ = (\op[1]~input_o\ & (((\mux1|Mux13~1_combout\)))) # (!\op[1]~input_o\ & ((\op[2]~input_o\ & (\mux1|Mux13~0_combout\)) # (!\op[2]~input_o\ & ((\mux1|Mux13~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \mux1|Mux13~0_combout\,
	datac => \op[2]~input_o\,
	datad => \mux1|Mux13~1_combout\,
	combout => \mux1|Mux13~2_combout\);

-- Location: LCCOMB_X9_Y6_N20
\mux1|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux13~3_combout\ = \mux1|Mux13~2_combout\ $ (((\op[1]~input_o\ & ((\adder1|p18|Cout~2_combout\) # (\adder1|p18|Cout~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p18|Cout~2_combout\,
	datab => \adder1|p18|Cout~1_combout\,
	datac => \mux1|Mux13~2_combout\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux13~3_combout\);

-- Location: LCCOMB_X9_Y6_N6
\adder1|p19|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p19|Cout~0_combout\ = (\a[18]~input_o\ & ((\adder1|p18|Cout~1_combout\) # ((\b[18]~input_o\) # (\adder1|p18|Cout~2_combout\)))) # (!\a[18]~input_o\ & (\b[18]~input_o\ & ((\adder1|p18|Cout~1_combout\) # (\adder1|p18|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datab => \adder1|p18|Cout~1_combout\,
	datac => \b[18]~input_o\,
	datad => \adder1|p18|Cout~2_combout\,
	combout => \adder1|p19|Cout~0_combout\);

-- Location: IOIBUF_X0_Y4_N15
\a[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: LCCOMB_X10_Y4_N22
\mux1|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux12~1_combout\ = (\op[0]~input_o\ & (\a[20]~input_o\)) # (!\op[0]~input_o\ & ((\a[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \a[20]~input_o\,
	datad => \a[18]~input_o\,
	combout => \mux1|Mux12~1_combout\);

-- Location: IOIBUF_X9_Y0_N22
\b[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(19),
	o => \b[19]~input_o\);

-- Location: LCCOMB_X10_Y4_N4
\mux1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux12~0_combout\ = (\b[19]~input_o\ & ((\op[1]~input_o\ & (!\a[19]~input_o\)) # (!\op[1]~input_o\ & ((\a[19]~input_o\) # (\op[0]~input_o\))))) # (!\b[19]~input_o\ & (\a[19]~input_o\ & ((\op[1]~input_o\) # (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[19]~input_o\,
	datab => \op[1]~input_o\,
	datac => \a[19]~input_o\,
	datad => \op[0]~input_o\,
	combout => \mux1|Mux12~0_combout\);

-- Location: LCCOMB_X10_Y4_N16
\mux1|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux12~2_combout\ = (\op[2]~input_o\ & (\mux1|Mux12~1_combout\ $ (\mux1|Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux12~1_combout\,
	datab => \mux1|Mux12~0_combout\,
	datac => \op[2]~input_o\,
	combout => \mux1|Mux12~2_combout\);

-- Location: LCCOMB_X10_Y4_N2
\mux1|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux12~3_combout\ = \mux1|Mux12~0_combout\ $ (((\op[1]~input_o\ & (\adder1|p19|Cout~0_combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux12~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p19|Cout~0_combout\,
	datab => \mux1|Mux12~2_combout\,
	datac => \mux1|Mux12~0_combout\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux12~3_combout\);

-- Location: IOIBUF_X11_Y0_N15
\b[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(20),
	o => \b[20]~input_o\);

-- Location: LCCOMB_X10_Y4_N0
\adder1|p21|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p21|sum~0_combout\ = \a[20]~input_o\ $ (\b[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[20]~input_o\,
	datad => \b[20]~input_o\,
	combout => \adder1|p21|sum~0_combout\);

-- Location: LCCOMB_X10_Y4_N28
\adder1|p20|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p20|Cout~0_combout\ = (\a[19]~input_o\ & ((\b[19]~input_o\) # (\adder1|p19|Cout~0_combout\))) # (!\a[19]~input_o\ & (\b[19]~input_o\ & \adder1|p19|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[19]~input_o\,
	datac => \b[19]~input_o\,
	datad => \adder1|p19|Cout~0_combout\,
	combout => \adder1|p20|Cout~0_combout\);

-- Location: IOIBUF_X16_Y0_N15
\a[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: LCCOMB_X10_Y4_N20
\mux1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux11~0_combout\ = (\op[0]~input_o\ & ((\a[20]~input_o\) # ((\op[2]~input_o\) # (\b[20]~input_o\)))) # (!\op[0]~input_o\ & (\a[20]~input_o\ & (!\op[2]~input_o\ & \b[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \a[20]~input_o\,
	datac => \op[2]~input_o\,
	datad => \b[20]~input_o\,
	combout => \mux1|Mux11~0_combout\);

-- Location: LCCOMB_X10_Y4_N30
\mux1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux11~1_combout\ = (\op[2]~input_o\ & ((\mux1|Mux11~0_combout\ & (\a[21]~input_o\)) # (!\mux1|Mux11~0_combout\ & ((\a[19]~input_o\))))) # (!\op[2]~input_o\ & (((\mux1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datab => \a[19]~input_o\,
	datac => \op[2]~input_o\,
	datad => \mux1|Mux11~0_combout\,
	combout => \mux1|Mux11~1_combout\);

-- Location: LCCOMB_X10_Y4_N26
\mux1|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux11~2_combout\ = (\op[1]~input_o\ & (\adder1|p21|sum~0_combout\ $ ((\adder1|p20|Cout~0_combout\)))) # (!\op[1]~input_o\ & (((\mux1|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p21|sum~0_combout\,
	datab => \adder1|p20|Cout~0_combout\,
	datac => \mux1|Mux11~1_combout\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux11~2_combout\);

-- Location: IOIBUF_X18_Y24_N15
\b[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(21),
	o => \b[21]~input_o\);

-- Location: LCCOMB_X11_Y4_N10
\mux1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux10~0_combout\ = (\a[21]~input_o\ & ((\b[21]~input_o\ & ((!\op[1]~input_o\))) # (!\b[21]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))) # (!\a[21]~input_o\ & (\b[21]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datab => \op[0]~input_o\,
	datac => \b[21]~input_o\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux10~0_combout\);

-- Location: IOIBUF_X11_Y24_N8
\a[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: LCCOMB_X11_Y4_N20
\mux1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux10~1_combout\ = (\op[0]~input_o\ & ((\a[22]~input_o\))) # (!\op[0]~input_o\ & (\a[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[20]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[22]~input_o\,
	combout => \mux1|Mux10~1_combout\);

-- Location: LCCOMB_X11_Y4_N14
\mux1|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux10~2_combout\ = (\op[2]~input_o\ & (\mux1|Mux10~0_combout\ $ (\mux1|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux10~0_combout\,
	datab => \mux1|Mux10~1_combout\,
	datad => \op[2]~input_o\,
	combout => \mux1|Mux10~2_combout\);

-- Location: LCCOMB_X11_Y4_N12
\adder1|p21|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p21|Cout~0_combout\ = (\a[20]~input_o\ & ((\adder1|p20|Cout~0_combout\) # (\b[20]~input_o\))) # (!\a[20]~input_o\ & (\adder1|p20|Cout~0_combout\ & \b[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[20]~input_o\,
	datab => \adder1|p20|Cout~0_combout\,
	datad => \b[20]~input_o\,
	combout => \adder1|p21|Cout~0_combout\);

-- Location: LCCOMB_X11_Y4_N8
\mux1|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux10~3_combout\ = \mux1|Mux10~0_combout\ $ (((\op[1]~input_o\ & ((\adder1|p21|Cout~0_combout\))) # (!\op[1]~input_o\ & (\mux1|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux10~0_combout\,
	datab => \op[1]~input_o\,
	datac => \mux1|Mux10~2_combout\,
	datad => \adder1|p21|Cout~0_combout\,
	combout => \mux1|Mux10~3_combout\);

-- Location: LCCOMB_X11_Y4_N22
\adder1|p22|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p22|Cout~0_combout\ = (\adder1|p21|Cout~0_combout\ & ((\b[21]~input_o\) # (\a[21]~input_o\))) # (!\adder1|p21|Cout~0_combout\ & (\b[21]~input_o\ & \a[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p21|Cout~0_combout\,
	datac => \b[21]~input_o\,
	datad => \a[21]~input_o\,
	combout => \adder1|p22|Cout~0_combout\);

-- Location: IOIBUF_X11_Y24_N15
\b[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(22),
	o => \b[22]~input_o\);

-- Location: LCCOMB_X11_Y4_N24
\adder1|p23|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p23|sum~0_combout\ = \a[22]~input_o\ $ (\b[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[22]~input_o\,
	datad => \b[22]~input_o\,
	combout => \adder1|p23|sum~0_combout\);

-- Location: LCCOMB_X11_Y4_N18
\mux1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux9~0_combout\ = (\b[22]~input_o\ & ((\op[0]~input_o\) # ((\a[22]~input_o\ & !\op[2]~input_o\)))) # (!\b[22]~input_o\ & (\op[0]~input_o\ & ((\a[22]~input_o\) # (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[22]~input_o\,
	datab => \a[22]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \mux1|Mux9~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\a[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: LCCOMB_X11_Y4_N4
\mux1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux9~1_combout\ = (\mux1|Mux9~0_combout\ & (((\a[23]~input_o\) # (!\op[2]~input_o\)))) # (!\mux1|Mux9~0_combout\ & (\a[21]~input_o\ & ((\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datab => \mux1|Mux9~0_combout\,
	datac => \a[23]~input_o\,
	datad => \op[2]~input_o\,
	combout => \mux1|Mux9~1_combout\);

-- Location: LCCOMB_X11_Y4_N26
\mux1|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux9~2_combout\ = (\op[1]~input_o\ & (\adder1|p22|Cout~0_combout\ $ ((\adder1|p23|sum~0_combout\)))) # (!\op[1]~input_o\ & (((\mux1|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p22|Cout~0_combout\,
	datab => \adder1|p23|sum~0_combout\,
	datac => \mux1|Mux9~1_combout\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux9~2_combout\);

-- Location: LCCOMB_X11_Y4_N2
\adder1|p23|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p23|Cout~1_combout\ = (\a[22]~input_o\) # (\b[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[22]~input_o\,
	datad => \b[22]~input_o\,
	combout => \adder1|p23|Cout~1_combout\);

-- Location: LCCOMB_X11_Y4_N6
\adder1|p23|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p23|Cout~2_combout\ = (\adder1|p23|Cout~1_combout\ & ((\adder1|p21|Cout~0_combout\ & ((\b[21]~input_o\) # (\a[21]~input_o\))) # (!\adder1|p21|Cout~0_combout\ & (\b[21]~input_o\ & \a[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p21|Cout~0_combout\,
	datab => \adder1|p23|Cout~1_combout\,
	datac => \b[21]~input_o\,
	datad => \a[21]~input_o\,
	combout => \adder1|p23|Cout~2_combout\);

-- Location: LCCOMB_X11_Y4_N0
\adder1|p23|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p23|Cout~0_combout\ = (\a[22]~input_o\ & \b[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[22]~input_o\,
	datad => \b[22]~input_o\,
	combout => \adder1|p23|Cout~0_combout\);

-- Location: IOIBUF_X7_Y0_N22
\b[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(23),
	o => \b[23]~input_o\);

-- Location: LCCOMB_X9_Y4_N24
\mux1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux8~1_combout\ = (\b[23]~input_o\ & ((\a[23]~input_o\ & ((!\op[1]~input_o\))) # (!\a[23]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))) # (!\b[23]~input_o\ & (\a[23]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[23]~input_o\,
	datab => \a[23]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux8~1_combout\);

-- Location: IOIBUF_X34_Y4_N15
\a[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: LCCOMB_X11_Y4_N28
\mux1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux8~0_combout\ = (\op[0]~input_o\ & ((\a[24]~input_o\))) # (!\op[0]~input_o\ & (\a[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[0]~input_o\,
	datac => \a[22]~input_o\,
	datad => \a[24]~input_o\,
	combout => \mux1|Mux8~0_combout\);

-- Location: LCCOMB_X9_Y4_N10
\mux1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux8~2_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & (\mux1|Mux8~1_combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux8~0_combout\))))) # (!\op[2]~input_o\ & (\mux1|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux8~1_combout\,
	datab => \mux1|Mux8~0_combout\,
	datac => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux8~2_combout\);

-- Location: LCCOMB_X11_Y4_N30
\mux1|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux8~3_combout\ = \mux1|Mux8~2_combout\ $ (((\op[1]~input_o\ & ((\adder1|p23|Cout~2_combout\) # (\adder1|p23|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p23|Cout~2_combout\,
	datab => \adder1|p23|Cout~0_combout\,
	datac => \mux1|Mux8~2_combout\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux8~3_combout\);

-- Location: IOIBUF_X25_Y0_N1
\b[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(24),
	o => \b[24]~input_o\);

-- Location: LCCOMB_X17_Y4_N4
\mux1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux7~0_combout\ = (\a[24]~input_o\ & ((\op[0]~input_o\) # ((!\op[2]~input_o\ & \b[24]~input_o\)))) # (!\a[24]~input_o\ & (\op[0]~input_o\ & ((\op[2]~input_o\) # (\b[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[24]~input_o\,
	datab => \op[2]~input_o\,
	datac => \op[0]~input_o\,
	datad => \b[24]~input_o\,
	combout => \mux1|Mux7~0_combout\);

-- Location: IOIBUF_X30_Y0_N8
\a[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

-- Location: LCCOMB_X17_Y4_N6
\mux1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux7~1_combout\ = (\mux1|Mux7~0_combout\ & (((\a[25]~input_o\) # (!\op[2]~input_o\)))) # (!\mux1|Mux7~0_combout\ & (\a[23]~input_o\ & (\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[23]~input_o\,
	datab => \mux1|Mux7~0_combout\,
	datac => \op[2]~input_o\,
	datad => \a[25]~input_o\,
	combout => \mux1|Mux7~1_combout\);

-- Location: LCCOMB_X11_Y4_N16
\adder1|p24|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p24|Cout~0_combout\ = (\b[23]~input_o\ & ((\adder1|p23|Cout~0_combout\) # ((\a[23]~input_o\) # (\adder1|p23|Cout~2_combout\)))) # (!\b[23]~input_o\ & (\a[23]~input_o\ & ((\adder1|p23|Cout~0_combout\) # (\adder1|p23|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[23]~input_o\,
	datab => \adder1|p23|Cout~0_combout\,
	datac => \a[23]~input_o\,
	datad => \adder1|p23|Cout~2_combout\,
	combout => \adder1|p24|Cout~0_combout\);

-- Location: LCCOMB_X17_Y4_N16
\adder1|p25|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p25|sum~0_combout\ = \b[24]~input_o\ $ (\a[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[24]~input_o\,
	datac => \a[24]~input_o\,
	combout => \adder1|p25|sum~0_combout\);

-- Location: LCCOMB_X17_Y4_N2
\mux1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux7~2_combout\ = (\op[1]~input_o\ & ((\adder1|p24|Cout~0_combout\ $ (\adder1|p25|sum~0_combout\)))) # (!\op[1]~input_o\ & (\mux1|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux7~1_combout\,
	datab => \op[1]~input_o\,
	datac => \adder1|p24|Cout~0_combout\,
	datad => \adder1|p25|sum~0_combout\,
	combout => \mux1|Mux7~2_combout\);

-- Location: IOIBUF_X18_Y24_N22
\b[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(25),
	o => \b[25]~input_o\);

-- Location: LCCOMB_X17_Y4_N22
\mux1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux6~0_combout\ = (\b[25]~input_o\ & ((\op[1]~input_o\ & ((!\a[25]~input_o\))) # (!\op[1]~input_o\ & ((\op[0]~input_o\) # (\a[25]~input_o\))))) # (!\b[25]~input_o\ & (\a[25]~input_o\ & ((\op[1]~input_o\) # (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[25]~input_o\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[25]~input_o\,
	combout => \mux1|Mux6~0_combout\);

-- Location: IOIBUF_X21_Y0_N1
\a[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

-- Location: LCCOMB_X17_Y4_N0
\mux1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux6~1_combout\ = (\op[0]~input_o\ & ((\a[26]~input_o\))) # (!\op[0]~input_o\ & (\a[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \a[24]~input_o\,
	datad => \a[26]~input_o\,
	combout => \mux1|Mux6~1_combout\);

-- Location: LCCOMB_X17_Y4_N10
\mux1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux6~2_combout\ = (\op[2]~input_o\ & (\mux1|Mux6~0_combout\ $ (\mux1|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux6~0_combout\,
	datab => \mux1|Mux6~1_combout\,
	datac => \op[2]~input_o\,
	combout => \mux1|Mux6~2_combout\);

-- Location: LCCOMB_X17_Y4_N24
\adder1|p25|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p25|Cout~0_combout\ = (\a[24]~input_o\ & ((\b[24]~input_o\) # (\adder1|p24|Cout~0_combout\))) # (!\a[24]~input_o\ & (\b[24]~input_o\ & \adder1|p24|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[24]~input_o\,
	datab => \b[24]~input_o\,
	datac => \adder1|p24|Cout~0_combout\,
	combout => \adder1|p25|Cout~0_combout\);

-- Location: LCCOMB_X17_Y4_N20
\mux1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux6~3_combout\ = \mux1|Mux6~0_combout\ $ (((\op[1]~input_o\ & ((\adder1|p25|Cout~0_combout\))) # (!\op[1]~input_o\ & (\mux1|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux6~2_combout\,
	datab => \op[1]~input_o\,
	datac => \mux1|Mux6~0_combout\,
	datad => \adder1|p25|Cout~0_combout\,
	combout => \mux1|Mux6~3_combout\);

-- Location: IOIBUF_X18_Y0_N15
\b[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(26),
	o => \b[26]~input_o\);

-- Location: LCCOMB_X17_Y4_N26
\adder1|p27|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p27|sum~0_combout\ = \b[26]~input_o\ $ (\a[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[26]~input_o\,
	datad => \a[26]~input_o\,
	combout => \adder1|p27|sum~0_combout\);

-- Location: LCCOMB_X17_Y4_N14
\mux1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux5~0_combout\ = (\op[0]~input_o\ & ((\b[26]~input_o\) # ((\op[2]~input_o\) # (\a[26]~input_o\)))) # (!\op[0]~input_o\ & (\b[26]~input_o\ & (!\op[2]~input_o\ & \a[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \b[26]~input_o\,
	datac => \op[2]~input_o\,
	datad => \a[26]~input_o\,
	combout => \mux1|Mux5~0_combout\);

-- Location: IOIBUF_X21_Y0_N8
\a[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

-- Location: LCCOMB_X17_Y4_N8
\mux1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux5~1_combout\ = (\op[2]~input_o\ & ((\mux1|Mux5~0_combout\ & ((\a[27]~input_o\))) # (!\mux1|Mux5~0_combout\ & (\a[25]~input_o\)))) # (!\op[2]~input_o\ & (((\mux1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[25]~input_o\,
	datab => \op[2]~input_o\,
	datac => \mux1|Mux5~0_combout\,
	datad => \a[27]~input_o\,
	combout => \mux1|Mux5~1_combout\);

-- Location: LCCOMB_X17_Y4_N18
\adder1|p26|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p26|Cout~0_combout\ = (\adder1|p25|Cout~0_combout\ & ((\b[25]~input_o\) # (\a[25]~input_o\))) # (!\adder1|p25|Cout~0_combout\ & (\b[25]~input_o\ & \a[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder1|p25|Cout~0_combout\,
	datac => \b[25]~input_o\,
	datad => \a[25]~input_o\,
	combout => \adder1|p26|Cout~0_combout\);

-- Location: LCCOMB_X17_Y4_N12
\mux1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux5~2_combout\ = (\op[1]~input_o\ & (\adder1|p27|sum~0_combout\ $ (((\adder1|p26|Cout~0_combout\))))) # (!\op[1]~input_o\ & (((\mux1|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p27|sum~0_combout\,
	datab => \op[1]~input_o\,
	datac => \mux1|Mux5~1_combout\,
	datad => \adder1|p26|Cout~0_combout\,
	combout => \mux1|Mux5~2_combout\);

-- Location: IOIBUF_X28_Y0_N1
\b[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(27),
	o => \b[27]~input_o\);

-- Location: LCCOMB_X17_Y3_N10
\adder1|p28|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p28|sum~0_combout\ = \b[27]~input_o\ $ (\a[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[27]~input_o\,
	datad => \a[27]~input_o\,
	combout => \adder1|p28|sum~0_combout\);

-- Location: LCCOMB_X17_Y3_N0
\adder1|p27|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p27|Cout~0_combout\ = (\b[26]~input_o\ & ((\adder1|p26|Cout~0_combout\) # (\a[26]~input_o\))) # (!\b[26]~input_o\ & (\adder1|p26|Cout~0_combout\ & \a[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[26]~input_o\,
	datac => \adder1|p26|Cout~0_combout\,
	datad => \a[26]~input_o\,
	combout => \adder1|p27|Cout~0_combout\);

-- Location: IOIBUF_X21_Y0_N22
\a[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

-- Location: LCCOMB_X17_Y3_N14
\adder1|p28|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p28|Cout~1_combout\ = (\b[27]~input_o\) # (\a[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[27]~input_o\,
	datad => \a[27]~input_o\,
	combout => \adder1|p28|Cout~1_combout\);

-- Location: LCCOMB_X17_Y3_N20
\adder1|p28|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p28|Cout~0_combout\ = (\b[27]~input_o\ & \a[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[27]~input_o\,
	datad => \a[27]~input_o\,
	combout => \adder1|p28|Cout~0_combout\);

-- Location: LCCOMB_X17_Y3_N6
\mux1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux4~0_combout\ = (\op[2]~input_o\ & (((\op[0]~input_o\) # (\a[26]~input_o\)))) # (!\op[2]~input_o\ & (\adder1|p28|Cout~0_combout\ & (!\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \adder1|p28|Cout~0_combout\,
	datac => \op[0]~input_o\,
	datad => \a[26]~input_o\,
	combout => \mux1|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y3_N24
\mux1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux4~1_combout\ = (\op[0]~input_o\ & ((\mux1|Mux4~0_combout\ & (\a[28]~input_o\)) # (!\mux1|Mux4~0_combout\ & ((\adder1|p28|Cout~1_combout\))))) # (!\op[0]~input_o\ & (((\mux1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datab => \adder1|p28|Cout~1_combout\,
	datac => \op[0]~input_o\,
	datad => \mux1|Mux4~0_combout\,
	combout => \mux1|Mux4~1_combout\);

-- Location: LCCOMB_X17_Y3_N28
\mux1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux4~2_combout\ = (\op[1]~input_o\ & (\adder1|p28|sum~0_combout\ $ ((\adder1|p27|Cout~0_combout\)))) # (!\op[1]~input_o\ & (((\mux1|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p28|sum~0_combout\,
	datab => \adder1|p27|Cout~0_combout\,
	datac => \op[1]~input_o\,
	datad => \mux1|Mux4~1_combout\,
	combout => \mux1|Mux4~2_combout\);

-- Location: LCCOMB_X17_Y3_N26
\adder1|p28|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p28|Cout~2_combout\ = (\b[27]~input_o\ & ((\adder1|p27|Cout~0_combout\) # (\a[27]~input_o\))) # (!\b[27]~input_o\ & (\adder1|p27|Cout~0_combout\ & \a[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[27]~input_o\,
	datab => \adder1|p27|Cout~0_combout\,
	datad => \a[27]~input_o\,
	combout => \adder1|p28|Cout~2_combout\);

-- Location: IOIBUF_X28_Y0_N8
\b[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(28),
	o => \b[28]~input_o\);

-- Location: LCCOMB_X17_Y3_N4
\adder1|p29|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p29|sum~0_combout\ = \a[28]~input_o\ $ (\b[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datac => \b[28]~input_o\,
	combout => \adder1|p29|sum~0_combout\);

-- Location: LCCOMB_X17_Y3_N30
\mux1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux3~0_combout\ = (\a[28]~input_o\ & ((\op[0]~input_o\) # ((\b[28]~input_o\ & !\op[2]~input_o\)))) # (!\a[28]~input_o\ & (\op[0]~input_o\ & ((\b[28]~input_o\) # (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datab => \op[0]~input_o\,
	datac => \b[28]~input_o\,
	datad => \op[2]~input_o\,
	combout => \mux1|Mux3~0_combout\);

-- Location: IOIBUF_X34_Y3_N15
\a[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

-- Location: LCCOMB_X17_Y3_N8
\mux1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux3~1_combout\ = (\mux1|Mux3~0_combout\ & (((\a[29]~input_o\) # (!\op[2]~input_o\)))) # (!\mux1|Mux3~0_combout\ & (\a[27]~input_o\ & ((\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux3~0_combout\,
	datab => \a[27]~input_o\,
	datac => \a[29]~input_o\,
	datad => \op[2]~input_o\,
	combout => \mux1|Mux3~1_combout\);

-- Location: LCCOMB_X17_Y3_N22
\mux1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux3~2_combout\ = (\op[1]~input_o\ & (\adder1|p28|Cout~2_combout\ $ ((\adder1|p29|sum~0_combout\)))) # (!\op[1]~input_o\ & (((\mux1|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p28|Cout~2_combout\,
	datab => \adder1|p29|sum~0_combout\,
	datac => \mux1|Mux3~1_combout\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux3~2_combout\);

-- Location: LCCOMB_X17_Y3_N16
\adder1|p29|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p29|Cout~0_combout\ = (\a[28]~input_o\ & \b[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datac => \b[28]~input_o\,
	combout => \adder1|p29|Cout~0_combout\);

-- Location: LCCOMB_X17_Y3_N2
\adder1|p29|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p29|Cout~1_combout\ = (\a[28]~input_o\) # (\b[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datac => \b[28]~input_o\,
	combout => \adder1|p29|Cout~1_combout\);

-- Location: LCCOMB_X17_Y3_N18
\adder1|p29|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p29|Cout~2_combout\ = (\adder1|p29|Cout~1_combout\ & ((\adder1|p28|Cout~0_combout\) # ((\adder1|p27|Cout~0_combout\ & \adder1|p28|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p28|Cout~0_combout\,
	datab => \adder1|p27|Cout~0_combout\,
	datac => \adder1|p28|Cout~1_combout\,
	datad => \adder1|p29|Cout~1_combout\,
	combout => \adder1|p29|Cout~2_combout\);

-- Location: IOIBUF_X30_Y0_N22
\a[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

-- Location: LCCOMB_X18_Y3_N28
\mux1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux2~0_combout\ = (\op[0]~input_o\ & (\a[30]~input_o\)) # (!\op[0]~input_o\ & ((\a[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \a[30]~input_o\,
	datad => \a[28]~input_o\,
	combout => \mux1|Mux2~0_combout\);

-- Location: IOIBUF_X23_Y0_N8
\b[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(29),
	o => \b[29]~input_o\);

-- Location: LCCOMB_X18_Y3_N30
\mux1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux2~1_combout\ = (\b[29]~input_o\ & ((\a[29]~input_o\ & ((!\op[1]~input_o\))) # (!\a[29]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))) # (!\b[29]~input_o\ & (\a[29]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \b[29]~input_o\,
	datac => \a[29]~input_o\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux2~1_combout\);

-- Location: LCCOMB_X18_Y3_N0
\mux1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux2~2_combout\ = (\op[1]~input_o\ & (((\mux1|Mux2~1_combout\)))) # (!\op[1]~input_o\ & ((\op[2]~input_o\ & (\mux1|Mux2~0_combout\)) # (!\op[2]~input_o\ & ((\mux1|Mux2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \mux1|Mux2~0_combout\,
	datac => \mux1|Mux2~1_combout\,
	datad => \op[2]~input_o\,
	combout => \mux1|Mux2~2_combout\);

-- Location: LCCOMB_X18_Y3_N18
\mux1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux2~3_combout\ = \mux1|Mux2~2_combout\ $ (((\op[1]~input_o\ & ((\adder1|p29|Cout~0_combout\) # (\adder1|p29|Cout~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|p29|Cout~0_combout\,
	datab => \adder1|p29|Cout~2_combout\,
	datac => \op[1]~input_o\,
	datad => \mux1|Mux2~2_combout\,
	combout => \mux1|Mux2~3_combout\);

-- Location: IOIBUF_X30_Y0_N1
\b[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(30),
	o => \b[30]~input_o\);

-- Location: LCCOMB_X18_Y3_N24
\adder1|p31|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p31|sum~0_combout\ = \a[30]~input_o\ $ (\b[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[30]~input_o\,
	datad => \b[30]~input_o\,
	combout => \adder1|p31|sum~0_combout\);

-- Location: LCCOMB_X18_Y3_N20
\mux1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux1~0_combout\ = (\op[2]~input_o\ & (\op[0]~input_o\)) # (!\op[2]~input_o\ & ((\op[0]~input_o\ & ((\a[30]~input_o\) # (\b[30]~input_o\))) # (!\op[0]~input_o\ & (\a[30]~input_o\ & \b[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[30]~input_o\,
	datad => \b[30]~input_o\,
	combout => \mux1|Mux1~0_combout\);

-- Location: IOIBUF_X23_Y0_N1
\a[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

-- Location: LCCOMB_X18_Y3_N14
\mux1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux1~1_combout\ = (\op[2]~input_o\ & ((\mux1|Mux1~0_combout\ & ((\a[31]~input_o\))) # (!\mux1|Mux1~0_combout\ & (\a[29]~input_o\)))) # (!\op[2]~input_o\ & (\mux1|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \mux1|Mux1~0_combout\,
	datac => \a[29]~input_o\,
	datad => \a[31]~input_o\,
	combout => \mux1|Mux1~1_combout\);

-- Location: LCCOMB_X17_Y3_N12
\adder1|p30|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p30|Cout~0_combout\ = (\b[29]~input_o\ & ((\adder1|p29|Cout~2_combout\) # ((\a[29]~input_o\) # (\adder1|p29|Cout~0_combout\)))) # (!\b[29]~input_o\ & (\a[29]~input_o\ & ((\adder1|p29|Cout~2_combout\) # (\adder1|p29|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[29]~input_o\,
	datab => \adder1|p29|Cout~2_combout\,
	datac => \a[29]~input_o\,
	datad => \adder1|p29|Cout~0_combout\,
	combout => \adder1|p30|Cout~0_combout\);

-- Location: LCCOMB_X18_Y3_N2
\mux1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux1~2_combout\ = (\op[1]~input_o\ & (\adder1|p31|sum~0_combout\ $ (((\adder1|p30|Cout~0_combout\))))) # (!\op[1]~input_o\ & (((\mux1|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \adder1|p31|sum~0_combout\,
	datac => \mux1|Mux1~1_combout\,
	datad => \adder1|p30|Cout~0_combout\,
	combout => \mux1|Mux1~2_combout\);

-- Location: IOIBUF_X18_Y24_N8
\b[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(31),
	o => \b[31]~input_o\);

-- Location: LCCOMB_X18_Y3_N12
\mux1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux0~0_combout\ = (!\op[2]~input_o\ & ((\b[31]~input_o\ & ((\op[0]~input_o\) # (\a[31]~input_o\))) # (!\b[31]~input_o\ & (\op[0]~input_o\ & \a[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[31]~input_o\,
	datab => \op[2]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[31]~input_o\,
	combout => \mux1|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y3_N22
\mux1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux0~1_combout\ = (\mux1|Mux0~0_combout\) # ((\op[2]~input_o\ & (!\op[0]~input_o\ & \a[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[30]~input_o\,
	datad => \mux1|Mux0~0_combout\,
	combout => \mux1|Mux0~1_combout\);

-- Location: LCCOMB_X18_Y3_N16
\adder1|p32|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p32|sum~0_combout\ = \b[31]~input_o\ $ (\a[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[31]~input_o\,
	datad => \a[31]~input_o\,
	combout => \adder1|p32|sum~0_combout\);

-- Location: LCCOMB_X18_Y3_N8
\adder1|p31|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p31|Cout~0_combout\ = (\b[30]~input_o\ & ((\a[30]~input_o\) # (\adder1|p30|Cout~0_combout\))) # (!\b[30]~input_o\ & (\a[30]~input_o\ & \adder1|p30|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[30]~input_o\,
	datac => \a[30]~input_o\,
	datad => \adder1|p30|Cout~0_combout\,
	combout => \adder1|p31|Cout~0_combout\);

-- Location: LCCOMB_X18_Y3_N26
\mux1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux0~2_combout\ = (\op[1]~input_o\ & ((\adder1|p32|sum~0_combout\ $ (\adder1|p31|Cout~0_combout\)))) # (!\op[1]~input_o\ & (\mux1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux0~1_combout\,
	datab => \adder1|p32|sum~0_combout\,
	datac => \adder1|p31|Cout~0_combout\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux0~2_combout\);

-- Location: LCCOMB_X18_Y3_N10
\adder1|p32|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|p32|Cout~0_combout\ = (\b[31]~input_o\ & ((\adder1|p31|Cout~0_combout\) # (\a[31]~input_o\))) # (!\b[31]~input_o\ & (\adder1|p31|Cout~0_combout\ & \a[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[31]~input_o\,
	datac => \adder1|p31|Cout~0_combout\,
	datad => \a[31]~input_o\,
	combout => \adder1|p32|Cout~0_combout\);

-- Location: LCCOMB_X9_Y2_N10
\zero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \zero~0_combout\ = (\mux1|Mux29~2_combout\) # ((\mux1|Mux28~0_combout\) # ((\mux1|Mux30~0_combout\) # (\mux1|Mux31~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux29~2_combout\,
	datab => \mux1|Mux28~0_combout\,
	datac => \mux1|Mux30~0_combout\,
	datad => \mux1|Mux31~2_combout\,
	combout => \zero~0_combout\);

-- Location: LCCOMB_X9_Y2_N12
\zero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \zero~1_combout\ = (\mux1|Mux27~2_combout\) # ((\mux1|Mux25~3_combout\) # ((\mux1|Mux26~2_combout\) # (\zero~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux27~2_combout\,
	datab => \mux1|Mux25~3_combout\,
	datac => \mux1|Mux26~2_combout\,
	datad => \zero~0_combout\,
	combout => \zero~1_combout\);

-- Location: LCCOMB_X9_Y2_N14
\zero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \zero~2_combout\ = (\zero~1_combout\) # ((\mux1|Mux23~2_combout\) # ((\mux1|Mux24~3_combout\) # (\mux1|Mux22~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~1_combout\,
	datab => \mux1|Mux23~2_combout\,
	datac => \mux1|Mux24~3_combout\,
	datad => \mux1|Mux22~2_combout\,
	combout => \zero~2_combout\);

-- Location: LCCOMB_X13_Y6_N30
\zero~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \zero~3_combout\ = (\zero~2_combout\) # ((\mux1|Mux21~2_combout\) # ((\mux1|Mux19~2_combout\) # (\mux1|Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~2_combout\,
	datab => \mux1|Mux21~2_combout\,
	datac => \mux1|Mux19~2_combout\,
	datad => \mux1|Mux20~3_combout\,
	combout => \zero~3_combout\);

-- Location: LCCOMB_X13_Y6_N22
\zero~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \zero~4_combout\ = (\mux1|Mux18~2_combout\) # ((\mux1|Mux17~3_combout\) # ((\zero~3_combout\) # (\mux1|Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux18~2_combout\,
	datab => \mux1|Mux17~3_combout\,
	datac => \zero~3_combout\,
	datad => \mux1|Mux16~3_combout\,
	combout => \zero~4_combout\);

-- Location: LCCOMB_X9_Y4_N12
\zero~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \zero~5_combout\ = (\mux1|Mux15~2_combout\) # ((\mux1|Mux13~3_combout\) # ((\mux1|Mux14~2_combout\) # (\zero~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux15~2_combout\,
	datab => \mux1|Mux13~3_combout\,
	datac => \mux1|Mux14~2_combout\,
	datad => \zero~4_combout\,
	combout => \zero~5_combout\);

-- Location: LCCOMB_X9_Y4_N14
\zero~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \zero~6_combout\ = (\zero~5_combout\) # ((\mux1|Mux11~2_combout\) # ((\mux1|Mux12~3_combout\) # (\mux1|Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~5_combout\,
	datab => \mux1|Mux11~2_combout\,
	datac => \mux1|Mux12~3_combout\,
	datad => \mux1|Mux10~3_combout\,
	combout => \zero~6_combout\);

-- Location: LCCOMB_X17_Y4_N28
\zero~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \zero~7_combout\ = (\zero~6_combout\) # ((\mux1|Mux9~2_combout\) # ((\mux1|Mux8~3_combout\) # (\mux1|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~6_combout\,
	datab => \mux1|Mux9~2_combout\,
	datac => \mux1|Mux8~3_combout\,
	datad => \mux1|Mux7~2_combout\,
	combout => \zero~7_combout\);

-- Location: LCCOMB_X17_Y4_N30
\zero~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \zero~8_combout\ = (\mux1|Mux5~2_combout\) # ((\zero~7_combout\) # ((\mux1|Mux4~2_combout\) # (\mux1|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux5~2_combout\,
	datab => \zero~7_combout\,
	datac => \mux1|Mux4~2_combout\,
	datad => \mux1|Mux6~3_combout\,
	combout => \zero~8_combout\);

-- Location: LCCOMB_X18_Y3_N4
\zero~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \zero~9_combout\ = (\mux1|Mux3~2_combout\) # ((\mux1|Mux2~3_combout\) # ((\zero~8_combout\) # (\mux1|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux3~2_combout\,
	datab => \mux1|Mux2~3_combout\,
	datac => \zero~8_combout\,
	datad => \mux1|Mux1~2_combout\,
	combout => \zero~9_combout\);

-- Location: LCCOMB_X18_Y3_N6
\zero~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \zero~10_combout\ = (\mux1|Mux0~2_combout\) # (\zero~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux0~2_combout\,
	datac => \zero~9_combout\,
	combout => \zero~10_combout\);

-- Location: IOIBUF_X1_Y0_N8
\result[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(0),
	o => \result[0]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\result[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(1),
	o => \result[1]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\result[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(2),
	o => \result[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\result[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(3),
	o => \result[3]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\result[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(4),
	o => \result[4]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\result[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(5),
	o => \result[5]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\result[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(6),
	o => \result[6]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\result[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(7),
	o => \result[7]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\result[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(8),
	o => \result[8]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\result[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(9),
	o => \result[9]~input_o\);

-- Location: IOIBUF_X34_Y5_N22
\result[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(10),
	o => \result[10]~input_o\);

-- Location: IOIBUF_X34_Y5_N15
\result[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(11),
	o => \result[11]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\result[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(12),
	o => \result[12]~input_o\);

-- Location: IOIBUF_X13_Y24_N8
\result[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(13),
	o => \result[13]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\result[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(14),
	o => \result[14]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\result[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(15),
	o => \result[15]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\result[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(16),
	o => \result[16]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\result[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(17),
	o => \result[17]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\result[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(18),
	o => \result[18]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\result[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(19),
	o => \result[19]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\result[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(20),
	o => \result[20]~input_o\);

-- Location: IOIBUF_X7_Y24_N15
\result[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(21),
	o => \result[21]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\result[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(22),
	o => \result[22]~input_o\);

-- Location: IOIBUF_X13_Y24_N1
\result[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(23),
	o => \result[23]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\result[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(24),
	o => \result[24]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\result[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(25),
	o => \result[25]~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\result[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(26),
	o => \result[26]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\result[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(27),
	o => \result[27]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\result[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(28),
	o => \result[28]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\result[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(29),
	o => \result[29]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\result[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(30),
	o => \result[30]~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\result[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => result(31),
	o => \result[31]~input_o\);

ww_carry <= \carry~output_o\;

ww_zero <= \zero~output_o\;

result(0) <= \result[0]~output_o\;

result(1) <= \result[1]~output_o\;

result(2) <= \result[2]~output_o\;

result(3) <= \result[3]~output_o\;

result(4) <= \result[4]~output_o\;

result(5) <= \result[5]~output_o\;

result(6) <= \result[6]~output_o\;

result(7) <= \result[7]~output_o\;

result(8) <= \result[8]~output_o\;

result(9) <= \result[9]~output_o\;

result(10) <= \result[10]~output_o\;

result(11) <= \result[11]~output_o\;

result(12) <= \result[12]~output_o\;

result(13) <= \result[13]~output_o\;

result(14) <= \result[14]~output_o\;

result(15) <= \result[15]~output_o\;

result(16) <= \result[16]~output_o\;

result(17) <= \result[17]~output_o\;

result(18) <= \result[18]~output_o\;

result(19) <= \result[19]~output_o\;

result(20) <= \result[20]~output_o\;

result(21) <= \result[21]~output_o\;

result(22) <= \result[22]~output_o\;

result(23) <= \result[23]~output_o\;

result(24) <= \result[24]~output_o\;

result(25) <= \result[25]~output_o\;

result(26) <= \result[26]~output_o\;

result(27) <= \result[27]~output_o\;

result(28) <= \result[28]~output_o\;

result(29) <= \result[29]~output_o\;

result(30) <= \result[30]~output_o\;

result(31) <= \result[31]~output_o\;
END structure;


