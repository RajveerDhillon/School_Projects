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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "06/21/2018 21:02:47"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alupart1 IS
    PORT (
	first4 : OUT std_logic_vector(1 TO 7);
	clk : IN std_logic;
	resetA : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	data_in : IN std_logic;
	last4 : OUT std_logic_vector(1 TO 7);
	sign : OUT std_logic_vector(1 TO 7);
	student_id : OUT std_logic_vector(1 TO 7)
	);
END alupart1;

-- Design Ports Information
-- first4[1]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- first4[2]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- first4[3]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- first4[4]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- first4[5]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- first4[6]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- first4[7]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- last4[1]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- last4[2]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- last4[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- last4[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- last4[5]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- last4[6]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- last4[7]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[1]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[3]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[4]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[5]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[6]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[7]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[1]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[3]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[4]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[5]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[6]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[7]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetA	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF alupart1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_first4 : std_logic_vector(1 TO 7);
SIGNAL ww_clk : std_logic;
SIGNAL ww_resetA : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_in : std_logic;
SIGNAL ww_last4 : std_logic_vector(1 TO 7);
SIGNAL ww_sign : std_logic_vector(1 TO 7);
SIGNAL ww_student_id : std_logic_vector(1 TO 7);
SIGNAL \inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst2|Selector7~4_combout\ : std_logic;
SIGNAL \inst2|Selector7~5_combout\ : std_logic;
SIGNAL \inst2|Selector7~6_combout\ : std_logic;
SIGNAL \inst2|Selector7~7_combout\ : std_logic;
SIGNAL \inst2|Selector7~8_combout\ : std_logic;
SIGNAL \inst2|Selector8~0_combout\ : std_logic;
SIGNAL \inst3|WideOr12~combout\ : std_logic;
SIGNAL \inst2|Selector8~1_combout\ : std_logic;
SIGNAL \resetA~combout\ : std_logic;
SIGNAL \inst2|RESULT~4_combout\ : std_logic;
SIGNAL \data_in~combout\ : std_logic;
SIGNAL \inst3|yfsm.s5~regout\ : std_logic;
SIGNAL \inst3|yfsm.s7~regout\ : std_logic;
SIGNAL \inst3|yfsm.s8~regout\ : std_logic;
SIGNAL \inst3|yfsm.s0~0_combout\ : std_logic;
SIGNAL \inst3|yfsm.s0~regout\ : std_logic;
SIGNAL \inst3|yfsm.s2~0_combout\ : std_logic;
SIGNAL \inst3|yfsm.s2~regout\ : std_logic;
SIGNAL \inst3|yfsm.s1~regout\ : std_logic;
SIGNAL \inst3|yfsm.s3~regout\ : std_logic;
SIGNAL \inst3|yfsm.s4~regout\ : std_logic;
SIGNAL \inst3|yfsm.s6~regout\ : std_logic;
SIGNAL \inst2|Reg3[3]~7_combout\ : std_logic;
SIGNAL \inst2|Reg3[3]~8_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add1~1\ : std_logic;
SIGNAL \inst2|Add1~3\ : std_logic;
SIGNAL \inst2|Add1~5\ : std_logic;
SIGNAL \inst2|Add1~6_combout\ : std_logic;
SIGNAL \inst2|Reg3[3]~9_combout\ : std_logic;
SIGNAL \inst2|Selector4~2_combout\ : std_logic;
SIGNAL \inst2|Selector4~3_combout\ : std_logic;
SIGNAL \inst2|Selector4~0_combout\ : std_logic;
SIGNAL \inst2|Selector4~1_combout\ : std_logic;
SIGNAL \inst2|Reg3[3]~2_combout\ : std_logic;
SIGNAL \inst2|RESULT~5_combout\ : std_logic;
SIGNAL \inst2|RESULT~3_combout\ : std_logic;
SIGNAL \inst2|RESULT~2_combout\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add1~4_combout\ : std_logic;
SIGNAL \inst2|Selector5~0_combout\ : std_logic;
SIGNAL \inst2|Selector5~1_combout\ : std_logic;
SIGNAL \inst2|Selector5~2_combout\ : std_logic;
SIGNAL \inst2|Selector5~3_combout\ : std_logic;
SIGNAL \inst2|Reg3[2]~1_combout\ : std_logic;
SIGNAL \inst2|RESULT~0_combout\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Add1~2_combout\ : std_logic;
SIGNAL \inst2|Selector6~2_combout\ : std_logic;
SIGNAL \inst2|Selector6~3_combout\ : std_logic;
SIGNAL \inst2|Selector6~0_combout\ : std_logic;
SIGNAL \inst2|Selector6~1_combout\ : std_logic;
SIGNAL \inst2|Reg3[1]~0_combout\ : std_logic;
SIGNAL \inst2|RESULT~1_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Selector7~1_combout\ : std_logic;
SIGNAL \inst2|Selector7~2_combout\ : std_logic;
SIGNAL \inst2|Selector7~0_combout\ : std_logic;
SIGNAL \inst2|Selector7~3_combout\ : std_logic;
SIGNAL \inst2|Selector7~9_combout\ : std_logic;
SIGNAL \inst10|Mux0~0_combout\ : std_logic;
SIGNAL \inst10|Mux1~0_combout\ : std_logic;
SIGNAL \inst10|Mux2~0_combout\ : std_logic;
SIGNAL \inst10|Mux3~0_combout\ : std_logic;
SIGNAL \inst10|Mux4~0_combout\ : std_logic;
SIGNAL \inst10|Mux5~0_combout\ : std_logic;
SIGNAL \inst10|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|RESULT~10_combout\ : std_logic;
SIGNAL \inst2|Add1~7\ : std_logic;
SIGNAL \inst2|Add1~9\ : std_logic;
SIGNAL \inst2|Add1~11\ : std_logic;
SIGNAL \inst2|Add1~12_combout\ : std_logic;
SIGNAL \inst2|Reg3[3]~10_combout\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Selector1~1_combout\ : std_logic;
SIGNAL \inst2|Selector1~2_combout\ : std_logic;
SIGNAL \inst2|Selector1~3_combout\ : std_logic;
SIGNAL \inst2|Reg3[6]~5_combout\ : std_logic;
SIGNAL \inst2|RESULT~11_combout\ : std_logic;
SIGNAL \inst2|RESULT~13_combout\ : std_logic;
SIGNAL \inst2|Selector0~4_combout\ : std_logic;
SIGNAL \inst2|Selector0~7_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Add1~13\ : std_logic;
SIGNAL \inst2|Add1~14_combout\ : std_logic;
SIGNAL \inst2|Selector0~8_combout\ : std_logic;
SIGNAL \inst2|Selector0~5_combout\ : std_logic;
SIGNAL \inst2|Selector0~6_combout\ : std_logic;
SIGNAL \inst2|Reg3[7]~6_combout\ : std_logic;
SIGNAL \inst2|RESULT~12_combout\ : std_logic;
SIGNAL \inst2|RESULT~6_combout\ : std_logic;
SIGNAL \inst2|Add1~8_combout\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Selector3~2_combout\ : std_logic;
SIGNAL \inst2|Selector3~3_combout\ : std_logic;
SIGNAL \inst2|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|Selector3~1_combout\ : std_logic;
SIGNAL \inst2|Reg3[4]~3_combout\ : std_logic;
SIGNAL \inst2|RESULT~7_combout\ : std_logic;
SIGNAL \inst2|RESULT~9_combout\ : std_logic;
SIGNAL \inst2|RESULT~8_combout\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Add1~10_combout\ : std_logic;
SIGNAL \inst2|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|Selector2~1_combout\ : std_logic;
SIGNAL \inst2|Selector2~2_combout\ : std_logic;
SIGNAL \inst2|Selector2~3_combout\ : std_logic;
SIGNAL \inst2|Reg3[5]~4_combout\ : std_logic;
SIGNAL \inst11|Mux0~0_combout\ : std_logic;
SIGNAL \inst11|Mux1~0_combout\ : std_logic;
SIGNAL \inst11|Mux2~0_combout\ : std_logic;
SIGNAL \inst11|Mux3~0_combout\ : std_logic;
SIGNAL \inst11|Mux4~0_combout\ : std_logic;
SIGNAL \inst11|Mux5~0_combout\ : std_logic;
SIGNAL \inst11|Mux6~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_cout\ : std_logic;
SIGNAL \inst2|LessThan0~3_cout\ : std_logic;
SIGNAL \inst2|LessThan0~5_cout\ : std_logic;
SIGNAL \inst2|LessThan0~7_cout\ : std_logic;
SIGNAL \inst2|LessThan0~9_cout\ : std_logic;
SIGNAL \inst2|LessThan0~11_cout\ : std_logic;
SIGNAL \inst2|LessThan0~13_cout\ : std_logic;
SIGNAL \inst2|LessThan0~14_combout\ : std_logic;
SIGNAL \inst2|Selector8~2_combout\ : std_logic;
SIGNAL \inst2|Neg~regout\ : std_logic;
SIGNAL \inst3|WideOr10~combout\ : std_logic;
SIGNAL \inst3|WideOr9~combout\ : std_logic;
SIGNAL \inst3|WideOr11~combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|Mux1~0_combout\ : std_logic;
SIGNAL \inst7|Mux3~0_combout\ : std_logic;
SIGNAL \inst7|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|Reg3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_resetA~combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Neg~regout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

first4 <= ww_first4;
ww_clk <= clk;
ww_resetA <= resetA;
ww_A <= A;
ww_B <= B;
ww_data_in <= data_in;
last4 <= ww_last4;
sign <= ww_sign;
student_id <= ww_student_id;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_resetA~combout\ <= NOT \resetA~combout\;
\inst7|ALT_INV_Mux6~0_combout\ <= NOT \inst7|Mux6~0_combout\;
\inst7|ALT_INV_Mux5~0_combout\ <= NOT \inst7|Mux5~0_combout\;
\inst2|ALT_INV_Neg~regout\ <= NOT \inst2|Neg~regout\;
\inst11|ALT_INV_Mux6~0_combout\ <= NOT \inst11|Mux6~0_combout\;
\inst10|ALT_INV_Mux6~0_combout\ <= NOT \inst10|Mux6~0_combout\;

-- Location: LCCOMB_X3_Y12_N0
\inst2|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~0_combout\ = (\inst1|Q\(0) & (\inst|Q\(0) $ (VCC))) # (!\inst1|Q\(0) & ((\inst|Q\(0)) # (GND)))
-- \inst2|Add1~1\ = CARRY((\inst|Q\(0)) # (!\inst1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datab => \inst|Q\(0),
	datad => VCC,
	combout => \inst2|Add1~0_combout\,
	cout => \inst2|Add1~1\);

-- Location: LCCOMB_X2_Y12_N14
\inst2|Selector7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~4_combout\ = (\inst3|yfsm.s2~regout\ & (\inst2|Add1~0_combout\ & !\inst3|yfsm.s6~regout\)) # (!\inst3|yfsm.s2~regout\ & ((\inst3|yfsm.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s2~regout\,
	datab => \inst2|Add1~0_combout\,
	datad => \inst3|yfsm.s6~regout\,
	combout => \inst2|Selector7~4_combout\);

-- Location: LCCOMB_X2_Y12_N28
\inst2|Selector7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~5_combout\ = (\inst3|yfsm.s2~regout\ & (((!\inst3|yfsm.s4~regout\)))) # (!\inst3|yfsm.s2~regout\ & ((\inst|Q\(0) & (!\inst3|yfsm.s4~regout\ & \inst1|Q\(0))) # (!\inst|Q\(0) & (\inst3|yfsm.s4~regout\ & !\inst1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s2~regout\,
	datab => \inst|Q\(0),
	datac => \inst3|yfsm.s4~regout\,
	datad => \inst1|Q\(0),
	combout => \inst2|Selector7~5_combout\);

