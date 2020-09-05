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

-- DATE "06/04/2018 15:07:59"

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

ENTITY 	CombinedASU1 IS
    PORT (
	Cout : OUT std_logic;
	Cin : IN std_logic;
	X : IN std_logic_vector(3 DOWNTO 0);
	y : IN std_logic_vector(3 DOWNTO 0);
	display : OUT std_logic_vector(1 TO 7);
	neg_display : OUT std_logic_vector(1 TO 7)
	);
END CombinedASU1;

-- Design Ports Information
-- Cout	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- y[3]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[3]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[2]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[1]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[0]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Cin	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF CombinedASU1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_display : std_logic_vector(1 TO 7);
SIGNAL ww_neg_display : std_logic_vector(1 TO 7);
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|neg~0_combout\ : std_logic;
SIGNAL \inst|neg~1_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \Cin~combout\ : std_logic;
SIGNAL \inst|Add0~1_cout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add0~15_combout\ : std_logic;
SIGNAL \inst|neg~2_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|S[3]~2_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Add0~13_combout\ : std_logic;
SIGNAL \inst|S[1]~0_combout\ : std_logic;
SIGNAL \inst|S[2]~1_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \y~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \X~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

Cout <= ww_Cout;
ww_Cin <= Cin;
ww_X <= X;
ww_y <= y;
display <= ww_display;
neg_display <= ww_neg_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst1|ALT_INV_Mux6~0_combout\ <= NOT \inst1|Mux6~0_combout\;

