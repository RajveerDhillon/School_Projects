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

-- DATE "06/04/2018 15:41:03"

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

ENTITY 	CombinedASU2 IS
    PORT (
	display : OUT std_logic_vector(1 TO 7);
	Cin : IN std_logic;
	X : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	neg_display : OUT std_logic_vector(1 TO 7)
	);
END CombinedASU2;

-- Design Ports Information
-- display[1]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[2]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[3]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[4]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[5]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[6]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[7]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[1]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[2]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[5]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[6]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[7]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Cin	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[0]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[1]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[3]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF CombinedASU2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_display : std_logic_vector(1 TO 7);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_neg_display : std_logic_vector(1 TO 7);
SIGNAL \inst1|Add2~0_combout\ : std_logic;
SIGNAL \inst1|Add2~5_combout\ : std_logic;
SIGNAL \inst1|Add2~8_combout\ : std_logic;
SIGNAL \inst1|neg~0_combout\ : std_logic;
SIGNAL \inst1|neg~5_combout\ : std_logic;
SIGNAL \inst1|Add3~0_combout\ : std_logic;
SIGNAL \inst1|Add2~2_cout\ : std_logic;
SIGNAL \inst1|Add2~3_combout\ : std_logic;
SIGNAL \inst1|Add2~4\ : std_logic;
SIGNAL \inst1|Add2~6_combout\ : std_logic;
SIGNAL \inst1|neg~1_combout\ : std_logic;
SIGNAL \inst1|neg~2_combout\ : std_logic;
SIGNAL \Cin~combout\ : std_logic;
SIGNAL \inst1|neg~3_combout\ : std_logic;
SIGNAL \inst1|S[1]~1_combout\ : std_logic;
SIGNAL \inst1|neg~4_combout\ : std_logic;
SIGNAL \inst1|Add2~7\ : std_logic;
SIGNAL \inst1|Add2~9_combout\ : std_logic;
SIGNAL \inst1|S[2]~0_combout\ : std_logic;
SIGNAL \inst1|Add2~11_combout\ : std_logic;
SIGNAL \inst1|Add2~10\ : std_logic;
SIGNAL \inst1|Add2~12_combout\ : std_logic;
SIGNAL \inst1|S[3]~2_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \X~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Y~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

display <= ww_display;
ww_Cin <= Cin;
ww_X <= X;
ww_Y <= Y;
neg_display <= ww_neg_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X33_Y1_N24
\inst1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~0_combout\ = \Y~combout\(0) $ (\Cin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(0),
	datac => \Cin~combout\,
	combout => \inst1|Add2~0_combout\);

-- Location: LCCOMB_X33_Y1_N10
\inst1|Add2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~5_combout\ = \Cin~combout\ $ (\Y~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~combout\,
	datac => \Y~combout\(1),
	combout => \inst1|Add2~5_combout\);

-- Location: LCCOMB_X33_Y1_N28
\inst1|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~8_combout\ = \Cin~combout\ $ (\Y~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~combout\,
	datac => \Y~combout\(2),
	combout => \inst1|Add2~8_combout\);

-- Location: LCCOMB_X33_Y1_N6
\inst1|neg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|neg~0_combout\ = (\Cin~combout\ & (\Y~combout\(3) $ (!\X~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(3),
	datac => \Cin~combout\,
	datad => \X~combout\(3),
	combout => \inst1|neg~0_combout\);

-- Location: LCCOMB_X33_Y1_N26
\inst1|neg~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|neg~5_combout\ = (\inst1|neg~0_combout\ & (\Y~combout\(2) & !\X~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|neg~0_combout\,
	datac => \Y~combout\(2),
	datad => \X~combout\(2),
	combout => \inst1|neg~5_combout\);

-- Location: LCCOMB_X32_Y1_N12
\inst1|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add3~0_combout\ = (\inst1|Add2~6_combout\) # (\inst1|Add2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~6_combout\,
	datac => \inst1|Add2~3_combout\,
	combout => \inst1|Add3~0_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[0]~I\ : cycloneii_io
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
	padio => ww_Y(0),
	combout => \Y~combout\(0));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[3]~I\ : cycloneii_io
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
	padio => ww_Y(3),
	combout => \Y~combout\(3));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[0]~I\ : cycloneii_io
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
	padio => ww_X(0),
	combout => \X~combout\(0));