-- Location: LCCOMB_X2_Y12_N12
\inst2|Selector7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~6_combout\ = (\inst|Q\(0)) # ((\inst3|yfsm.s2~regout\) # ((\inst3|yfsm.s4~regout\ & \inst1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s4~regout\,
	datab => \inst|Q\(0),
	datac => \inst3|yfsm.s2~regout\,
	datad => \inst1|Q\(0),
	combout => \inst2|Selector7~6_combout\);

-- Location: LCCOMB_X2_Y12_N18
\inst2|Selector7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~7_combout\ = (\inst3|yfsm.s1~regout\ & (!\inst2|Selector7~6_combout\ & (!\inst2|Selector7~4_combout\ & !\inst2|Selector7~5_combout\))) # (!\inst3|yfsm.s1~regout\ & (\inst2|Selector7~5_combout\ & (\inst2|Selector7~6_combout\ $ 
-- (!\inst2|Selector7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s1~regout\,
	datab => \inst2|Selector7~6_combout\,
	datac => \inst2|Selector7~4_combout\,
	datad => \inst2|Selector7~5_combout\,
	combout => \inst2|Selector7~7_combout\);

-- Location: LCCOMB_X2_Y12_N26
\inst2|Selector7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~8_combout\ = (!\inst3|yfsm.s3~regout\ & (!\inst3|yfsm.s7~regout\ & \inst2|Selector7~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|yfsm.s3~regout\,
	datac => \inst3|yfsm.s7~regout\,
	datad => \inst2|Selector7~7_combout\,
	combout => \inst2|Selector7~8_combout\);

-- Location: LCCOMB_X5_Y12_N4
\inst2|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector8~0_combout\ = (!\inst3|yfsm.s8~regout\ & (!\inst3|yfsm.s2~regout\ & (!\inst3|yfsm.s1~regout\ & !\inst3|yfsm.s3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s8~regout\,
	datab => \inst3|yfsm.s2~regout\,
	datac => \inst3|yfsm.s1~regout\,
	datad => \inst3|yfsm.s3~regout\,
	combout => \inst2|Selector8~0_combout\);

-- Location: LCCOMB_X6_Y12_N24
\inst3|WideOr12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr12~combout\ = (\inst3|yfsm.s5~regout\) # ((\inst3|yfsm.s4~regout\) # ((\inst3|yfsm.s7~regout\) # (\inst3|yfsm.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s5~regout\,
	datab => \inst3|yfsm.s4~regout\,
	datac => \inst3|yfsm.s7~regout\,
	datad => \inst3|yfsm.s6~regout\,
	combout => \inst3|WideOr12~combout\);

-- Location: LCCOMB_X5_Y12_N10
\inst2|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector8~1_combout\ = (\inst2|Neg~regout\ & ((\inst3|WideOr12~combout\ & ((\inst3|yfsm.s8~regout\))) # (!\inst3|WideOr12~combout\ & (\inst2|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Neg~regout\,
	datab => \inst2|Selector8~0_combout\,
	datac => \inst3|yfsm.s8~regout\,
	datad => \inst3|WideOr12~combout\,
	combout => \inst2|Selector8~1_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\resetA~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_resetA,
	combout => \resetA~combout\);

-- Location: LCFF_X3_Y12_N23
\inst1|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \B~combout\(3),
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(3));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCFF_X3_Y12_N7
\inst|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \A~combout\(3),
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(3));

-- Location: LCCOMB_X4_Y12_N16
\inst2|RESULT~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|RESULT~4_combout\ = (\inst1|Q\(3)) # (\inst|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(3),
	datad => \inst|Q\(3),
	combout => \inst2|RESULT~4_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in,
	combout => \data_in~combout\);

-- Location: LCFF_X5_Y12_N7
\inst3|yfsm.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \inst3|yfsm.s6~regout\,
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s5~regout\);

-- Location: LCFF_X2_Y12_N27
\inst3|yfsm.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \inst3|yfsm.s5~regout\,
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s7~regout\);

-- Location: LCFF_X2_Y12_N1
\inst3|yfsm.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \inst3|yfsm.s7~regout\,
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s8~regout\);

-- Location: LCCOMB_X6_Y12_N22
\inst3|yfsm.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s0~0_combout\ = !\inst3|yfsm.s8~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|yfsm.s8~regout\,
	combout => \inst3|yfsm.s0~0_combout\);

-- Location: LCFF_X2_Y12_N15
\inst3|yfsm.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \inst3|yfsm.s0~0_combout\,
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s0~regout\);

-- Location: LCCOMB_X1_Y11_N26
\inst3|yfsm.s2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s2~0_combout\ = !\inst3|yfsm.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|yfsm.s0~regout\,
	combout => \inst3|yfsm.s2~0_combout\);

-- Location: LCFF_X2_Y12_N13
\inst3|yfsm.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \inst3|yfsm.s2~0_combout\,
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s2~regout\);

-- Location: LCFF_X5_Y12_N5
\inst3|yfsm.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \inst3|yfsm.s2~regout\,
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s1~regout\);

-- Location: LCFF_X5_Y12_N1
\inst3|yfsm.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \inst3|yfsm.s1~regout\,
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s3~regout\);

-- Location: LCFF_X2_Y12_N17
\inst3|yfsm.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \inst3|yfsm.s3~regout\,
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s4~regout\);

-- Location: LCFF_X5_Y12_N13
\inst3|yfsm.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \inst3|yfsm.s4~regout\,
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s6~regout\);

-- Location: LCCOMB_X5_Y12_N14
\inst2|Reg3[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Reg3[3]~7_combout\ = (!\inst3|yfsm.s6~regout\ & !\inst3|yfsm.s5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|yfsm.s6~regout\,
	datad => \inst3|yfsm.s5~regout\,
	combout => \inst2|Reg3[3]~7_combout\);

-- Location: LCCOMB_X5_Y12_N6
\inst2|Reg3[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Reg3[3]~8_combout\ = (\inst3|yfsm.s6~regout\) # ((\inst3|yfsm.s4~regout\ & !\inst3|yfsm.s5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|yfsm.s4~regout\,
	datac => \inst3|yfsm.s5~regout\,
	datad => \inst3|yfsm.s6~regout\,
	combout => \inst2|Reg3[3]~8_combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCFF_X3_Y12_N5
\inst|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \A~combout\(2),
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(2));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCFF_X3_Y12_N19
\inst1|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \B~combout\(1),
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(1));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCFF_X3_Y12_N1
\inst|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \A~combout\(0),
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(0));

