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

-- DATE "06/04/2018 14:47:03"

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

ENTITY 	ALU IS
    PORT (
	Cin : IN std_logic;
	X : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	S : OUT std_logic_vector(3 DOWNTO 0);
	Cout : OUT std_logic;
	neg : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- S[0]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[1]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[3]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Cout	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Cin	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[1]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[3]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[2]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_Cin : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_neg : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Cin~combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \X~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Y~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_Cin <= Cin;
ww_X <= X;
ww_Y <= Y;
S <= ww_S;
Cout <= ww_Cout;
neg <= ww_neg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X64_Y16_N22
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Y~combout\(1) & ((\X~combout\(1) & (!\Add2~1\)) # (!\X~combout\(1) & ((\Add2~1\) # (GND))))) # (!\Y~combout\(1) & ((\X~combout\(1) & (\Add2~1\ & VCC)) # (!\X~combout\(1) & (!\Add2~1\))))
-- \Add2~3\ = CARRY((\Y~combout\(1) & ((!\Add2~1\) # (!\X~combout\(1)))) # (!\Y~combout\(1) & (!\X~combout\(1) & !\Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(1),
	datab => \X~combout\(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X64_Y16_N10
\Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = ((\X~combout\(3) $ (\Y~combout\(3) $ (!\Add0~9\)))) # (GND)
-- \Add0~12\ = CARRY((\X~combout\(3) & ((\Y~combout\(3)) # (!\Add0~9\))) # (!\X~combout\(3) & (\Y~combout\(3) & !\Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(3),
	datab => \Y~combout\(3),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X64_Y16_N0
\process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\X~combout\(1) & (!\X~combout\(0) & (\Y~combout\(0) & \Y~combout\(1)))) # (!\X~combout\(1) & ((\Y~combout\(1)) # ((!\X~combout\(0) & \Y~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(0),
	datab => \Y~combout\(0),
	datac => \X~combout\(1),
	datad => \Y~combout\(1),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X64_Y16_N14
\process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\process_0~0_combout\ & ((\Y~combout\(2)) # (!\X~combout\(2)))) # (!\process_0~0_combout\ & (\Y~combout\(2) & !\X~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~0_combout\,
	datac => \Y~combout\(2),
	datad => \X~combout\(2),
	combout => \process_0~1_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y16_N20
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\X~combout\(0) & ((GND) # (!\Y~combout\(0)))) # (!\X~combout\(0) & (\Y~combout\(0) $ (GND)))
-- \Add2~1\ = CARRY((\X~combout\(0)) # (!\Y~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(0),
	datab => \Y~combout\(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X64_Y16_N2
\Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(\Cin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~combout\,
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X64_Y16_N4
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\X~combout\(0) & ((\Y~combout\(0) & (\Add0~1_cout\ & VCC)) # (!\Y~combout\(0) & (!\Add0~1_cout\)))) # (!\X~combout\(0) & ((\Y~combout\(0) & (!\Add0~1_cout\)) # (!\Y~combout\(0) & ((\Add0~1_cout\) # (GND)))))
-- \Add0~3\ = CARRY((\X~combout\(0) & (!\Y~combout\(0) & !\Add0~1_cout\)) # (!\X~combout\(0) & ((!\Add0~1_cout\) # (!\Y~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(0),
	datab => \Y~combout\(0),
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y15_N16
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\Cin~combout\ & (\Add2~0_combout\)) # (!\Cin~combout\ & ((\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~0_combout\,
	datac => \Add0~2_combout\,
	datad => \Cin~combout\,
	combout => \Add0~4_combout\);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y16_N6
\Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = ((\Y~combout\(1) $ (\X~combout\(1) $ (!\Add0~3\)))) # (GND)
-- \Add0~6\ = CARRY((\Y~combout\(1) & ((\X~combout\(1)) # (!\Add0~3\))) # (!\Y~combout\(1) & (\X~combout\(1) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(1),
	datab => \X~combout\(1),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X64_Y15_N26
\Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\Cin~combout\ & (\Add2~2_combout\)) # (!\Cin~combout\ & ((\Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add0~5_combout\,
	datad => \Cin~combout\,
	combout => \Add0~7_combout\);

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y16_N16
\process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\Cin~combout\ & ((\process_0~1_combout\ & ((\Y~combout\(3)) # (!\X~combout\(3)))) # (!\process_0~1_combout\ & (!\X~combout\(3) & \Y~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \X~combout\(3),
	datac => \Cin~combout\,
	datad => \Y~combout\(3),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X64_Y15_N20
\S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \Add0~7_combout\ $ (((\Add0~4_combout\ & \process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~7_combout\,
	datac => \process_0~2_combout\,
	combout => \S~0_combout\);

-- Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y16_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\X~combout\(2) & ((\Y~combout\(2) & (\Add0~6\ & VCC)) # (!\Y~combout\(2) & (!\Add0~6\)))) # (!\X~combout\(2) & ((\Y~combout\(2) & (!\Add0~6\)) # (!\Y~combout\(2) & ((\Add0~6\) # (GND)))))
-- \Add0~9\ = CARRY((\X~combout\(2) & (!\Y~combout\(2) & !\Add0~6\)) # (!\X~combout\(2) & ((!\Add0~6\) # (!\Y~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(2),
	datab => \Y~combout\(2),
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X64_Y16_N24
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\X~combout\(2) $ (\Y~combout\(2) $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\X~combout\(2) & ((!\Add2~3\) # (!\Y~combout\(2)))) # (!\X~combout\(2) & (!\Y~combout\(2) & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(2),
	datab => \Y~combout\(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X64_Y15_N6
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Cin~combout\ & ((\Add2~4_combout\))) # (!\Cin~combout\ & (\Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datac => \Add2~4_combout\,
	datad => \Cin~combout\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X64_Y15_N0
\S~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = \Add0~10_combout\ $ (((\process_0~2_combout\ & ((\Add0~4_combout\) # (\Add0~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~7_combout\,
	datac => \process_0~2_combout\,
	datad => \Add0~10_combout\,
	combout => \S~1_combout\);

-- Location: LCCOMB_X64_Y15_N2
\Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\Add0~4_combout\) # ((\Cin~combout\ & (\Add2~2_combout\)) # (!\Cin~combout\ & ((\Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add0~5_combout\,
	datac => \Add0~4_combout\,
	datad => \Cin~combout\,
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X64_Y16_N26
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\X~combout\(3) & ((\Y~combout\(3) & (!\Add2~5\)) # (!\Y~combout\(3) & (\Add2~5\ & VCC)))) # (!\X~combout\(3) & ((\Y~combout\(3) & ((\Add2~5\) # (GND))) # (!\Y~combout\(3) & (!\Add2~5\))))
-- \Add2~7\ = CARRY((\X~combout\(3) & (\Y~combout\(3) & !\Add2~5\)) # (!\X~combout\(3) & ((\Y~combout\(3)) # (!\Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(3),
	datab => \Y~combout\(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X64_Y16_N18
\Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Cin~combout\ & ((\Add2~6_combout\))) # (!\Cin~combout\ & (\Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datac => \Cin~combout\,
	datad => \Add2~6_combout\,
	combout => \Add0~13_combout\);

-- Location: LCCOMB_X64_Y15_N28
\S~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = \Add0~13_combout\ $ (((\process_0~2_combout\ & ((\Add3~0_combout\) # (\Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => \Add3~0_combout\,
	datac => \Add0~13_combout\,
	datad => \Add0~10_combout\,
	combout => \S~2_combout\);

-- Location: LCCOMB_X64_Y16_N12
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~12\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~12\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X64_Y16_N28
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = \Add2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add2~7\,
	combout => \Add2~8_combout\);

-- Location: LCCOMB_X64_Y16_N30
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\Cin~combout\ & ((\Add2~8_combout\))) # (!\Cin~combout\ & (\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datac => \Cin~combout\,
	datad => \Add2~8_combout\,
	combout => \Add0~16_combout\);

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[0]~I\ : cycloneii_io
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
	datain => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(0));

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[1]~I\ : cycloneii_io
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
	datain => \S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[2]~I\ : cycloneii_io
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
	datain => \S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(2));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[3]~I\ : cycloneii_io
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
	datain => \S~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(3));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Cout~I\ : cycloneii_io
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
	datain => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Cout);

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg~I\ : cycloneii_io
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
	datain => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_neg);
END structure;