-- Location: LCCOMB_X33_Y3_N2
\inst|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\X~combout\(1) & ((\y~combout\(1) & (!\inst|Add2~1\)) # (!\y~combout\(1) & (\inst|Add2~1\ & VCC)))) # (!\X~combout\(1) & ((\y~combout\(1) & ((\inst|Add2~1\) # (GND))) # (!\y~combout\(1) & (!\inst|Add2~1\))))
-- \inst|Add2~3\ = CARRY((\X~combout\(1) & (\y~combout\(1) & !\inst|Add2~1\)) # (!\X~combout\(1) & ((\y~combout\(1)) # (!\inst|Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(1),
	datab => \y~combout\(1),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X33_Y3_N6
\inst|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\y~combout\(3) & ((\X~combout\(3) & (!\inst|Add2~5\)) # (!\X~combout\(3) & ((\inst|Add2~5\) # (GND))))) # (!\y~combout\(3) & ((\X~combout\(3) & (\inst|Add2~5\ & VCC)) # (!\X~combout\(3) & (!\inst|Add2~5\))))
-- \inst|Add2~7\ = CARRY((\y~combout\(3) & ((!\inst|Add2~5\) # (!\X~combout\(3)))) # (!\y~combout\(3) & (!\X~combout\(3) & !\inst|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(3),
	datab => \X~combout\(3),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X33_Y3_N16
\inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\y~combout\(0) & ((\X~combout\(0) & (\inst|Add0~1_cout\ & VCC)) # (!\X~combout\(0) & (!\inst|Add0~1_cout\)))) # (!\y~combout\(0) & ((\X~combout\(0) & (!\inst|Add0~1_cout\)) # (!\X~combout\(0) & ((\inst|Add0~1_cout\) # (GND)))))
-- \inst|Add0~3\ = CARRY((\y~combout\(0) & (!\X~combout\(0) & !\inst|Add0~1_cout\)) # (!\y~combout\(0) & ((!\inst|Add0~1_cout\) # (!\X~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(0),
	datab => \X~combout\(0),
	datad => VCC,
	cin => \inst|Add0~1_cout\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X33_Y3_N18
\inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = ((\X~combout\(1) $ (\y~combout\(1) $ (!\inst|Add0~3\)))) # (GND)
-- \inst|Add0~5\ = CARRY((\X~combout\(1) & ((\y~combout\(1)) # (!\inst|Add0~3\))) # (!\X~combout\(1) & (\y~combout\(1) & !\inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(1),
	datab => \y~combout\(1),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X32_Y3_N10
\inst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\Cin~combout\ & (\inst|Add2~2_combout\)) # (!\Cin~combout\ & ((\inst|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~2_combout\,
	datab => \inst|Add0~4_combout\,
	datad => \Cin~combout\,
	combout => \inst|Add0~14_combout\);

-- Location: LCCOMB_X33_Y3_N12
\inst|neg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|neg~0_combout\ = (\X~combout\(1) & (\y~combout\(1) & (\y~combout\(0) & !\X~combout\(0)))) # (!\X~combout\(1) & ((\y~combout\(1)) # ((\y~combout\(0) & !\X~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(1),
	datab => \y~combout\(1),
	datac => \y~combout\(0),
	datad => \X~combout\(0),
	combout => \inst|neg~0_combout\);

-- Location: LCCOMB_X33_Y3_N10
\inst|neg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|neg~1_combout\ = (\y~combout\(2) & ((\inst|neg~0_combout\) # (!\X~combout\(2)))) # (!\y~combout\(2) & (!\X~combout\(2) & \inst|neg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(2),
	datab => \X~combout\(2),
	datad => \inst|neg~0_combout\,
	combout => \inst|neg~1_combout\);

-- Location: LCCOMB_X32_Y3_N2
\inst|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = (\inst|Add0~13_combout\) # ((\Cin~combout\ & (\inst|Add2~2_combout\)) # (!\Cin~combout\ & ((\inst|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~2_combout\,
	datab => \inst|Add0~4_combout\,
	datac => \Cin~combout\,
	datad => \inst|Add0~13_combout\,
	combout => \inst|Add3~0_combout\);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[2]~I\ : cycloneii_io
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
	padio => ww_y(2),
	combout => \y~combout\(2));

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

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[0]~I\ : cycloneii_io
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
	padio => ww_y(0),
	combout => \y~combout\(0));

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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[1]~I\ : cycloneii_io
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
	padio => ww_y(1),
	combout => \y~combout\(1));

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

-- Location: LCCOMB_X33_Y3_N14
\inst|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~1_cout\ = CARRY(\Cin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~combout\,
	datad => VCC,
	cout => \inst|Add0~1_cout\);

-- Location: LCCOMB_X33_Y3_N20
\inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\y~combout\(2) & ((\X~combout\(2) & (\inst|Add0~5\ & VCC)) # (!\X~combout\(2) & (!\inst|Add0~5\)))) # (!\y~combout\(2) & ((\X~combout\(2) & (!\inst|Add0~5\)) # (!\X~combout\(2) & ((\inst|Add0~5\) # (GND)))))
-- \inst|Add0~7\ = CARRY((\y~combout\(2) & (!\X~combout\(2) & !\inst|Add0~5\)) # (!\y~combout\(2) & ((!\inst|Add0~5\) # (!\X~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(2),
	datab => \X~combout\(2),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X33_Y3_N22
\inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = ((\y~combout\(3) $ (\X~combout\(3) $ (!\inst|Add0~7\)))) # (GND)
-- \inst|Add0~9\ = CARRY((\y~combout\(3) & ((\X~combout\(3)) # (!\inst|Add0~7\))) # (!\y~combout\(3) & (\X~combout\(3) & !\inst|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(3),
	datab => \X~combout\(3),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X33_Y3_N24
\inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = \inst|Add0~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\);

-- Location: LCCOMB_X33_Y3_N0
\inst|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\y~combout\(0) & (\X~combout\(0) $ (VCC))) # (!\y~combout\(0) & ((\X~combout\(0)) # (GND)))
-- \inst|Add2~1\ = CARRY((\X~combout\(0)) # (!\y~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(0),
	datab => \X~combout\(0),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X33_Y3_N4
\inst|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = ((\y~combout\(2) $ (\X~combout\(2) $ (\inst|Add2~3\)))) # (GND)
-- \inst|Add2~5\ = CARRY((\y~combout\(2) & (\X~combout\(2) & !\inst|Add2~3\)) # (!\y~combout\(2) & ((\X~combout\(2)) # (!\inst|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(2),
	datab => \X~combout\(2),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X33_Y3_N8
\inst|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = \inst|Add2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\);

-- Location: LCCOMB_X33_Y3_N26
\inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\Cin~combout\ & ((\inst|Add2~8_combout\))) # (!\Cin~combout\ & (\inst|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~10_combout\,
	datac => \inst|Add2~8_combout\,
	datad => \Cin~combout\,
	combout => \inst|Add0~12_combout\);

-- Location: LCCOMB_X32_Y3_N30
\inst|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~15_combout\ = (\Cin~combout\ & ((\inst|Add2~4_combout\))) # (!\Cin~combout\ & (\inst|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~6_combout\,
	datac => \inst|Add2~4_combout\,
	datad => \Cin~combout\,
	combout => \inst|Add0~15_combout\);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[3]~I\ : cycloneii_io
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
	padio => ww_y(3),
	combout => \y~combout\(3));

-- Location: LCCOMB_X33_Y3_N28
\inst|neg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|neg~2_combout\ = (\Cin~combout\ & ((\inst|neg~1_combout\ & ((\y~combout\(3)) # (!\X~combout\(3)))) # (!\inst|neg~1_combout\ & (!\X~combout\(3) & \y~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|neg~1_combout\,
	datab => \Cin~combout\,
	datac => \X~combout\(3),
	datad => \y~combout\(3),
	combout => \inst|neg~2_combout\);

-- Location: LCCOMB_X33_Y3_N30
\inst|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\Cin~combout\ & (\inst|Add2~6_combout\)) # (!\Cin~combout\ & ((\inst|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~6_combout\,
	datab => \inst|Add0~8_combout\,
	datad => \Cin~combout\,
	combout => \inst|Add0~16_combout\);

-- Location: LCCOMB_X32_Y3_N12
\inst|S[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|S[3]~2_combout\ = \inst|Add0~16_combout\ $ (((\inst|neg~2_combout\ & ((\inst|Add3~0_combout\) # (\inst|Add0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datab => \inst|Add0~15_combout\,
	datac => \inst|neg~2_combout\,
	datad => \inst|Add0~16_combout\,
	combout => \inst|S[3]~2_combout\);

-- Location: LCCOMB_X32_Y3_N0
\inst|Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~13_combout\ = (\Cin~combout\ & ((\inst|Add2~0_combout\))) # (!\Cin~combout\ & (\inst|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datac => \inst|Add2~0_combout\,
	datad => \Cin~combout\,
	combout => \inst|Add0~13_combout\);

-- Location: LCCOMB_X32_Y3_N28
\inst|S[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|S[1]~0_combout\ = \inst|Add0~14_combout\ $ (((\inst|Add0~13_combout\ & \inst|neg~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~14_combout\,
	datab => \inst|Add0~13_combout\,
	datac => \inst|neg~2_combout\,
	combout => \inst|S[1]~0_combout\);

-- Location: LCCOMB_X32_Y3_N24
\inst|S[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|S[2]~1_combout\ = \inst|Add0~15_combout\ $ (((\inst|neg~2_combout\ & ((\inst|Add0~14_combout\) # (\inst|Add0~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~14_combout\,
	datab => \inst|Add0~15_combout\,
	datac => \inst|neg~2_combout\,
	datad => \inst|Add0~13_combout\,
	combout => \inst|S[2]~1_combout\);

-- Location: LCCOMB_X32_Y3_N6
\inst1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst|S[3]~2_combout\ & (\inst|Add0~13_combout\ & (\inst|S[1]~0_combout\ $ (\inst|S[2]~1_combout\)))) # (!\inst|S[3]~2_combout\ & (!\inst|S[1]~0_combout\ & (\inst|S[2]~1_combout\ $ (\inst|Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[3]~2_combout\,
	datab => \inst|S[1]~0_combout\,
	datac => \inst|S[2]~1_combout\,
	datad => \inst|Add0~13_combout\,
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y3_N8
\inst1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\inst|S[3]~2_combout\ & ((\inst|Add0~13_combout\ & (\inst|S[1]~0_combout\)) # (!\inst|Add0~13_combout\ & ((\inst|S[2]~1_combout\))))) # (!\inst|S[3]~2_combout\ & (\inst|S[2]~1_combout\ & (\inst|S[1]~0_combout\ $ 
-- (\inst|Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[3]~2_combout\,
	datab => \inst|S[1]~0_combout\,
	datac => \inst|S[2]~1_combout\,
	datad => \inst|Add0~13_combout\,
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y3_N26
\inst1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\inst|S[3]~2_combout\ & (\inst|S[2]~1_combout\ & ((\inst|S[1]~0_combout\) # (!\inst|Add0~13_combout\)))) # (!\inst|S[3]~2_combout\ & (\inst|S[1]~0_combout\ & (!\inst|S[2]~1_combout\ & !\inst|Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[3]~2_combout\,
	datab => \inst|S[1]~0_combout\,
	datac => \inst|S[2]~1_combout\,
	datad => \inst|Add0~13_combout\,
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y3_N20
\inst1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\inst|S[1]~0_combout\ & ((\inst|S[2]~1_combout\ & ((\inst|Add0~13_combout\))) # (!\inst|S[2]~1_combout\ & (\inst|S[3]~2_combout\ & !\inst|Add0~13_combout\)))) # (!\inst|S[1]~0_combout\ & (!\inst|S[3]~2_combout\ & 
-- (\inst|S[2]~1_combout\ $ (\inst|Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[3]~2_combout\,
	datab => \inst|S[1]~0_combout\,
	datac => \inst|S[2]~1_combout\,
	datad => \inst|Add0~13_combout\,
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y3_N22
\inst1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\inst|S[1]~0_combout\ & (!\inst|S[3]~2_combout\ & ((\inst|Add0~13_combout\)))) # (!\inst|S[1]~0_combout\ & ((\inst|S[2]~1_combout\ & (!\inst|S[3]~2_combout\)) # (!\inst|S[2]~1_combout\ & ((\inst|Add0~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[3]~2_combout\,
	datab => \inst|S[1]~0_combout\,
	datac => \inst|S[2]~1_combout\,
	datad => \inst|Add0~13_combout\,
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y3_N16
\inst1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (\inst|S[1]~0_combout\ & (!\inst|S[3]~2_combout\ & ((\inst|Add0~13_combout\) # (!\inst|S[2]~1_combout\)))) # (!\inst|S[1]~0_combout\ & (\inst|Add0~13_combout\ & (\inst|S[3]~2_combout\ $ (!\inst|S[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[3]~2_combout\,
	datab => \inst|S[1]~0_combout\,
	datac => \inst|S[2]~1_combout\,
	datad => \inst|Add0~13_combout\,
	combout => \inst1|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y3_N18
\inst1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (\inst|Add0~13_combout\ & ((\inst|S[3]~2_combout\) # (\inst|S[1]~0_combout\ $ (\inst|S[2]~1_combout\)))) # (!\inst|Add0~13_combout\ & ((\inst|S[1]~0_combout\) # (\inst|S[3]~2_combout\ $ (\inst|S[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[3]~2_combout\,
	datab => \inst|S[1]~0_combout\,
	datac => \inst|S[2]~1_combout\,
	datad => \inst|Add0~13_combout\,
	combout => \inst1|Mux6~0_combout\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Cout);

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
	datain => \inst1|Mux0~0_combout\,
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
	datain => \inst1|Mux1~0_combout\,
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
	datain => \inst1|Mux2~0_combout\,
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
	datain => \inst1|Mux3~0_combout\,
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
	datain => \inst1|Mux4~0_combout\,
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
	datain => \inst1|Mux5~0_combout\,
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
	datain => \inst1|ALT_INV_Mux6~0_combout\,
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
	datain => \inst|neg~2_combout\,
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
	datain => \inst|neg~2_combout\,
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
	datain => \inst|neg~2_combout\,
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
	datain => \inst|neg~2_combout\,
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
	datain => \inst|neg~2_combout\,
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
	datain => \inst|neg~2_combout\,
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