-- Location: LCCOMB_X33_Y1_N12
\inst1|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~2_cout\ = CARRY(\Cin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~combout\,
	datad => VCC,
	cout => \inst1|Add2~2_cout\);

-- Location: LCCOMB_X33_Y1_N14
\inst1|Add2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~3_combout\ = (\inst1|Add2~0_combout\ & ((\X~combout\(0) & (\inst1|Add2~2_cout\ & VCC)) # (!\X~combout\(0) & (!\inst1|Add2~2_cout\)))) # (!\inst1|Add2~0_combout\ & ((\X~combout\(0) & (!\inst1|Add2~2_cout\)) # (!\X~combout\(0) & 
-- ((\inst1|Add2~2_cout\) # (GND)))))
-- \inst1|Add2~4\ = CARRY((\inst1|Add2~0_combout\ & (!\X~combout\(0) & !\inst1|Add2~2_cout\)) # (!\inst1|Add2~0_combout\ & ((!\inst1|Add2~2_cout\) # (!\X~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~0_combout\,
	datab => \X~combout\(0),
	datad => VCC,
	cin => \inst1|Add2~2_cout\,
	combout => \inst1|Add2~3_combout\,
	cout => \inst1|Add2~4\);

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[1]~I\ : cycloneii_io
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
	padio => ww_X(1),
	combout => \X~combout\(1));

-- Location: LCCOMB_X33_Y1_N16
\inst1|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~6_combout\ = ((\inst1|Add2~5_combout\ $ (\X~combout\(1) $ (!\inst1|Add2~4\)))) # (GND)
-- \inst1|Add2~7\ = CARRY((\inst1|Add2~5_combout\ & ((\X~combout\(1)) # (!\inst1|Add2~4\))) # (!\inst1|Add2~5_combout\ & (\X~combout\(1) & !\inst1|Add2~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~5_combout\,
	datab => \X~combout\(1),
	datad => VCC,
	cin => \inst1|Add2~4\,
	combout => \inst1|Add2~6_combout\,
	cout => \inst1|Add2~7\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[1]~I\ : cycloneii_io
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
	padio => ww_Y(1),
	combout => \Y~combout\(1));

-- Location: LCCOMB_X33_Y1_N0
\inst1|neg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|neg~1_combout\ = (\X~combout\(1) & (\Y~combout\(0) & (\Y~combout\(1) & !\X~combout\(0)))) # (!\X~combout\(1) & ((\Y~combout\(1)) # ((\Y~combout\(0) & !\X~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(0),
	datab => \X~combout\(1),
	datac => \Y~combout\(1),
	datad => \X~combout\(0),
	combout => \inst1|neg~1_combout\);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[2]~I\ : cycloneii_io
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
	padio => ww_Y(2),
	combout => \Y~combout\(2));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[2]~I\ : cycloneii_io
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
	padio => ww_X(2),
	combout => \X~combout\(2));

-- Location: LCCOMB_X33_Y1_N2
\inst1|neg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|neg~2_combout\ = (\inst1|neg~0_combout\ & (\inst1|neg~1_combout\ & (\Y~combout\(2) $ (!\X~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|neg~0_combout\,
	datab => \inst1|neg~1_combout\,
	datac => \Y~combout\(2),
	datad => \X~combout\(2),
	combout => \inst1|neg~2_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Cin~I\ : cycloneii_io
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
	padio => ww_Cin,
	combout => \Cin~combout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[3]~I\ : cycloneii_io
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
	padio => ww_X(3),
	combout => \X~combout\(3));

-- Location: LCCOMB_X33_Y1_N30
\inst1|neg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|neg~3_combout\ = (\inst1|neg~2_combout\) # ((\Y~combout\(3) & (\Cin~combout\ & !\X~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(3),
	datab => \inst1|neg~2_combout\,
	datac => \Cin~combout\,
	datad => \X~combout\(3),
	combout => \inst1|neg~3_combout\);

-- Location: LCCOMB_X32_Y1_N10
\inst1|S[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|S[1]~1_combout\ = \inst1|Add2~6_combout\ $ (((\inst1|Add2~3_combout\ & ((\inst1|neg~5_combout\) # (\inst1|neg~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|neg~5_combout\,
	datab => \inst1|Add2~3_combout\,
	datac => \inst1|Add2~6_combout\,
	datad => \inst1|neg~3_combout\,
	combout => \inst1|S[1]~1_combout\);

-- Location: LCCOMB_X33_Y1_N8
\inst1|neg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|neg~4_combout\ = (\inst1|neg~3_combout\) # ((\inst1|neg~0_combout\ & (\Y~combout\(2) & !\X~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|neg~0_combout\,
	datab => \inst1|neg~3_combout\,
	datac => \Y~combout\(2),
	datad => \X~combout\(2),
	combout => \inst1|neg~4_combout\);

-- Location: LCCOMB_X33_Y1_N18
\inst1|Add2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~9_combout\ = (\inst1|Add2~8_combout\ & ((\X~combout\(2) & (\inst1|Add2~7\ & VCC)) # (!\X~combout\(2) & (!\inst1|Add2~7\)))) # (!\inst1|Add2~8_combout\ & ((\X~combout\(2) & (!\inst1|Add2~7\)) # (!\X~combout\(2) & ((\inst1|Add2~7\) # (GND)))))
-- \inst1|Add2~10\ = CARRY((\inst1|Add2~8_combout\ & (!\X~combout\(2) & !\inst1|Add2~7\)) # (!\inst1|Add2~8_combout\ & ((!\inst1|Add2~7\) # (!\X~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~8_combout\,
	datab => \X~combout\(2),
	datad => VCC,
	cin => \inst1|Add2~7\,
	combout => \inst1|Add2~9_combout\,
	cout => \inst1|Add2~10\);

-- Location: LCCOMB_X32_Y1_N0
\inst1|S[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|S[2]~0_combout\ = \inst1|Add2~9_combout\ $ (((\inst1|neg~4_combout\ & ((\inst1|Add2~6_combout\) # (\inst1|Add2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~6_combout\,
	datab => \inst1|neg~4_combout\,
	datac => \inst1|Add2~3_combout\,
	datad => \inst1|Add2~9_combout\,
	combout => \inst1|S[2]~0_combout\);

-- Location: LCCOMB_X33_Y1_N4
\inst1|Add2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~11_combout\ = \Y~combout\(3) $ (\Cin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(3),
	datac => \Cin~combout\,
	combout => \inst1|Add2~11_combout\);

-- Location: LCCOMB_X33_Y1_N20
\inst1|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~12_combout\ = \inst1|Add2~11_combout\ $ (\inst1|Add2~10\ $ (!\X~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add2~11_combout\,
	datad => \X~combout\(3),
	cin => \inst1|Add2~10\,
	combout => \inst1|Add2~12_combout\);

-- Location: LCCOMB_X32_Y1_N22
\inst1|S[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|S[3]~2_combout\ = \inst1|Add2~12_combout\ $ (((\inst1|neg~4_combout\ & ((\inst1|Add3~0_combout\) # (\inst1|Add2~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~0_combout\,
	datab => \inst1|Add2~12_combout\,
	datac => \inst1|neg~4_combout\,
	datad => \inst1|Add2~9_combout\,
	combout => \inst1|S[3]~2_combout\);

-- Location: LCCOMB_X32_Y1_N24
\inst2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (!\inst1|Add2~3_combout\ & ((\inst1|S[1]~1_combout\ & (\inst1|S[2]~0_combout\)) # (!\inst1|S[1]~1_combout\ & (!\inst1|S[2]~0_combout\ & !\inst1|S[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|S[1]~1_combout\,
	datab => \inst1|S[2]~0_combout\,
	datac => \inst1|Add2~3_combout\,
	datad => \inst1|S[3]~2_combout\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y1_N18
\inst2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (!\inst1|S[1]~1_combout\ & ((\inst1|S[2]~0_combout\ & (!\inst1|Add2~3_combout\)) # (!\inst1|S[2]~0_combout\ & ((\inst1|S[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|S[1]~1_combout\,
	datab => \inst1|S[2]~0_combout\,
	datac => \inst1|Add2~3_combout\,
	datad => \inst1|S[3]~2_combout\,
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y1_N20
\inst2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst1|Add2~3_combout\ & (\inst1|S[1]~1_combout\ $ (\inst1|neg~4_combout\ $ (\inst1|Add2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|S[1]~1_combout\,
	datab => \inst1|neg~4_combout\,
	datac => \inst1|Add2~3_combout\,
	datad => \inst1|Add2~9_combout\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y1_N6
\inst2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst1|S[1]~1_combout\ & ((\inst1|S[2]~0_combout\) # ((\inst1|Add2~3_combout\)))) # (!\inst1|S[1]~1_combout\ & ((\inst1|S[2]~0_combout\ & (\inst1|Add2~3_combout\)) # (!\inst1|S[2]~0_combout\ & (!\inst1|Add2~3_combout\ & 
-- !\inst1|S[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|S[1]~1_combout\,
	datab => \inst1|S[2]~0_combout\,
	datac => \inst1|Add2~3_combout\,
	datad => \inst1|S[3]~2_combout\,
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y1_N8
\inst2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst1|S[1]~1_combout\ & (((\inst1|Add2~3_combout\)))) # (!\inst1|S[1]~1_combout\ & ((\inst1|S[2]~0_combout\) # ((\inst1|S[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|S[1]~1_combout\,
	datab => \inst1|S[2]~0_combout\,
	datac => \inst1|Add2~3_combout\,
	datad => \inst1|S[3]~2_combout\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y1_N2
\inst2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst1|S[1]~1_combout\ & (!\inst1|S[2]~0_combout\)) # (!\inst1|S[1]~1_combout\ & (\inst1|Add2~3_combout\ & ((\inst1|S[2]~0_combout\) # (!\inst1|S[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|S[1]~1_combout\,
	datab => \inst1|S[2]~0_combout\,
	datac => \inst1|Add2~3_combout\,
	datad => \inst1|S[3]~2_combout\,
	combout => \inst2|Mux6~0_combout\);

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[1]~I\ : cycloneii_io
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
	padio => ww_display(1));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[2]~I\ : cycloneii_io
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
	datain => \inst2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(2));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[3]~I\ : cycloneii_io
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
	datain => \inst2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(3));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[4]~I\ : cycloneii_io
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
	datain => \inst2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(4));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[5]~I\ : cycloneii_io
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
	datain => \inst2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(5));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[6]~I\ : cycloneii_io
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
	datain => \inst2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(6));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[7]~I\ : cycloneii_io
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
	datain => \inst2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(7));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[1]~I\ : cycloneii_io
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
	padio => ww_neg_display(1));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[2]~I\ : cycloneii_io
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
	padio => ww_neg_display(2));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[3]~I\ : cycloneii_io
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
	padio => ww_neg_display(3));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[4]~I\ : cycloneii_io
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
	padio => ww_neg_display(4));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[5]~I\ : cycloneii_io
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
	padio => ww_neg_display(5));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[6]~I\ : cycloneii_io
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
	padio => ww_neg_display(6));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[7]~I\ : cycloneii_io
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
	padio => ww_neg_display(7));
END structure;