-- Location: LCCOMB_X3_Y12_N16
\inst2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = (\inst1|Q\(0) & (\inst|Q\(0) $ (VCC))) # (!\inst1|Q\(0) & (\inst|Q\(0) & VCC))
-- \inst2|Add0~1\ = CARRY((\inst1|Q\(0) & \inst|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datab => \inst|Q\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X3_Y12_N18
\inst2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst|Q\(1) & ((\inst1|Q\(1) & (\inst2|Add0~1\ & VCC)) # (!\inst1|Q\(1) & (!\inst2|Add0~1\)))) # (!\inst|Q\(1) & ((\inst1|Q\(1) & (!\inst2|Add0~1\)) # (!\inst1|Q\(1) & ((\inst2|Add0~1\) # (GND)))))
-- \inst2|Add0~3\ = CARRY((\inst|Q\(1) & (!\inst1|Q\(1) & !\inst2|Add0~1\)) # (!\inst|Q\(1) & ((!\inst2|Add0~1\) # (!\inst1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst1|Q\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X3_Y12_N20
\inst2|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = ((\inst1|Q\(2) $ (\inst|Q\(2) $ (!\inst2|Add0~3\)))) # (GND)
-- \inst2|Add0~5\ = CARRY((\inst1|Q\(2) & ((\inst|Q\(2)) # (!\inst2|Add0~3\))) # (!\inst1|Q\(2) & (\inst|Q\(2) & !\inst2|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst|Q\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X3_Y12_N22
\inst2|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst|Q\(3) & ((\inst1|Q\(3) & (\inst2|Add0~5\ & VCC)) # (!\inst1|Q\(3) & (!\inst2|Add0~5\)))) # (!\inst|Q\(3) & ((\inst1|Q\(3) & (!\inst2|Add0~5\)) # (!\inst1|Q\(3) & ((\inst2|Add0~5\) # (GND)))))
-- \inst2|Add0~7\ = CARRY((\inst|Q\(3) & (!\inst1|Q\(3) & !\inst2|Add0~5\)) # (!\inst|Q\(3) & ((!\inst2|Add0~5\) # (!\inst1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst1|Q\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X3_Y12_N2
\inst2|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~2_combout\ = (\inst|Q\(1) & ((\inst1|Q\(1) & (!\inst2|Add1~1\)) # (!\inst1|Q\(1) & (\inst2|Add1~1\ & VCC)))) # (!\inst|Q\(1) & ((\inst1|Q\(1) & ((\inst2|Add1~1\) # (GND))) # (!\inst1|Q\(1) & (!\inst2|Add1~1\))))
-- \inst2|Add1~3\ = CARRY((\inst|Q\(1) & (\inst1|Q\(1) & !\inst2|Add1~1\)) # (!\inst|Q\(1) & ((\inst1|Q\(1)) # (!\inst2|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst1|Q\(1),
	datad => VCC,
	cin => \inst2|Add1~1\,
	combout => \inst2|Add1~2_combout\,
	cout => \inst2|Add1~3\);

-- Location: LCCOMB_X3_Y12_N4
\inst2|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~4_combout\ = ((\inst1|Q\(2) $ (\inst|Q\(2) $ (\inst2|Add1~3\)))) # (GND)
-- \inst2|Add1~5\ = CARRY((\inst1|Q\(2) & (\inst|Q\(2) & !\inst2|Add1~3\)) # (!\inst1|Q\(2) & ((\inst|Q\(2)) # (!\inst2|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst|Q\(2),
	datad => VCC,
	cin => \inst2|Add1~3\,
	combout => \inst2|Add1~4_combout\,
	cout => \inst2|Add1~5\);

-- Location: LCCOMB_X3_Y12_N6
\inst2|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~6_combout\ = (\inst|Q\(3) & ((\inst1|Q\(3) & (!\inst2|Add1~5\)) # (!\inst1|Q\(3) & (\inst2|Add1~5\ & VCC)))) # (!\inst|Q\(3) & ((\inst1|Q\(3) & ((\inst2|Add1~5\) # (GND))) # (!\inst1|Q\(3) & (!\inst2|Add1~5\))))
-- \inst2|Add1~7\ = CARRY((\inst|Q\(3) & (\inst1|Q\(3) & !\inst2|Add1~5\)) # (!\inst|Q\(3) & ((\inst1|Q\(3)) # (!\inst2|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst1|Q\(3),
	datad => VCC,
	cin => \inst2|Add1~5\,
	combout => \inst2|Add1~6_combout\,
	cout => \inst2|Add1~7\);

-- Location: LCCOMB_X2_Y12_N8
\inst2|Reg3[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Reg3[3]~9_combout\ = (\inst3|yfsm.s2~regout\) # (\inst3|yfsm.s3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s2~regout\,
	datad => \inst3|yfsm.s3~regout\,
	combout => \inst2|Reg3[3]~9_combout\);

-- Location: LCCOMB_X4_Y12_N20
\inst2|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~2_combout\ = (\inst2|Reg3[3]~10_combout\ & (((\inst2|Reg3[3]~9_combout\)))) # (!\inst2|Reg3[3]~10_combout\ & ((\inst2|Reg3[3]~9_combout\ & ((\inst2|Add1~6_combout\))) # (!\inst2|Reg3[3]~9_combout\ & (\inst2|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~10_combout\,
	datab => \inst2|Add0~6_combout\,
	datac => \inst2|Add1~6_combout\,
	datad => \inst2|Reg3[3]~9_combout\,
	combout => \inst2|Selector4~2_combout\);

-- Location: LCCOMB_X4_Y12_N2
\inst2|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~3_combout\ = (\inst2|Reg3[3]~10_combout\ & (((\inst2|Selector4~2_combout\ & !\inst1|Q\(3))) # (!\inst|Q\(3)))) # (!\inst2|Reg3[3]~10_combout\ & (((\inst2|Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~10_combout\,
	datab => \inst|Q\(3),
	datac => \inst2|Selector4~2_combout\,
	datad => \inst1|Q\(3),
	combout => \inst2|Selector4~3_combout\);

-- Location: LCCOMB_X4_Y12_N22
\inst2|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~0_combout\ = (\inst2|Reg3[3]~7_combout\ & ((\inst2|Reg3[3]~8_combout\ & (!\inst2|RESULT~4_combout\)) # (!\inst2|Reg3[3]~8_combout\ & ((\inst2|Selector4~3_combout\))))) # (!\inst2|Reg3[3]~7_combout\ & (((\inst2|Reg3[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RESULT~4_combout\,
	datab => \inst2|Reg3[3]~7_combout\,
	datac => \inst2|Reg3[3]~8_combout\,
	datad => \inst2|Selector4~3_combout\,
	combout => \inst2|Selector4~0_combout\);

-- Location: LCCOMB_X4_Y12_N28
\inst2|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~1_combout\ = (\inst2|Reg3[3]~7_combout\ & (((\inst2|Selector4~0_combout\)))) # (!\inst2|Reg3[3]~7_combout\ & ((\inst|Q\(3) & (\inst1|Q\(3) $ (!\inst2|Selector4~0_combout\))) # (!\inst|Q\(3) & (\inst1|Q\(3) & 
-- !\inst2|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst1|Q\(3),
	datac => \inst2|Reg3[3]~7_combout\,
	datad => \inst2|Selector4~0_combout\,
	combout => \inst2|Selector4~1_combout\);

-- Location: LCCOMB_X4_Y12_N24
\inst2|Reg3[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Reg3[3]~2_combout\ = (\inst3|yfsm.s7~regout\ & (\inst2|RESULT~4_combout\)) # (!\inst3|yfsm.s7~regout\ & ((\inst2|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst2|RESULT~4_combout\,
	datad => \inst2|Selector4~1_combout\,
	combout => \inst2|Reg3[3]~2_combout\);

-- Location: LCCOMB_X4_Y12_N14
\inst2|RESULT~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|RESULT~5_combout\ = \inst|Q\(3) $ (!\inst1|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datad => \inst1|Q\(3),
	combout => \inst2|RESULT~5_combout\);

-- Location: LCFF_X4_Y12_N25
\inst2|Reg3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst2|Reg3[3]~2_combout\,
	sdata => \inst2|RESULT~5_combout\,
	sload => \inst3|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Reg3\(3));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCFF_X3_Y12_N21
\inst1|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \B~combout\(2),
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(2));

-- Location: LCCOMB_X6_Y12_N26
\inst2|RESULT~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|RESULT~3_combout\ = (\inst|Q\(2)) # (\inst1|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(2),
	datac => \inst1|Q\(2),
	combout => \inst2|RESULT~3_combout\);

-- Location: LCCOMB_X6_Y12_N16
\inst2|RESULT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|RESULT~2_combout\ = \inst1|Q\(2) $ (!\inst|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datac => \inst|Q\(2),
	combout => \inst2|RESULT~2_combout\);

-- Location: LCCOMB_X6_Y12_N10
\inst2|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~0_combout\ = (\inst2|Reg3[3]~10_combout\ & (\inst2|Reg3[3]~9_combout\)) # (!\inst2|Reg3[3]~10_combout\ & ((\inst2|Reg3[3]~9_combout\ & ((\inst2|Add1~4_combout\))) # (!\inst2|Reg3[3]~9_combout\ & (\inst2|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~10_combout\,
	datab => \inst2|Reg3[3]~9_combout\,
	datac => \inst2|Add0~4_combout\,
	datad => \inst2|Add1~4_combout\,
	combout => \inst2|Selector5~0_combout\);

-- Location: LCCOMB_X6_Y12_N0
\inst2|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~1_combout\ = (\inst2|Reg3[3]~10_combout\ & (((!\inst1|Q\(2) & \inst2|Selector5~0_combout\)) # (!\inst|Q\(2)))) # (!\inst2|Reg3[3]~10_combout\ & (((\inst2|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~10_combout\,
	datab => \inst1|Q\(2),
	datac => \inst|Q\(2),
	datad => \inst2|Selector5~0_combout\,
	combout => \inst2|Selector5~1_combout\);

-- Location: LCCOMB_X6_Y12_N2
\inst2|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~2_combout\ = (\inst2|Reg3[3]~7_combout\ & (!\inst2|Reg3[3]~8_combout\ & ((\inst2|Selector5~1_combout\)))) # (!\inst2|Reg3[3]~7_combout\ & ((\inst2|Reg3[3]~8_combout\) # ((!\inst2|RESULT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~7_combout\,
	datab => \inst2|Reg3[3]~8_combout\,
	datac => \inst2|RESULT~2_combout\,
	datad => \inst2|Selector5~1_combout\,
	combout => \inst2|Selector5~2_combout\);

-- Location: LCCOMB_X6_Y12_N12
\inst2|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~3_combout\ = (\inst2|Reg3[3]~8_combout\ & ((\inst1|Q\(2) & (\inst|Q\(2) & \inst2|Selector5~2_combout\)) # (!\inst1|Q\(2) & (!\inst|Q\(2) & !\inst2|Selector5~2_combout\)))) # (!\inst2|Reg3[3]~8_combout\ & (((\inst2|Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst2|Reg3[3]~8_combout\,
	datac => \inst|Q\(2),
	datad => \inst2|Selector5~2_combout\,
	combout => \inst2|Selector5~3_combout\);

-- Location: LCCOMB_X6_Y12_N30
\inst2|Reg3[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Reg3[2]~1_combout\ = (\inst3|yfsm.s7~regout\ & (\inst2|RESULT~3_combout\)) # (!\inst3|yfsm.s7~regout\ & ((\inst2|Selector5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst2|RESULT~3_combout\,
	datad => \inst2|Selector5~3_combout\,
	combout => \inst2|Reg3[2]~1_combout\);

-- Location: LCFF_X6_Y12_N31
\inst2|Reg3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst2|Reg3[2]~1_combout\,
	sdata => \inst2|RESULT~2_combout\,
	sload => \inst3|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Reg3\(2));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCFF_X3_Y12_N3
\inst|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \A~combout\(1),
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(1));

-- Location: LCCOMB_X6_Y12_N4
\inst2|RESULT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|RESULT~0_combout\ = (\inst1|Q\(1)) # (\inst|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(1),
	datac => \inst|Q\(1),
	combout => \inst2|RESULT~0_combout\);

-- Location: LCCOMB_X6_Y12_N6
\inst2|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~2_combout\ = (\inst2|Reg3[3]~10_combout\ & (((\inst2|Reg3[3]~9_combout\)))) # (!\inst2|Reg3[3]~10_combout\ & ((\inst2|Reg3[3]~9_combout\ & ((\inst2|Add1~2_combout\))) # (!\inst2|Reg3[3]~9_combout\ & (\inst2|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~10_combout\,
	datab => \inst2|Add0~2_combout\,
	datac => \inst2|Add1~2_combout\,
	datad => \inst2|Reg3[3]~9_combout\,
	combout => \inst2|Selector6~2_combout\);

-- Location: LCCOMB_X6_Y12_N8
\inst2|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~3_combout\ = (\inst2|Reg3[3]~10_combout\ & (((!\inst1|Q\(1) & \inst2|Selector6~2_combout\)) # (!\inst|Q\(1)))) # (!\inst2|Reg3[3]~10_combout\ & (((\inst2|Selector6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~10_combout\,
	datab => \inst|Q\(1),
	datac => \inst1|Q\(1),
	datad => \inst2|Selector6~2_combout\,
	combout => \inst2|Selector6~3_combout\);

-- Location: LCCOMB_X6_Y12_N18
\inst2|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~0_combout\ = (\inst2|Reg3[3]~7_combout\ & ((\inst2|Reg3[3]~8_combout\ & (!\inst2|RESULT~0_combout\)) # (!\inst2|Reg3[3]~8_combout\ & ((\inst2|Selector6~3_combout\))))) # (!\inst2|Reg3[3]~7_combout\ & (((\inst2|Reg3[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~7_combout\,
	datab => \inst2|RESULT~0_combout\,
	datac => \inst2|Reg3[3]~8_combout\,
	datad => \inst2|Selector6~3_combout\,
	combout => \inst2|Selector6~0_combout\);

-- Location: LCCOMB_X6_Y12_N28
\inst2|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~1_combout\ = (\inst2|Reg3[3]~7_combout\ & (((\inst2|Selector6~0_combout\)))) # (!\inst2|Reg3[3]~7_combout\ & ((\inst|Q\(1) & (\inst1|Q\(1) $ (!\inst2|Selector6~0_combout\))) # (!\inst|Q\(1) & (\inst1|Q\(1) & 
-- !\inst2|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~7_combout\,
	datab => \inst|Q\(1),
	datac => \inst1|Q\(1),
	datad => \inst2|Selector6~0_combout\,
	combout => \inst2|Selector6~1_combout\);

-- Location: LCCOMB_X6_Y12_N20
\inst2|Reg3[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Reg3[1]~0_combout\ = (\inst3|yfsm.s7~regout\ & (\inst2|RESULT~0_combout\)) # (!\inst3|yfsm.s7~regout\ & ((\inst2|Selector6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst2|RESULT~0_combout\,
	datad => \inst2|Selector6~1_combout\,
	combout => \inst2|Reg3[1]~0_combout\);

-- Location: LCCOMB_X6_Y12_N14
\inst2|RESULT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|RESULT~1_combout\ = \inst1|Q\(1) $ (!\inst|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(1),
	datac => \inst|Q\(1),
	combout => \inst2|RESULT~1_combout\);

-- Location: LCFF_X6_Y12_N21
\inst2|Reg3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst2|Reg3[1]~0_combout\,
	sdata => \inst2|RESULT~1_combout\,
	sload => \inst3|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Reg3\(1));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCFF_X3_Y12_N17
\inst1|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \B~combout\(0),
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(0));

-- Location: LCCOMB_X2_Y12_N2
\inst2|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~1_combout\ = (\inst3|yfsm.s3~regout\ & (\inst|Q\(0) & \inst1|Q\(0))) # (!\inst3|yfsm.s3~regout\ & ((\inst|Q\(0)) # (\inst1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s3~regout\,
	datac => \inst|Q\(0),
	datad => \inst1|Q\(0),
	combout => \inst2|Selector7~1_combout\);

-- Location: LCCOMB_X2_Y12_N4
\inst2|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~2_combout\ = (\inst3|yfsm.s3~regout\ & (!\inst3|yfsm.s7~regout\ & ((!\inst2|Selector7~1_combout\)))) # (!\inst3|yfsm.s3~regout\ & ((\inst3|yfsm.s7~regout\ & ((\inst2|Selector7~1_combout\))) # (!\inst3|yfsm.s7~regout\ & 
-- (\inst2|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s3~regout\,
	datab => \inst3|yfsm.s7~regout\,
	datac => \inst2|Add0~0_combout\,
	datad => \inst2|Selector7~1_combout\,
	combout => \inst2|Selector7~2_combout\);

-- Location: LCCOMB_X5_Y12_N12
\inst2|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~0_combout\ = (\inst3|yfsm.s4~regout\) # ((\inst3|yfsm.s1~regout\) # (\inst3|yfsm.s6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s4~regout\,
	datab => \inst3|yfsm.s1~regout\,
	datac => \inst3|yfsm.s6~regout\,
	combout => \inst2|Selector7~0_combout\);

-- Location: LCCOMB_X2_Y12_N22
\inst2|Selector7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~3_combout\ = (!\inst3|yfsm.s2~regout\ & (\inst2|Selector7~2_combout\ & !\inst2|Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s2~regout\,
	datac => \inst2|Selector7~2_combout\,
	datad => \inst2|Selector7~0_combout\,
	combout => \inst2|Selector7~3_combout\);

-- Location: LCCOMB_X1_Y12_N22
\inst2|Selector7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~9_combout\ = (\inst3|yfsm.s8~regout\ & (((!\inst2|Add0~0_combout\)))) # (!\inst3|yfsm.s8~regout\ & ((\inst2|Selector7~8_combout\) # ((\inst2|Selector7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector7~8_combout\,
	datab => \inst2|Add0~0_combout\,
	datac => \inst3|yfsm.s8~regout\,
	datad => \inst2|Selector7~3_combout\,
	combout => \inst2|Selector7~9_combout\);

-- Location: LCFF_X1_Y12_N23
\inst2|Reg3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst2|Selector7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Reg3\(0));

-- Location: LCCOMB_X24_Y4_N8
\inst10|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux0~0_combout\ = (!\inst2|Reg3\(3) & (!\inst2|Reg3\(1) & (\inst2|Reg3\(2) $ (\inst2|Reg3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3\(3),
	datab => \inst2|Reg3\(2),
	datac => \inst2|Reg3\(1),
	datad => \inst2|Reg3\(0),
	combout => \inst10|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y4_N18
\inst10|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux1~0_combout\ = (\inst2|Reg3\(2) & ((\inst2|Reg3\(3) & ((\inst2|Reg3\(1)) # (!\inst2|Reg3\(0)))) # (!\inst2|Reg3\(3) & (\inst2|Reg3\(1) $ (\inst2|Reg3\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3\(3),
	datab => \inst2|Reg3\(2),
	datac => \inst2|Reg3\(1),
	datad => \inst2|Reg3\(0),
	combout => \inst10|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y4_N0
\inst10|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux2~0_combout\ = (\inst2|Reg3\(3) & (\inst2|Reg3\(2) & ((\inst2|Reg3\(1)) # (!\inst2|Reg3\(0))))) # (!\inst2|Reg3\(3) & (!\inst2|Reg3\(2) & (\inst2|Reg3\(1) & !\inst2|Reg3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3\(3),
	datab => \inst2|Reg3\(2),
	datac => \inst2|Reg3\(1),
	datad => \inst2|Reg3\(0),
	combout => \inst10|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y4_N10
\inst10|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux3~0_combout\ = (\inst2|Reg3\(0) & ((\inst2|Reg3\(2) $ (!\inst2|Reg3\(1))))) # (!\inst2|Reg3\(0) & ((\inst2|Reg3\(3) & (!\inst2|Reg3\(2) & \inst2|Reg3\(1))) # (!\inst2|Reg3\(3) & (\inst2|Reg3\(2) & !\inst2|Reg3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3\(3),
	datab => \inst2|Reg3\(2),
	datac => \inst2|Reg3\(1),
	datad => \inst2|Reg3\(0),
	combout => \inst10|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y4_N12
\inst10|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux4~0_combout\ = (\inst2|Reg3\(1) & (!\inst2|Reg3\(3) & ((\inst2|Reg3\(0))))) # (!\inst2|Reg3\(1) & ((\inst2|Reg3\(2) & (!\inst2|Reg3\(3))) # (!\inst2|Reg3\(2) & ((\inst2|Reg3\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3\(3),
	datab => \inst2|Reg3\(2),
	datac => \inst2|Reg3\(1),
	datad => \inst2|Reg3\(0),
	combout => \inst10|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y4_N22
\inst10|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux5~0_combout\ = (!\inst2|Reg3\(3) & ((\inst2|Reg3\(2) & (\inst2|Reg3\(1) & \inst2|Reg3\(0))) # (!\inst2|Reg3\(2) & ((\inst2|Reg3\(1)) # (\inst2|Reg3\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3\(3),
	datab => \inst2|Reg3\(2),
	datac => \inst2|Reg3\(1),
	datad => \inst2|Reg3\(0),
	combout => \inst10|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y4_N4
\inst10|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux6~0_combout\ = (\inst2|Reg3\(1) & ((\inst2|Reg3\(3)) # ((!\inst2|Reg3\(0)) # (!\inst2|Reg3\(2))))) # (!\inst2|Reg3\(1) & (\inst2|Reg3\(3) $ ((\inst2|Reg3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3\(3),
	datab => \inst2|Reg3\(2),
	datac => \inst2|Reg3\(1),
	datad => \inst2|Reg3\(0),
	combout => \inst10|Mux6~0_combout\);

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: LCFF_X3_Y12_N29
\inst1|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \B~combout\(6),
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(6));

-- Location: LCCOMB_X2_Y12_N20
\inst2|RESULT~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|RESULT~10_combout\ = (\inst|Q\(6)) # (\inst1|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(6),
	datad => \inst1|Q\(6),
	combout => \inst2|RESULT~10_combout\);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCFF_X3_Y12_N13
\inst|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \A~combout\(6),
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(6));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: LCFF_X3_Y12_N27
\inst1|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \B~combout\(5),
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(5));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCFF_X3_Y12_N9
\inst|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \A~combout\(4),
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(4));

-- Location: LCCOMB_X3_Y12_N8
\inst2|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~8_combout\ = ((\inst1|Q\(4) $ (\inst|Q\(4) $ (\inst2|Add1~7\)))) # (GND)
-- \inst2|Add1~9\ = CARRY((\inst1|Q\(4) & (\inst|Q\(4) & !\inst2|Add1~7\)) # (!\inst1|Q\(4) & ((\inst|Q\(4)) # (!\inst2|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(4),
	datab => \inst|Q\(4),
	datad => VCC,
	cin => \inst2|Add1~7\,
	combout => \inst2|Add1~8_combout\,
	cout => \inst2|Add1~9\);

-- Location: LCCOMB_X3_Y12_N10
\inst2|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~10_combout\ = (\inst|Q\(5) & ((\inst1|Q\(5) & (!\inst2|Add1~9\)) # (!\inst1|Q\(5) & (\inst2|Add1~9\ & VCC)))) # (!\inst|Q\(5) & ((\inst1|Q\(5) & ((\inst2|Add1~9\) # (GND))) # (!\inst1|Q\(5) & (!\inst2|Add1~9\))))
-- \inst2|Add1~11\ = CARRY((\inst|Q\(5) & (\inst1|Q\(5) & !\inst2|Add1~9\)) # (!\inst|Q\(5) & ((\inst1|Q\(5)) # (!\inst2|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datab => \inst1|Q\(5),
	datad => VCC,
	cin => \inst2|Add1~9\,
	combout => \inst2|Add1~10_combout\,
	cout => \inst2|Add1~11\);

-- Location: LCCOMB_X3_Y12_N12
\inst2|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~12_combout\ = ((\inst|Q\(6) $ (\inst1|Q\(6) $ (\inst2|Add1~11\)))) # (GND)
-- \inst2|Add1~13\ = CARRY((\inst|Q\(6) & ((!\inst2|Add1~11\) # (!\inst1|Q\(6)))) # (!\inst|Q\(6) & (!\inst1|Q\(6) & !\inst2|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(6),
	datab => \inst1|Q\(6),
	datad => VCC,
	cin => \inst2|Add1~11\,
	combout => \inst2|Add1~12_combout\,
	cout => \inst2|Add1~13\);

-- Location: LCCOMB_X5_Y12_N2
\inst2|Reg3[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Reg3[3]~10_combout\ = (\inst3|yfsm.s1~regout\) # (\inst3|yfsm.s3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|yfsm.s1~regout\,
	datad => \inst3|yfsm.s3~regout\,
	combout => \inst2|Reg3[3]~10_combout\);

-- Location: LCCOMB_X2_Y12_N24
\inst2|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (\inst2|Reg3[3]~10_combout\ & (((!\inst1|Q\(6) & \inst2|Reg3[3]~9_combout\)) # (!\inst|Q\(6)))) # (!\inst2|Reg3[3]~10_combout\ & (((\inst2|Reg3[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(6),
	datab => \inst1|Q\(6),
	datac => \inst2|Reg3[3]~9_combout\,
	datad => \inst2|Reg3[3]~10_combout\,
	combout => \inst2|Selector1~0_combout\);

-- Location: LCCOMB_X3_Y12_N24
\inst2|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = ((\inst1|Q\(4) $ (\inst|Q\(4) $ (!\inst2|Add0~7\)))) # (GND)
-- \inst2|Add0~9\ = CARRY((\inst1|Q\(4) & ((\inst|Q\(4)) # (!\inst2|Add0~7\))) # (!\inst1|Q\(4) & (\inst|Q\(4) & !\inst2|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(4),
	datab => \inst|Q\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X3_Y12_N26
\inst2|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst|Q\(5) & ((\inst1|Q\(5) & (\inst2|Add0~9\ & VCC)) # (!\inst1|Q\(5) & (!\inst2|Add0~9\)))) # (!\inst|Q\(5) & ((\inst1|Q\(5) & (!\inst2|Add0~9\)) # (!\inst1|Q\(5) & ((\inst2|Add0~9\) # (GND)))))
-- \inst2|Add0~11\ = CARRY((\inst|Q\(5) & (!\inst1|Q\(5) & !\inst2|Add0~9\)) # (!\inst|Q\(5) & ((!\inst2|Add0~9\) # (!\inst1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datab => \inst1|Q\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X3_Y12_N28
\inst2|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = ((\inst|Q\(6) $ (\inst1|Q\(6) $ (!\inst2|Add0~11\)))) # (GND)
-- \inst2|Add0~13\ = CARRY((\inst|Q\(6) & ((\inst1|Q\(6)) # (!\inst2|Add0~11\))) # (!\inst|Q\(6) & (\inst1|Q\(6) & !\inst2|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(6),
	datab => \inst1|Q\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X2_Y12_N6
\inst2|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~1_combout\ = (\inst2|Reg3[3]~10_combout\ & (((\inst2|Selector1~0_combout\)))) # (!\inst2|Reg3[3]~10_combout\ & ((\inst2|Selector1~0_combout\ & (\inst2|Add1~12_combout\)) # (!\inst2|Selector1~0_combout\ & ((\inst2|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~10_combout\,
	datab => \inst2|Add1~12_combout\,
	datac => \inst2|Selector1~0_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|Selector1~1_combout\);

-- Location: LCCOMB_X1_Y12_N10
\inst2|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~2_combout\ = (\inst2|Reg3[3]~8_combout\ & (((!\inst2|Reg3[3]~7_combout\)) # (!\inst2|RESULT~10_combout\))) # (!\inst2|Reg3[3]~8_combout\ & (((\inst2|Reg3[3]~7_combout\ & \inst2|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~8_combout\,
	datab => \inst2|RESULT~10_combout\,
	datac => \inst2|Reg3[3]~7_combout\,
	datad => \inst2|Selector1~1_combout\,
	combout => \inst2|Selector1~2_combout\);

-- Location: LCCOMB_X1_Y12_N12
\inst2|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~3_combout\ = (\inst2|Reg3[3]~7_combout\ & (((\inst2|Selector1~2_combout\)))) # (!\inst2|Reg3[3]~7_combout\ & ((\inst1|Q\(6) & (\inst|Q\(6) $ (!\inst2|Selector1~2_combout\))) # (!\inst1|Q\(6) & (\inst|Q\(6) & 
-- !\inst2|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst2|Reg3[3]~7_combout\,
	datac => \inst|Q\(6),
	datad => \inst2|Selector1~2_combout\,
	combout => \inst2|Selector1~3_combout\);

-- Location: LCCOMB_X1_Y12_N18
\inst2|Reg3[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Reg3[6]~5_combout\ = (\inst3|yfsm.s7~regout\ & (\inst2|RESULT~10_combout\)) # (!\inst3|yfsm.s7~regout\ & ((\inst2|Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst2|RESULT~10_combout\,
	datad => \inst2|Selector1~3_combout\,
	combout => \inst2|Reg3[6]~5_combout\);

-- Location: LCCOMB_X1_Y12_N6
\inst2|RESULT~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|RESULT~11_combout\ = \inst1|Q\(6) $ (!\inst|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datac => \inst|Q\(6),
	combout => \inst2|RESULT~11_combout\);

-- Location: LCFF_X1_Y12_N19
\inst2|Reg3[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst2|Reg3[6]~5_combout\,
	sdata => \inst2|RESULT~11_combout\,
	sload => \inst3|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Reg3\(6));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LCFF_X3_Y12_N31
\inst1|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \B~combout\(7),
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(7));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LCFF_X3_Y12_N15
\inst|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \A~combout\(7),
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(7));

-- Location: LCCOMB_X1_Y12_N2
\inst2|RESULT~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|RESULT~13_combout\ = (\inst1|Q\(7)) # (\inst|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Q\(7),
	datad => \inst|Q\(7),
	combout => \inst2|RESULT~13_combout\);

-- Location: LCCOMB_X1_Y12_N20
\inst2|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~4_combout\ = (\inst1|Q\(7) & ((\inst|Q\(7) & (!\inst2|Reg3[3]~7_combout\)) # (!\inst|Q\(7) & ((!\inst2|Reg3[3]~8_combout\))))) # (!\inst1|Q\(7) & (((!\inst|Q\(7) & \inst2|Reg3[3]~7_combout\)) # (!\inst2|Reg3[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(7),
	datab => \inst|Q\(7),
	datac => \inst2|Reg3[3]~7_combout\,
	datad => \inst2|Reg3[3]~8_combout\,
	combout => \inst2|Selector0~4_combout\);

-- Location: LCCOMB_X4_Y12_N4
\inst2|Selector0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~7_combout\ = (\inst2|Reg3[3]~7_combout\ & (((\inst2|Reg3[3]~9_combout\)) # (!\inst|Q\(7)))) # (!\inst2|Reg3[3]~7_combout\ & (\inst|Q\(7) $ ((\inst1|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(7),
	datab => \inst1|Q\(7),
	datac => \inst2|Reg3[3]~7_combout\,
	datad => \inst2|Reg3[3]~9_combout\,
	combout => \inst2|Selector0~7_combout\);

-- Location: LCCOMB_X3_Y12_N30
\inst2|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = \inst|Q\(7) $ (\inst2|Add0~13\ $ (\inst1|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(7),
	datad => \inst1|Q\(7),
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\);

-- Location: LCCOMB_X3_Y12_N14
\inst2|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~14_combout\ = \inst|Q\(7) $ (\inst2|Add1~13\ $ (!\inst1|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(7),
	datad => \inst1|Q\(7),
	cin => \inst2|Add1~13\,
	combout => \inst2|Add1~14_combout\);

-- Location: LCCOMB_X4_Y12_N6
\inst2|Selector0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~8_combout\ = (\inst3|yfsm.s2~regout\ & (((\inst2|Add1~14_combout\)))) # (!\inst3|yfsm.s2~regout\ & ((\inst3|yfsm.s3~regout\ & ((\inst2|Add1~14_combout\))) # (!\inst3|yfsm.s3~regout\ & (\inst2|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s2~regout\,
	datab => \inst3|yfsm.s3~regout\,
	datac => \inst2|Add0~14_combout\,
	datad => \inst2|Add1~14_combout\,
	combout => \inst2|Selector0~8_combout\);

-- Location: LCCOMB_X4_Y12_N26
\inst2|Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~5_combout\ = (\inst2|Reg3[3]~10_combout\ & (((\inst2|Selector0~7_combout\)))) # (!\inst2|Reg3[3]~10_combout\ & ((\inst2|Reg3[3]~7_combout\ & ((\inst2|Selector0~8_combout\))) # (!\inst2|Reg3[3]~7_combout\ & (\inst2|Selector0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~10_combout\,
	datab => \inst2|Reg3[3]~7_combout\,
	datac => \inst2|Selector0~7_combout\,
	datad => \inst2|Selector0~8_combout\,
	combout => \inst2|Selector0~5_combout\);

-- Location: LCCOMB_X1_Y12_N28
\inst2|Selector0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~6_combout\ = (\inst2|Reg3[3]~8_combout\ & (((\inst2|Selector0~4_combout\)))) # (!\inst2|Reg3[3]~8_combout\ & (\inst2|Selector0~5_combout\ & ((\inst2|Selector0~4_combout\) # (!\inst2|Reg3[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~8_combout\,
	datab => \inst2|Reg3[3]~10_combout\,
	datac => \inst2|Selector0~4_combout\,
	datad => \inst2|Selector0~5_combout\,
	combout => \inst2|Selector0~6_combout\);

-- Location: LCCOMB_X1_Y12_N4
\inst2|Reg3[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Reg3[7]~6_combout\ = (\inst3|yfsm.s7~regout\ & (\inst2|RESULT~13_combout\)) # (!\inst3|yfsm.s7~regout\ & ((\inst2|Selector0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst2|RESULT~13_combout\,
	datad => \inst2|Selector0~6_combout\,
	combout => \inst2|Reg3[7]~6_combout\);

-- Location: LCCOMB_X1_Y12_N14
\inst2|RESULT~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|RESULT~12_combout\ = \inst1|Q\(7) $ (!\inst|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Q\(7),
	datad => \inst|Q\(7),
	combout => \inst2|RESULT~12_combout\);

-- Location: LCFF_X1_Y12_N5
\inst2|Reg3[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst2|Reg3[7]~6_combout\,
	sdata => \inst2|RESULT~12_combout\,
	sload => \inst3|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Reg3\(7));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCFF_X3_Y12_N25
\inst1|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \B~combout\(4),
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(4));

-- Location: LCCOMB_X1_Y12_N26
\inst2|RESULT~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|RESULT~6_combout\ = (\inst1|Q\(4)) # (\inst|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Q\(4),
	datad => \inst|Q\(4),
	combout => \inst2|RESULT~6_combout\);

-- Location: LCCOMB_X2_Y12_N10
\inst2|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~2_combout\ = (\inst2|Reg3[3]~10_combout\ & (\inst2|Reg3[3]~9_combout\)) # (!\inst2|Reg3[3]~10_combout\ & ((\inst2|Reg3[3]~9_combout\ & (\inst2|Add1~8_combout\)) # (!\inst2|Reg3[3]~9_combout\ & ((\inst2|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~10_combout\,
	datab => \inst2|Reg3[3]~9_combout\,
	datac => \inst2|Add1~8_combout\,
	datad => \inst2|Add0~8_combout\,
	combout => \inst2|Selector3~2_combout\);

-- Location: LCCOMB_X2_Y12_N30
\inst2|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~3_combout\ = (\inst2|Reg3[3]~10_combout\ & (((!\inst1|Q\(4) & \inst2|Selector3~2_combout\)) # (!\inst|Q\(4)))) # (!\inst2|Reg3[3]~10_combout\ & (((\inst2|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~10_combout\,
	datab => \inst|Q\(4),
	datac => \inst1|Q\(4),
	datad => \inst2|Selector3~2_combout\,
	combout => \inst2|Selector3~3_combout\);

-- Location: LCCOMB_X1_Y12_N0
\inst2|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = (\inst2|Reg3[3]~8_combout\ & (((!\inst2|Reg3[3]~7_combout\)) # (!\inst2|RESULT~6_combout\))) # (!\inst2|Reg3[3]~8_combout\ & (((\inst2|Reg3[3]~7_combout\ & \inst2|Selector3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~8_combout\,
	datab => \inst2|RESULT~6_combout\,
	datac => \inst2|Reg3[3]~7_combout\,
	datad => \inst2|Selector3~3_combout\,
	combout => \inst2|Selector3~0_combout\);

-- Location: LCCOMB_X1_Y12_N30
\inst2|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~1_combout\ = (\inst2|Reg3[3]~7_combout\ & (((\inst2|Selector3~0_combout\)))) # (!\inst2|Reg3[3]~7_combout\ & ((\inst|Q\(4) & (\inst1|Q\(4) $ (!\inst2|Selector3~0_combout\))) # (!\inst|Q\(4) & (\inst1|Q\(4) & 
-- !\inst2|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datab => \inst2|Reg3[3]~7_combout\,
	datac => \inst1|Q\(4),
	datad => \inst2|Selector3~0_combout\,
	combout => \inst2|Selector3~1_combout\);

-- Location: LCCOMB_X1_Y12_N8
\inst2|Reg3[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Reg3[4]~3_combout\ = (\inst3|yfsm.s7~regout\ & (\inst2|RESULT~6_combout\)) # (!\inst3|yfsm.s7~regout\ & ((\inst2|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst2|RESULT~6_combout\,
	datad => \inst2|Selector3~1_combout\,
	combout => \inst2|Reg3[4]~3_combout\);

-- Location: LCCOMB_X1_Y12_N24
\inst2|RESULT~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|RESULT~7_combout\ = \inst1|Q\(4) $ (!\inst|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Q\(4),
	datad => \inst|Q\(4),
	combout => \inst2|RESULT~7_combout\);

-- Location: LCFF_X1_Y12_N9
\inst2|Reg3[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst2|Reg3[4]~3_combout\,
	sdata => \inst2|RESULT~7_combout\,
	sload => \inst3|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Reg3\(4));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCFF_X3_Y12_N11
\inst|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \A~combout\(5),
	aclr => \ALT_INV_resetA~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(5));

-- Location: LCCOMB_X5_Y12_N0
\inst2|RESULT~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|RESULT~9_combout\ = (\inst1|Q\(5)) # (\inst|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(5),
	datad => \inst|Q\(5),
	combout => \inst2|RESULT~9_combout\);

-- Location: LCCOMB_X4_Y12_N8
\inst2|RESULT~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|RESULT~8_combout\ = \inst|Q\(5) $ (!\inst1|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(5),
	datad => \inst1|Q\(5),
	combout => \inst2|RESULT~8_combout\);

-- Location: LCCOMB_X4_Y12_N30
\inst2|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = (\inst2|Reg3[3]~10_combout\ & (((\inst2|Reg3[3]~9_combout\)))) # (!\inst2|Reg3[3]~10_combout\ & ((\inst2|Reg3[3]~9_combout\ & ((\inst2|Add1~10_combout\))) # (!\inst2|Reg3[3]~9_combout\ & (\inst2|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~10_combout\,
	datab => \inst2|Add0~10_combout\,
	datac => \inst2|Reg3[3]~9_combout\,
	datad => \inst2|Add1~10_combout\,
	combout => \inst2|Selector2~0_combout\);

-- Location: LCCOMB_X4_Y12_N12
\inst2|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~1_combout\ = (\inst2|Reg3[3]~10_combout\ & (((!\inst1|Q\(5) & \inst2|Selector2~0_combout\)) # (!\inst|Q\(5)))) # (!\inst2|Reg3[3]~10_combout\ & (((\inst2|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~10_combout\,
	datab => \inst1|Q\(5),
	datac => \inst|Q\(5),
	datad => \inst2|Selector2~0_combout\,
	combout => \inst2|Selector2~1_combout\);

-- Location: LCCOMB_X4_Y12_N10
\inst2|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~2_combout\ = (\inst2|Reg3[3]~7_combout\ & (((!\inst2|Reg3[3]~8_combout\ & \inst2|Selector2~1_combout\)))) # (!\inst2|Reg3[3]~7_combout\ & (((\inst2|Reg3[3]~8_combout\)) # (!\inst2|RESULT~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3[3]~7_combout\,
	datab => \inst2|RESULT~8_combout\,
	datac => \inst2|Reg3[3]~8_combout\,
	datad => \inst2|Selector2~1_combout\,
	combout => \inst2|Selector2~2_combout\);

-- Location: LCCOMB_X4_Y12_N0
\inst2|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~3_combout\ = (\inst2|Reg3[3]~8_combout\ & ((\inst1|Q\(5) & (\inst|Q\(5) & \inst2|Selector2~2_combout\)) # (!\inst1|Q\(5) & (!\inst|Q\(5) & !\inst2|Selector2~2_combout\)))) # (!\inst2|Reg3[3]~8_combout\ & (((\inst2|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(5),
	datab => \inst|Q\(5),
	datac => \inst2|Reg3[3]~8_combout\,
	datad => \inst2|Selector2~2_combout\,
	combout => \inst2|Selector2~3_combout\);

-- Location: LCCOMB_X4_Y12_N18
\inst2|Reg3[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Reg3[5]~4_combout\ = (\inst3|yfsm.s7~regout\ & (\inst2|RESULT~9_combout\)) # (!\inst3|yfsm.s7~regout\ & ((\inst2|Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst2|RESULT~9_combout\,
	datad => \inst2|Selector2~3_combout\,
	combout => \inst2|Reg3[5]~4_combout\);

-- Location: LCFF_X4_Y12_N19
\inst2|Reg3[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst2|Reg3[5]~4_combout\,
	sdata => \inst2|RESULT~8_combout\,
	sload => \inst3|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Reg3\(5));

-- Location: LCCOMB_X64_Y4_N16
\inst11|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux0~0_combout\ = (!\inst2|Reg3\(7) & (!\inst2|Reg3\(5) & (\inst2|Reg3\(6) $ (\inst2|Reg3\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3\(6),
	datab => \inst2|Reg3\(7),
	datac => \inst2|Reg3\(4),
	datad => \inst2|Reg3\(5),
	combout => \inst11|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y4_N22
\inst11|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux1~0_combout\ = (\inst2|Reg3\(6) & ((\inst2|Reg3\(7) & ((\inst2|Reg3\(5)) # (!\inst2|Reg3\(4)))) # (!\inst2|Reg3\(7) & (\inst2|Reg3\(4) $ (\inst2|Reg3\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3\(6),
	datab => \inst2|Reg3\(7),
	datac => \inst2|Reg3\(4),
	datad => \inst2|Reg3\(5),
	combout => \inst11|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y4_N0
\inst11|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux2~0_combout\ = (\inst2|Reg3\(6) & (\inst2|Reg3\(7) & ((\inst2|Reg3\(5)) # (!\inst2|Reg3\(4))))) # (!\inst2|Reg3\(6) & (!\inst2|Reg3\(7) & (!\inst2|Reg3\(4) & \inst2|Reg3\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3\(6),
	datab => \inst2|Reg3\(7),
	datac => \inst2|Reg3\(4),
	datad => \inst2|Reg3\(5),
	combout => \inst11|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y4_N14
\inst11|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux3~0_combout\ = (\inst2|Reg3\(4) & (\inst2|Reg3\(6) $ (((!\inst2|Reg3\(5)))))) # (!\inst2|Reg3\(4) & ((\inst2|Reg3\(6) & (!\inst2|Reg3\(7) & !\inst2|Reg3\(5))) # (!\inst2|Reg3\(6) & (\inst2|Reg3\(7) & \inst2|Reg3\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3\(6),
	datab => \inst2|Reg3\(7),
	datac => \inst2|Reg3\(4),
	datad => \inst2|Reg3\(5),
	combout => \inst11|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y4_N12
\inst11|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux4~0_combout\ = (\inst2|Reg3\(5) & (((!\inst2|Reg3\(7) & \inst2|Reg3\(4))))) # (!\inst2|Reg3\(5) & ((\inst2|Reg3\(6) & (!\inst2|Reg3\(7))) # (!\inst2|Reg3\(6) & ((\inst2|Reg3\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3\(6),
	datab => \inst2|Reg3\(7),
	datac => \inst2|Reg3\(4),
	datad => \inst2|Reg3\(5),
	combout => \inst11|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y4_N2
\inst11|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux5~0_combout\ = (!\inst2|Reg3\(7) & ((\inst2|Reg3\(6) & (\inst2|Reg3\(4) & \inst2|Reg3\(5))) # (!\inst2|Reg3\(6) & ((\inst2|Reg3\(4)) # (\inst2|Reg3\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3\(6),
	datab => \inst2|Reg3\(7),
	datac => \inst2|Reg3\(4),
	datad => \inst2|Reg3\(5),
	combout => \inst11|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y4_N24
\inst11|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux6~0_combout\ = (\inst2|Reg3\(5) & (((\inst2|Reg3\(7)) # (!\inst2|Reg3\(4))) # (!\inst2|Reg3\(6)))) # (!\inst2|Reg3\(5) & (\inst2|Reg3\(6) $ ((\inst2|Reg3\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg3\(6),
	datab => \inst2|Reg3\(7),
	datac => \inst2|Reg3\(4),
	datad => \inst2|Reg3\(5),
	combout => \inst11|Mux6~0_combout\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LCCOMB_X5_Y12_N16
\inst2|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_cout\ = CARRY((!\inst|Q\(0) & \inst1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(0),
	datab => \inst1|Q\(0),
	datad => VCC,
	cout => \inst2|LessThan0~1_cout\);

-- Location: LCCOMB_X5_Y12_N18
\inst2|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_cout\ = CARRY((\inst1|Q\(1) & (\inst|Q\(1) & !\inst2|LessThan0~1_cout\)) # (!\inst1|Q\(1) & ((\inst|Q\(1)) # (!\inst2|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(1),
	datab => \inst|Q\(1),
	datad => VCC,
	cin => \inst2|LessThan0~1_cout\,
	cout => \inst2|LessThan0~3_cout\);

-- Location: LCCOMB_X5_Y12_N20
\inst2|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~5_cout\ = CARRY((\inst1|Q\(2) & ((!\inst2|LessThan0~3_cout\) # (!\inst|Q\(2)))) # (!\inst1|Q\(2) & (!\inst|Q\(2) & !\inst2|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst|Q\(2),
	datad => VCC,
	cin => \inst2|LessThan0~3_cout\,
	cout => \inst2|LessThan0~5_cout\);

-- Location: LCCOMB_X5_Y12_N22
\inst2|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~7_cout\ = CARRY((\inst|Q\(3) & ((!\inst2|LessThan0~5_cout\) # (!\inst1|Q\(3)))) # (!\inst|Q\(3) & (!\inst1|Q\(3) & !\inst2|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst1|Q\(3),
	datad => VCC,
	cin => \inst2|LessThan0~5_cout\,
	cout => \inst2|LessThan0~7_cout\);

-- Location: LCCOMB_X5_Y12_N24
\inst2|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~9_cout\ = CARRY((\inst1|Q\(4) & ((!\inst2|LessThan0~7_cout\) # (!\inst|Q\(4)))) # (!\inst1|Q\(4) & (!\inst|Q\(4) & !\inst2|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(4),
	datab => \inst|Q\(4),
	datad => VCC,
	cin => \inst2|LessThan0~7_cout\,
	cout => \inst2|LessThan0~9_cout\);

-- Location: LCCOMB_X5_Y12_N26
\inst2|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~11_cout\ = CARRY((\inst|Q\(5) & ((!\inst2|LessThan0~9_cout\) # (!\inst1|Q\(5)))) # (!\inst|Q\(5) & (!\inst1|Q\(5) & !\inst2|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datab => \inst1|Q\(5),
	datad => VCC,
	cin => \inst2|LessThan0~9_cout\,
	cout => \inst2|LessThan0~11_cout\);

-- Location: LCCOMB_X5_Y12_N28
\inst2|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~13_cout\ = CARRY((\inst1|Q\(6) & ((!\inst2|LessThan0~11_cout\) # (!\inst|Q\(6)))) # (!\inst1|Q\(6) & (!\inst|Q\(6) & !\inst2|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst|Q\(6),
	datad => VCC,
	cin => \inst2|LessThan0~11_cout\,
	cout => \inst2|LessThan0~13_cout\);

-- Location: LCCOMB_X5_Y12_N30
\inst2|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~14_combout\ = (\inst|Q\(7) & (\inst2|LessThan0~13_cout\ & \inst1|Q\(7))) # (!\inst|Q\(7) & ((\inst2|LessThan0~13_cout\) # (\inst1|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(7),
	datad => \inst1|Q\(7),
	cin => \inst2|LessThan0~13_cout\,
	combout => \inst2|LessThan0~14_combout\);

-- Location: LCCOMB_X5_Y12_N8
\inst2|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector8~2_combout\ = (\inst2|Selector8~1_combout\) # ((\inst3|yfsm.s2~regout\ & \inst2|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector8~1_combout\,
	datab => \inst3|yfsm.s2~regout\,
	datad => \inst2|LessThan0~14_combout\,
	combout => \inst2|Selector8~2_combout\);

-- Location: LCFF_X5_Y12_N9
\inst2|Neg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst2|Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Neg~regout\);

-- Location: LCCOMB_X2_Y12_N16
\inst3|WideOr10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr10~combout\ = (\inst3|yfsm.s7~regout\) # ((\inst3|yfsm.s5~regout\) # ((\inst3|yfsm.s3~regout\) # (\inst3|yfsm.s8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst3|yfsm.s5~regout\,
	datac => \inst3|yfsm.s3~regout\,
	datad => \inst3|yfsm.s8~regout\,
	combout => \inst3|WideOr10~combout\);

-- Location: LCCOMB_X1_Y12_N16
\inst3|WideOr9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr9~combout\ = (\inst3|yfsm.s7~regout\) # ((\inst3|yfsm.s8~regout\) # ((\inst3|yfsm.s3~regout\) # (!\inst3|yfsm.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst3|yfsm.s8~regout\,
	datac => \inst3|yfsm.s3~regout\,
	datad => \inst3|yfsm.s0~regout\,
	combout => \inst3|WideOr9~combout\);

-- Location: LCCOMB_X2_Y12_N0
\inst3|WideOr11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr11~combout\ = ((\inst3|yfsm.s5~regout\) # ((\inst3|yfsm.s7~regout\) # (\inst3|yfsm.s6~regout\))) # (!\inst3|yfsm.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s0~regout\,
	datab => \inst3|yfsm.s5~regout\,
	datac => \inst3|yfsm.s7~regout\,
	datad => \inst3|yfsm.s6~regout\,
	combout => \inst3|WideOr11~combout\);

-- Location: LCCOMB_X1_Y11_N28
\inst7|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (!\inst3|WideOr10~combout\ & (!\inst3|WideOr9~combout\ & \inst3|WideOr11~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|WideOr10~combout\,
	datac => \inst3|WideOr9~combout\,
	datad => \inst3|WideOr11~combout\,
	combout => \inst7|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y11_N22
\inst7|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux1~0_combout\ = (\inst3|WideOr9~combout\ & (\inst3|WideOr10~combout\ $ (\inst3|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|WideOr10~combout\,
	datac => \inst3|WideOr9~combout\,
	datad => \inst3|WideOr11~combout\,
	combout => \inst7|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y11_N12
\inst7|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux3~0_combout\ = (\inst3|WideOr11~combout\ & (\inst3|WideOr10~combout\ $ (!\inst3|WideOr9~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|WideOr10~combout\,
	datac => \inst3|WideOr9~combout\,
	datad => \inst3|WideOr11~combout\,
	combout => \inst7|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y11_N14
\inst7|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux5~0_combout\ = ((!\inst3|WideOr10~combout\ & \inst3|WideOr9~combout\)) # (!\inst3|WideOr11~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|WideOr10~combout\,
	datac => \inst3|WideOr9~combout\,
	datad => \inst3|WideOr11~combout\,
	combout => \inst7|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y11_N16
\inst7|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux6~0_combout\ = (\inst3|yfsm.s4~regout\) # ((\inst3|WideOr10~combout\ & ((!\inst3|WideOr11~combout\) # (!\inst3|WideOr9~combout\))) # (!\inst3|WideOr10~combout\ & (\inst3|WideOr9~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s4~regout\,
	datab => \inst3|WideOr10~combout\,
	datac => \inst3|WideOr9~combout\,
	datad => \inst3|WideOr11~combout\,
	combout => \inst7|Mux6~0_combout\);

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\first4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_first4(1));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\first4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_first4(2));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\first4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_first4(3));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\first4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_first4(4));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\first4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_first4(5));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\first4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_first4(6));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\first4[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_first4(7));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\last4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_last4(1));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\last4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_last4(2));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\last4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_last4(3));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\last4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_last4(4));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\last4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_last4(5));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\last4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_last4(6));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\last4[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_last4(7));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(2));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(3));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(4));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(5));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(6));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|ALT_INV_Neg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(7));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(1));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(2));

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(3));

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(4));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(5));

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(6));

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(7));
END structure;


