-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.2 Build 209 09/17/2014 SJ Full Version"

-- DATE "03/27/2019 14:52:35"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	control IS
    PORT (
	clk : IN std_logic;
	mclk : IN std_logic;
	enable : IN std_logic;
	statusC : IN std_logic;
	statusZ : IN std_logic;
	INST : IN std_logic_vector(31 DOWNTO 0);
	PC_Mux : BUFFER std_logic;
	IM_MUX1 : BUFFER std_logic;
	REG_Mux : BUFFER std_logic;
	IM_MUX2 : BUFFER std_logic_vector(1 DOWNTO 0);
	DATA_Mux : BUFFER std_logic_vector(1 DOWNTO 0);
	ALU_op : BUFFER std_logic_vector(2 DOWNTO 0);
	inc_PC : BUFFER std_logic;
	ld_PC : BUFFER std_logic;
	clr_IR : BUFFER std_logic;
	ld_IR : BUFFER std_logic;
	clr_A : BUFFER std_logic;
	clr_B : BUFFER std_logic;
	clr_C : BUFFER std_logic;
	clr_Z : BUFFER std_logic;
	ld_A : BUFFER std_logic;
	ld_B : BUFFER std_logic;
	ld_C : BUFFER std_logic;
	ld_Z : BUFFER std_logic;
	T : BUFFER std_logic_vector(2 DOWNTO 0);
	wen : BUFFER std_logic;
	en : BUFFER std_logic
	);
END control;

-- Design Ports Information
-- INST[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[1]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[7]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[8]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[9]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[10]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[11]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[12]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[13]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[14]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[15]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[16]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[17]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[18]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[19]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[20]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[21]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[22]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[23]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Mux	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IM_MUX1	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_Mux	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IM_MUX2[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IM_MUX2[1]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_Mux[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_Mux[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_op[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_op[1]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_op[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inc_PC	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_PC	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_IR	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_IR	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_A	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_B	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_C	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_Z	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_A	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_B	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_C	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_Z	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[1]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wen	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[25]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[27]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[26]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[24]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[31]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[30]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[29]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[28]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- statusZ	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- statusC	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mclk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_mclk : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_statusC : std_logic;
SIGNAL ww_statusZ : std_logic;
SIGNAL ww_INST : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_PC_Mux : std_logic;
SIGNAL ww_IM_MUX1 : std_logic;
SIGNAL ww_REG_Mux : std_logic;
SIGNAL ww_IM_MUX2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DATA_Mux : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ALU_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_inc_PC : std_logic;
SIGNAL ww_ld_PC : std_logic;
SIGNAL ww_clr_IR : std_logic;
SIGNAL ww_ld_IR : std_logic;
SIGNAL ww_clr_A : std_logic;
SIGNAL ww_clr_B : std_logic;
SIGNAL ww_clr_C : std_logic;
SIGNAL ww_clr_Z : std_logic;
SIGNAL ww_ld_A : std_logic;
SIGNAL ww_ld_B : std_logic;
SIGNAL ww_ld_C : std_logic;
SIGNAL ww_ld_Z : std_logic;
SIGNAL ww_T : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_wen : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL \enable~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PC_Mux~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ld_C~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector7~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST[0]~input_o\ : std_logic;
SIGNAL \INST[1]~input_o\ : std_logic;
SIGNAL \INST[2]~input_o\ : std_logic;
SIGNAL \INST[3]~input_o\ : std_logic;
SIGNAL \INST[4]~input_o\ : std_logic;
SIGNAL \INST[5]~input_o\ : std_logic;
SIGNAL \INST[6]~input_o\ : std_logic;
SIGNAL \INST[7]~input_o\ : std_logic;
SIGNAL \INST[8]~input_o\ : std_logic;
SIGNAL \INST[9]~input_o\ : std_logic;
SIGNAL \INST[10]~input_o\ : std_logic;
SIGNAL \INST[11]~input_o\ : std_logic;
SIGNAL \INST[12]~input_o\ : std_logic;
SIGNAL \INST[13]~input_o\ : std_logic;
SIGNAL \INST[14]~input_o\ : std_logic;
SIGNAL \INST[15]~input_o\ : std_logic;
SIGNAL \INST[16]~input_o\ : std_logic;
SIGNAL \INST[17]~input_o\ : std_logic;
SIGNAL \INST[18]~input_o\ : std_logic;
SIGNAL \INST[19]~input_o\ : std_logic;
SIGNAL \INST[20]~input_o\ : std_logic;
SIGNAL \INST[21]~input_o\ : std_logic;
SIGNAL \INST[22]~input_o\ : std_logic;
SIGNAL \INST[23]~input_o\ : std_logic;
SIGNAL \PC_Mux~output_o\ : std_logic;
SIGNAL \IM_MUX1~output_o\ : std_logic;
SIGNAL \REG_Mux~output_o\ : std_logic;
SIGNAL \IM_MUX2[0]~output_o\ : std_logic;
SIGNAL \IM_MUX2[1]~output_o\ : std_logic;
SIGNAL \DATA_Mux[0]~output_o\ : std_logic;
SIGNAL \DATA_Mux[1]~output_o\ : std_logic;
SIGNAL \ALU_op[0]~output_o\ : std_logic;
SIGNAL \ALU_op[1]~output_o\ : std_logic;
SIGNAL \ALU_op[2]~output_o\ : std_logic;
SIGNAL \inc_PC~output_o\ : std_logic;
SIGNAL \ld_PC~output_o\ : std_logic;
SIGNAL \clr_IR~output_o\ : std_logic;
SIGNAL \ld_IR~output_o\ : std_logic;
SIGNAL \clr_A~output_o\ : std_logic;
SIGNAL \clr_B~output_o\ : std_logic;
SIGNAL \clr_C~output_o\ : std_logic;
SIGNAL \clr_Z~output_o\ : std_logic;
SIGNAL \ld_A~output_o\ : std_logic;
SIGNAL \ld_B~output_o\ : std_logic;
SIGNAL \ld_C~output_o\ : std_logic;
SIGNAL \ld_Z~output_o\ : std_logic;
SIGNAL \T[0]~output_o\ : std_logic;
SIGNAL \T[1]~output_o\ : std_logic;
SIGNAL \T[2]~output_o\ : std_logic;
SIGNAL \wen~output_o\ : std_logic;
SIGNAL \en~output_o\ : std_logic;
SIGNAL \INST[31]~input_o\ : std_logic;
SIGNAL \INST[29]~input_o\ : std_logic;
SIGNAL \INST[28]~input_o\ : std_logic;
SIGNAL \INST[30]~input_o\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \present_state.state_0~0_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \enable~inputclkctrl_outclk\ : std_logic;
SIGNAL \present_state.state_0~q\ : std_logic;
SIGNAL \present_state.state_1~0_combout\ : std_logic;
SIGNAL \present_state.state_1~q\ : std_logic;
SIGNAL \present_state.state_2~q\ : std_logic;
SIGNAL \PC_Mux~6_combout\ : std_logic;
SIGNAL \INST[26]~input_o\ : std_logic;
SIGNAL \INST[27]~input_o\ : std_logic;
SIGNAL \INST[25]~input_o\ : std_logic;
SIGNAL \INST[24]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \PC_Mux~2_combout\ : std_logic;
SIGNAL \PC_Mux~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \statusZ~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \statusC~input_o\ : std_logic;
SIGNAL \ld_C~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \PC_Mux~4_combout\ : std_logic;
SIGNAL \PC_Mux~5_combout\ : std_logic;
SIGNAL \PC_Mux~5clkctrl_outclk\ : std_logic;
SIGNAL \PC_Mux$latch~combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \IM_MUX1~1_combout\ : std_logic;
SIGNAL \IM_MUX1$latch~combout\ : std_logic;
SIGNAL \Selector6~4_combout\ : std_logic;
SIGNAL \Selector6~9_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~0clkctrl_outclk\ : std_logic;
SIGNAL \REG_Mux$latch~combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \IM_MUX2[0]~0_combout\ : std_logic;
SIGNAL \IM_MUX2[0]$latch~combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \IM_MUX2[1]~1_combout\ : std_logic;
SIGNAL \IM_MUX2[1]$latch~combout\ : std_logic;
SIGNAL \DATA_Mux~0_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \DATA_Mux[0]$latch~combout\ : std_logic;
SIGNAL \Selector0~9_combout\ : std_logic;
SIGNAL \Selector0~10_combout\ : std_logic;
SIGNAL \DATA_Mux[1]$latch~0_combout\ : std_logic;
SIGNAL \DATA_Mux[1]$latch~combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \ALU_op[0]~0_combout\ : std_logic;
SIGNAL \ALU_op[0]$latch~combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \ALU_op[1]~1_combout\ : std_logic;
SIGNAL \ALU_op[1]$latch~0_combout\ : std_logic;
SIGNAL \ALU_op[1]$latch~combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \ALU_op[2]~2_combout\ : std_logic;
SIGNAL \ALU_op[2]$latch~combout\ : std_logic;
SIGNAL \IM_MUX1~0_combout\ : std_logic;
SIGNAL \inc_PC~3_combout\ : std_logic;
SIGNAL \inc_PC~4_combout\ : std_logic;
SIGNAL \inc_PC~2_combout\ : std_logic;
SIGNAL \ld_PC~2_combout\ : std_logic;
SIGNAL \ld_PC~3_combout\ : std_logic;
SIGNAL \ld_PC~5_combout\ : std_logic;
SIGNAL \ld_PC~4_combout\ : std_logic;
SIGNAL \Selector4~4_combout\ : std_logic;
SIGNAL \Selector4~12_combout\ : std_logic;
SIGNAL \Selector4~9_combout\ : std_logic;
SIGNAL \Selector4~10_combout\ : std_logic;
SIGNAL \Selector4~11_combout\ : std_logic;
SIGNAL \ld_IR$latch~combout\ : std_logic;
SIGNAL \clr_A~0_combout\ : std_logic;
SIGNAL \clr_A$latch~combout\ : std_logic;
SIGNAL \clr_B~0_combout\ : std_logic;
SIGNAL \clr_B~1_combout\ : std_logic;
SIGNAL \clr_B$latch~0_combout\ : std_logic;
SIGNAL \clr_B$latch~combout\ : std_logic;
SIGNAL \clr_C~0_combout\ : std_logic;
SIGNAL \clr_C$latch~combout\ : std_logic;
SIGNAL \clr_Z~0_combout\ : std_logic;
SIGNAL \clr_Z~1_combout\ : std_logic;
SIGNAL \clr_Z$latch~combout\ : std_logic;
SIGNAL \Selector0~12_combout\ : std_logic;
SIGNAL \Selector0~11_combout\ : std_logic;
SIGNAL \Selector0~13_combout\ : std_logic;
SIGNAL \ld_A$latch~combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector1~6_combout\ : std_logic;
SIGNAL \ld_B$latch~combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \ld_C~1_combout\ : std_logic;
SIGNAL \ld_C~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \ld_C~3_combout\ : std_logic;
SIGNAL \ld_C~3clkctrl_outclk\ : std_logic;
SIGNAL \ld_C$latch~0_combout\ : std_logic;
SIGNAL \ld_C$latch~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \ld_Z~0_combout\ : std_logic;
SIGNAL \ld_Z$latch~0_combout\ : std_logic;
SIGNAL \ld_Z$latch~combout\ : std_logic;
SIGNAL \T[1]~0_combout\ : std_logic;
SIGNAL \T[1]~reg0_q\ : std_logic;
SIGNAL \T[2]~reg0feeder_combout\ : std_logic;
SIGNAL \T[2]~reg0_q\ : std_logic;
SIGNAL \mclk~input_o\ : std_logic;
SIGNAL \mclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \wen~0_combout\ : std_logic;
SIGNAL \wen~1_combout\ : std_logic;
SIGNAL \wen~2_combout\ : std_logic;
SIGNAL \wen~reg0_q\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \en~2_combout\ : std_logic;
SIGNAL \en~3_combout\ : std_logic;
SIGNAL \en~reg0_q\ : std_logic;
SIGNAL \ALT_INV_mclk~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_mclk <= mclk;
ww_enable <= enable;
ww_statusC <= statusC;
ww_statusZ <= statusZ;
ww_INST <= INST;
PC_Mux <= ww_PC_Mux;
IM_MUX1 <= ww_IM_MUX1;
REG_Mux <= ww_REG_Mux;
IM_MUX2 <= ww_IM_MUX2;
DATA_Mux <= ww_DATA_Mux;
ALU_op <= ww_ALU_op;
inc_PC <= ww_inc_PC;
ld_PC <= ww_ld_PC;
clr_IR <= ww_clr_IR;
ld_IR <= ww_ld_IR;
clr_A <= ww_clr_A;
clr_B <= ww_clr_B;
clr_C <= ww_clr_C;
clr_Z <= ww_clr_Z;
ld_A <= ww_ld_A;
ld_B <= ww_ld_B;
ld_C <= ww_ld_C;
ld_Z <= ww_ld_Z;
T <= ww_T;
wen <= ww_wen;
en <= ww_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\enable~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \enable~input_o\);

\mclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mclk~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\PC_Mux~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PC_Mux~5_combout\);

\ld_C~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ld_C~3_combout\);

\Selector7~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector7~0_combout\);
\ALT_INV_mclk~inputclkctrl_outclk\ <= NOT \mclk~inputclkctrl_outclk\;

-- Location: IOOBUF_X46_Y0_N2
\PC_Mux~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_Mux$latch~combout\,
	devoe => ww_devoe,
	o => \PC_Mux~output_o\);

-- Location: IOOBUF_X41_Y0_N9
\IM_MUX1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IM_MUX1$latch~combout\,
	devoe => ww_devoe,
	o => \IM_MUX1~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\REG_Mux~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_Mux$latch~combout\,
	devoe => ww_devoe,
	o => \REG_Mux~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\IM_MUX2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IM_MUX2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \IM_MUX2[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\IM_MUX2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IM_MUX2[1]$latch~combout\,
	devoe => ww_devoe,
	o => \IM_MUX2[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\DATA_Mux[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_Mux[0]$latch~combout\,
	devoe => ww_devoe,
	o => \DATA_Mux[0]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\DATA_Mux[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_Mux[1]$latch~combout\,
	devoe => ww_devoe,
	o => \DATA_Mux[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\ALU_op[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_op[0]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_op[0]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\ALU_op[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_op[1]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_op[1]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\ALU_op[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_op[2]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_op[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\inc_PC~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inc_PC~4_combout\,
	devoe => ww_devoe,
	o => \inc_PC~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\ld_PC~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_PC~4_combout\,
	devoe => ww_devoe,
	o => \ld_PC~output_o\);

-- Location: IOOBUF_X52_Y19_N2
\clr_IR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clr_IR~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\ld_IR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_IR$latch~combout\,
	devoe => ww_devoe,
	o => \ld_IR~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\clr_A~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clr_A$latch~combout\,
	devoe => ww_devoe,
	o => \clr_A~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\clr_B~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clr_B$latch~combout\,
	devoe => ww_devoe,
	o => \clr_B~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\clr_C~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clr_C$latch~combout\,
	devoe => ww_devoe,
	o => \clr_C~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\clr_Z~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clr_Z$latch~combout\,
	devoe => ww_devoe,
	o => \clr_Z~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\ld_A~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_A$latch~combout\,
	devoe => ww_devoe,
	o => \ld_A~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\ld_B~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_B$latch~combout\,
	devoe => ww_devoe,
	o => \ld_B~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\ld_C~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_C$latch~combout\,
	devoe => ww_devoe,
	o => \ld_C~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\ld_Z~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_Z$latch~combout\,
	devoe => ww_devoe,
	o => \ld_Z~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\T[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \T[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\T[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T[1]~reg0_q\,
	devoe => ww_devoe,
	o => \T[1]~output_o\);

-- Location: IOOBUF_X25_Y41_N2
\T[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T[2]~reg0_q\,
	devoe => ww_devoe,
	o => \T[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\wen~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wen~reg0_q\,
	devoe => ww_devoe,
	o => \wen~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\en~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \en~reg0_q\,
	devoe => ww_devoe,
	o => \en~output_o\);

-- Location: IOIBUF_X25_Y0_N8
\INST[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(31),
	o => \INST[31]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\INST[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(29),
	o => \INST[29]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\INST[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(28),
	o => \INST[28]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\INST[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(30),
	o => \INST[30]~input_o\);

-- Location: LCCOMB_X27_Y1_N30
\Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\INST[31]~input_o\ & (!\INST[29]~input_o\ & (\INST[28]~input_o\ & \INST[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[29]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[30]~input_o\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X27_Y1_N24
\Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\INST[31]~input_o\ & (!\INST[29]~input_o\ & (!\INST[28]~input_o\ & \INST[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[29]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[30]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: IOIBUF_X27_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X27_Y1_N12
\present_state.state_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \present_state.state_0~0_combout\ = !\present_state.state_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.state_2~q\,
	combout => \present_state.state_0~0_combout\);

-- Location: IOIBUF_X27_Y0_N1
\enable~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: CLKCTRL_G18
\enable~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \enable~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \enable~inputclkctrl_outclk\);

-- Location: FF_X27_Y1_N3
\present_state.state_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \present_state.state_0~0_combout\,
	clrn => \enable~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.state_0~q\);

-- Location: LCCOMB_X27_Y1_N4
\present_state.state_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \present_state.state_1~0_combout\ = !\present_state.state_0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.state_0~q\,
	combout => \present_state.state_1~0_combout\);

-- Location: FF_X27_Y1_N5
\present_state.state_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \present_state.state_1~0_combout\,
	clrn => \enable~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.state_1~q\);

-- Location: FF_X28_Y1_N19
\present_state.state_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \present_state.state_1~q\,
	clrn => \enable~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.state_2~q\);

-- Location: LCCOMB_X30_Y1_N18
\PC_Mux~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_Mux~6_combout\ = (\Equal0~4_combout\) # ((\Equal0~3_combout\) # ((!\enable~input_o\) # (!\present_state.state_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~3_combout\,
	datac => \present_state.state_2~q\,
	datad => \enable~input_o\,
	combout => \PC_Mux~6_combout\);

-- Location: IOIBUF_X31_Y0_N1
\INST[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(26),
	o => \INST[26]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\INST[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(27),
	o => \INST[27]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\INST[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(25),
	o => \INST[25]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\INST[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(24),
	o => \INST[24]~input_o\);

-- Location: LCCOMB_X28_Y1_N16
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\INST[26]~input_o\ & (\INST[27]~input_o\ & (\INST[25]~input_o\ & !\INST[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[26]~input_o\,
	datab => \INST[27]~input_o\,
	datac => \INST[25]~input_o\,
	datad => \INST[24]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X27_Y1_N8
\PC_Mux~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_Mux~2_combout\ = (!\INST[28]~input_o\ & ((\INST[31]~input_o\ & (!\INST[29]~input_o\ & !\INST[30]~input_o\)) # (!\INST[31]~input_o\ & (\INST[29]~input_o\ & \INST[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[29]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[30]~input_o\,
	combout => \PC_Mux~2_combout\);

-- Location: LCCOMB_X29_Y1_N2
\PC_Mux~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_Mux~3_combout\ = (\Mux0~0_combout\ & !\PC_Mux~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datac => \PC_Mux~2_combout\,
	combout => \PC_Mux~3_combout\);

-- Location: LCCOMB_X26_Y1_N14
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\INST[28]~input_o\ & (!\INST[29]~input_o\ & (!\INST[30]~input_o\ & \INST[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[28]~input_o\,
	datab => \INST[29]~input_o\,
	datac => \INST[30]~input_o\,
	datad => \INST[31]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X29_Y0_N8
\statusZ~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_statusZ,
	o => \statusZ~input_o\);

-- Location: LCCOMB_X27_Y1_N10
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\INST[31]~input_o\ & (\INST[29]~input_o\ & (!\INST[28]~input_o\ & \INST[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[29]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[30]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X41_Y0_N1
\statusC~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_statusC,
	o => \statusC~input_o\);

-- Location: LCCOMB_X29_Y1_N12
\ld_C~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ld_C~0_combout\ = (\Equal0~1_combout\ & (!\statusZ~input_o\)) # (!\Equal0~1_combout\ & (((!\statusC~input_o\) # (!\Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statusZ~input_o\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \statusC~input_o\,
	combout => \ld_C~0_combout\);

-- Location: LCCOMB_X26_Y1_N20
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\INST[28]~input_o\ & (\INST[29]~input_o\ & (\INST[30]~input_o\ & !\INST[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[28]~input_o\,
	datab => \INST[29]~input_o\,
	datac => \INST[30]~input_o\,
	datad => \INST[31]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X28_Y1_N0
\PC_Mux~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_Mux~4_combout\ = (\statusZ~input_o\) # ((!\Equal0~1_combout\ & !\Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \statusZ~input_o\,
	datad => \Mux0~0_combout\,
	combout => \PC_Mux~4_combout\);

-- Location: LCCOMB_X28_Y1_N22
\PC_Mux~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_Mux~5_combout\ = ((!\Equal0~2_combout\ & (\Equal0~0_combout\ & \PC_Mux~4_combout\))) # (!\ld_C~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \ld_C~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \PC_Mux~4_combout\,
	combout => \PC_Mux~5_combout\);

-- Location: CLKCTRL_G16
\PC_Mux~5clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PC_Mux~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PC_Mux~5clkctrl_outclk\);

-- Location: LCCOMB_X29_Y1_N10
\PC_Mux$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_Mux$latch~combout\ = (!\PC_Mux~6_combout\ & ((GLOBAL(\PC_Mux~5clkctrl_outclk\) & ((\PC_Mux~3_combout\))) # (!GLOBAL(\PC_Mux~5clkctrl_outclk\) & (\PC_Mux$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_Mux$latch~combout\,
	datab => \PC_Mux~6_combout\,
	datac => \PC_Mux~3_combout\,
	datad => \PC_Mux~5clkctrl_outclk\,
	combout => \PC_Mux$latch~combout\);

-- Location: LCCOMB_X30_Y1_N0
\comb~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (((\Equal0~4_combout\ & !\Equal0~3_combout\)) # (!\present_state.state_2~q\)) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~3_combout\,
	datac => \enable~input_o\,
	datad => \present_state.state_2~q\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X30_Y1_N12
\IM_MUX1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IM_MUX1~1_combout\ = (\enable~input_o\ & (\Equal0~3_combout\ & \present_state.state_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \Equal0~3_combout\,
	datad => \present_state.state_2~q\,
	combout => \IM_MUX1~1_combout\);

-- Location: LCCOMB_X30_Y1_N22
\IM_MUX1$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IM_MUX1$latch~combout\ = (!\comb~2_combout\ & ((\IM_MUX1~1_combout\) # ((\IM_MUX1$latch~combout\ & !GLOBAL(\PC_Mux~5clkctrl_outclk\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~2_combout\,
	datab => \IM_MUX1~1_combout\,
	datac => \IM_MUX1$latch~combout\,
	datad => \PC_Mux~5clkctrl_outclk\,
	combout => \IM_MUX1$latch~combout\);

-- Location: LCCOMB_X25_Y1_N24
\Selector6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~4_combout\ = \INST[28]~input_o\ $ (\INST[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST[28]~input_o\,
	datad => \INST[31]~input_o\,
	combout => \Selector6~4_combout\);

-- Location: LCCOMB_X26_Y1_N18
\Selector6~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~9_combout\ = (\present_state.state_1~q\ & (\Selector6~4_combout\ & (!\INST[30]~input_o\ & \INST[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.state_1~q\,
	datab => \Selector6~4_combout\,
	datac => \INST[30]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \Selector6~9_combout\);

-- Location: LCCOMB_X28_Y1_N30
\Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Equal0~3_combout\) # ((\Equal0~4_combout\) # ((\PC_Mux~5_combout\) # (!\present_state.state_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~4_combout\,
	datac => \PC_Mux~5_combout\,
	datad => \present_state.state_2~q\,
	combout => \Selector7~0_combout\);

-- Location: CLKCTRL_G15
\Selector7~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector7~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector7~0clkctrl_outclk\);

-- Location: LCCOMB_X26_Y1_N8
\REG_Mux$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \REG_Mux$latch~combout\ = (\enable~input_o\ & ((GLOBAL(\Selector7~0clkctrl_outclk\) & ((\Selector6~9_combout\))) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & (\REG_Mux$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \REG_Mux$latch~combout\,
	datac => \Selector6~9_combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => \REG_Mux$latch~combout\);

-- Location: LCCOMB_X29_Y1_N6
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\INST[25]~input_o\ & (\INST[24]~input_o\ & (\INST[27]~input_o\ $ (!\INST[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datab => \INST[27]~input_o\,
	datac => \INST[26]~input_o\,
	datad => \INST[24]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X29_Y1_N16
\IM_MUX2[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IM_MUX2[0]~0_combout\ = (!\PC_Mux~2_combout\ & \Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_Mux~2_combout\,
	datac => \Mux6~0_combout\,
	combout => \IM_MUX2[0]~0_combout\);

-- Location: LCCOMB_X29_Y1_N8
\IM_MUX2[0]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IM_MUX2[0]$latch~combout\ = (!\PC_Mux~6_combout\ & ((GLOBAL(\PC_Mux~5clkctrl_outclk\) & ((\IM_MUX2[0]~0_combout\))) # (!GLOBAL(\PC_Mux~5clkctrl_outclk\) & (\IM_MUX2[0]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_Mux~6_combout\,
	datab => \IM_MUX2[0]$latch~combout\,
	datac => \IM_MUX2[0]~0_combout\,
	datad => \PC_Mux~5clkctrl_outclk\,
	combout => \IM_MUX2[0]$latch~combout\);

-- Location: LCCOMB_X30_Y1_N14
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\INST[25]~input_o\ & ((\INST[27]~input_o\ & (\INST[26]~input_o\ & !\INST[24]~input_o\)) # (!\INST[27]~input_o\ & (!\INST[26]~input_o\ & \INST[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datab => \INST[27]~input_o\,
	datac => \INST[26]~input_o\,
	datad => \INST[24]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X30_Y1_N8
\IM_MUX2[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IM_MUX2[1]~1_combout\ = (\Mux5~0_combout\ & !\PC_Mux~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux5~0_combout\,
	datad => \PC_Mux~2_combout\,
	combout => \IM_MUX2[1]~1_combout\);

-- Location: LCCOMB_X30_Y1_N28
\IM_MUX2[1]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IM_MUX2[1]$latch~combout\ = (!\PC_Mux~6_combout\ & ((GLOBAL(\PC_Mux~5clkctrl_outclk\) & ((\IM_MUX2[1]~1_combout\))) # (!GLOBAL(\PC_Mux~5clkctrl_outclk\) & (\IM_MUX2[1]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]$latch~combout\,
	datab => \PC_Mux~6_combout\,
	datac => \IM_MUX2[1]~1_combout\,
	datad => \PC_Mux~5clkctrl_outclk\,
	combout => \IM_MUX2[1]$latch~combout\);

-- Location: LCCOMB_X26_Y1_N28
\DATA_Mux~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DATA_Mux~0_combout\ = (!\INST[30]~input_o\ & (\INST[31]~input_o\ & (\INST[28]~input_o\ $ (\INST[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[28]~input_o\,
	datab => \INST[29]~input_o\,
	datac => \INST[30]~input_o\,
	datad => \INST[31]~input_o\,
	combout => \DATA_Mux~0_combout\);

-- Location: LCCOMB_X27_Y1_N20
\Selector5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\present_state.state_1~q\ & (\DATA_Mux~0_combout\ & ((\INST[31]~input_o\) # (\INST[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \present_state.state_1~q\,
	datad => \DATA_Mux~0_combout\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X27_Y1_N22
\DATA_Mux[0]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DATA_Mux[0]$latch~combout\ = (\enable~input_o\ & ((GLOBAL(\Selector7~0clkctrl_outclk\) & (\Selector5~2_combout\)) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & ((\DATA_Mux[0]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \Selector5~2_combout\,
	datac => \DATA_Mux[0]$latch~combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => \DATA_Mux[0]$latch~combout\);

-- Location: LCCOMB_X28_Y1_N28
\Selector0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~9_combout\ = (\INST[24]~input_o\ & ((\INST[25]~input_o\) # (\INST[26]~input_o\))) # (!\INST[24]~input_o\ & (\INST[25]~input_o\ & \INST[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[24]~input_o\,
	datac => \INST[25]~input_o\,
	datad => \INST[26]~input_o\,
	combout => \Selector0~9_combout\);

-- Location: LCCOMB_X28_Y1_N2
\Selector0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~10_combout\ = (!\PC_Mux~2_combout\ & ((\INST[27]~input_o\ & (\Selector0~9_combout\)) # (!\INST[27]~input_o\ & ((!\INST[26]~input_o\) # (!\Selector0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_Mux~2_combout\,
	datab => \INST[27]~input_o\,
	datac => \Selector0~9_combout\,
	datad => \INST[26]~input_o\,
	combout => \Selector0~10_combout\);

-- Location: LCCOMB_X32_Y1_N18
\DATA_Mux[1]$latch~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]$latch~0_combout\ = (GLOBAL(\PC_Mux~5clkctrl_outclk\) & (\Selector0~10_combout\)) # (!GLOBAL(\PC_Mux~5clkctrl_outclk\) & ((\DATA_Mux[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~10_combout\,
	datac => \PC_Mux~5clkctrl_outclk\,
	datad => \DATA_Mux[1]$latch~combout\,
	combout => \DATA_Mux[1]$latch~0_combout\);

-- Location: LCCOMB_X32_Y1_N0
\DATA_Mux[1]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]$latch~combout\ = (!\comb~2_combout\ & ((\IM_MUX1~1_combout\) # (\DATA_Mux[1]$latch~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~1_combout\,
	datac => \comb~2_combout\,
	datad => \DATA_Mux[1]$latch~0_combout\,
	combout => \DATA_Mux[1]$latch~combout\);

-- Location: LCCOMB_X30_Y1_N2
\Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\INST[27]~input_o\ & ((\INST[25]~input_o\ & (\INST[26]~input_o\ & \INST[24]~input_o\)) # (!\INST[25]~input_o\ & ((\INST[26]~input_o\) # (\INST[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datab => \INST[27]~input_o\,
	datac => \INST[26]~input_o\,
	datad => \INST[24]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X30_Y1_N16
\ALU_op[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU_op[0]~0_combout\ = (\PC_Mux~2_combout\ & ((\Equal0~1_combout\))) # (!\PC_Mux~2_combout\ & (\Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_Mux~2_combout\,
	datac => \Mux10~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \ALU_op[0]~0_combout\);

-- Location: LCCOMB_X30_Y1_N26
\ALU_op[0]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU_op[0]$latch~combout\ = (!\PC_Mux~6_combout\ & ((GLOBAL(\PC_Mux~5clkctrl_outclk\) & (\ALU_op[0]~0_combout\)) # (!GLOBAL(\PC_Mux~5clkctrl_outclk\) & ((\ALU_op[0]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_op[0]~0_combout\,
	datab => \PC_Mux~6_combout\,
	datac => \ALU_op[0]$latch~combout\,
	datad => \PC_Mux~5clkctrl_outclk\,
	combout => \ALU_op[0]$latch~combout\);

-- Location: LCCOMB_X31_Y1_N16
\Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\INST[24]~input_o\ & ((\INST[26]~input_o\) # ((\INST[25]~input_o\ & \INST[27]~input_o\)))) # (!\INST[24]~input_o\ & (\INST[26]~input_o\ $ (((\INST[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[24]~input_o\,
	datab => \INST[26]~input_o\,
	datac => \INST[25]~input_o\,
	datad => \INST[27]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X31_Y1_N26
\ALU_op[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU_op[1]~1_combout\ = (\PC_Mux~2_combout\ & (\Equal0~1_combout\)) # (!\PC_Mux~2_combout\ & ((!\Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_Mux~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Mux9~0_combout\,
	combout => \ALU_op[1]~1_combout\);

-- Location: LCCOMB_X32_Y1_N2
\ALU_op[1]$latch~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU_op[1]$latch~0_combout\ = (GLOBAL(\PC_Mux~5clkctrl_outclk\) & (\ALU_op[1]~1_combout\)) # (!GLOBAL(\PC_Mux~5clkctrl_outclk\) & ((\ALU_op[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_op[1]~1_combout\,
	datac => \PC_Mux~5clkctrl_outclk\,
	datad => \ALU_op[1]$latch~combout\,
	combout => \ALU_op[1]$latch~0_combout\);

-- Location: LCCOMB_X32_Y1_N12
\ALU_op[1]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU_op[1]$latch~combout\ = (!\comb~2_combout\ & ((\IM_MUX1~1_combout\) # (\ALU_op[1]$latch~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~1_combout\,
	datac => \comb~2_combout\,
	datad => \ALU_op[1]$latch~0_combout\,
	combout => \ALU_op[1]$latch~combout\);

-- Location: LCCOMB_X30_Y1_N10
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\INST[27]~input_o\ & ((\INST[25]~input_o\ & (\INST[26]~input_o\)) # (!\INST[25]~input_o\ & (!\INST[26]~input_o\ & \INST[24]~input_o\)))) # (!\INST[27]~input_o\ & (!\INST[24]~input_o\ & (\INST[25]~input_o\ $ (\INST[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datab => \INST[27]~input_o\,
	datac => \INST[26]~input_o\,
	datad => \INST[24]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X30_Y1_N4
\ALU_op[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU_op[2]~2_combout\ = (\Mux8~0_combout\ & !\PC_Mux~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux8~0_combout\,
	datad => \PC_Mux~2_combout\,
	combout => \ALU_op[2]~2_combout\);

-- Location: LCCOMB_X30_Y1_N24
\ALU_op[2]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU_op[2]$latch~combout\ = (!\PC_Mux~6_combout\ & ((GLOBAL(\PC_Mux~5clkctrl_outclk\) & ((\ALU_op[2]~2_combout\))) # (!GLOBAL(\PC_Mux~5clkctrl_outclk\) & (\ALU_op[2]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_op[2]$latch~combout\,
	datab => \PC_Mux~6_combout\,
	datac => \ALU_op[2]~2_combout\,
	datad => \PC_Mux~5clkctrl_outclk\,
	combout => \ALU_op[2]$latch~combout\);

-- Location: LCCOMB_X29_Y1_N28
\IM_MUX1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IM_MUX1~0_combout\ = (\enable~input_o\ & \present_state.state_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \present_state.state_2~q\,
	combout => \IM_MUX1~0_combout\);

-- Location: LCCOMB_X29_Y1_N18
\inc_PC~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inc_PC~3_combout\ = (\statusZ~input_o\ & (\IM_MUX1~0_combout\ & (\Mux0~0_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statusZ~input_o\,
	datab => \IM_MUX1~0_combout\,
	datac => \Mux0~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \inc_PC~3_combout\);

-- Location: LCCOMB_X28_Y1_N6
\inc_PC~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inc_PC~4_combout\ = (\inc_PC~3_combout\) # ((\enable~input_o\ & \present_state.state_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \present_state.state_1~q\,
	datad => \inc_PC~3_combout\,
	combout => \inc_PC~4_combout\);

-- Location: LCCOMB_X28_Y1_N18
\inc_PC~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inc_PC~2_combout\ = (\enable~input_o\ & \present_state.state_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \present_state.state_1~q\,
	combout => \inc_PC~2_combout\);

-- Location: LCCOMB_X29_Y1_N20
\ld_PC~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ld_PC~2_combout\ = (\inc_PC~2_combout\) # ((\statusC~input_o\ & (\Equal0~2_combout\ & \IM_MUX1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statusC~input_o\,
	datab => \inc_PC~2_combout\,
	datac => \Equal0~2_combout\,
	datad => \IM_MUX1~0_combout\,
	combout => \ld_PC~2_combout\);

-- Location: LCCOMB_X28_Y1_N4
\ld_PC~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ld_PC~3_combout\ = (!\Equal0~3_combout\ & (!\Equal0~4_combout\ & (!\Equal0~1_combout\ & !\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \ld_PC~3_combout\);

-- Location: LCCOMB_X29_Y1_N24
\ld_PC~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ld_PC~5_combout\ = (\Equal0~1_combout\ & (\enable~input_o\ & (\present_state.state_2~q\ & \statusZ~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \enable~input_o\,
	datac => \present_state.state_2~q\,
	datad => \statusZ~input_o\,
	combout => \ld_PC~5_combout\);

-- Location: LCCOMB_X28_Y1_N20
\ld_PC~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ld_PC~4_combout\ = (\ld_PC~2_combout\) # ((\ld_PC~5_combout\) # ((\inc_PC~3_combout\ & \ld_PC~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_PC~2_combout\,
	datab => \inc_PC~3_combout\,
	datac => \ld_PC~3_combout\,
	datad => \ld_PC~5_combout\,
	combout => \ld_PC~4_combout\);

-- Location: LCCOMB_X27_Y1_N6
\Selector4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~4_combout\ = \INST[28]~input_o\ $ (!\INST[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST[28]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \Selector4~4_combout\);

-- Location: LCCOMB_X27_Y1_N28
\Selector4~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~12_combout\ = ((\INST[30]~input_o\) # ((\Selector4~4_combout\ & \INST[31]~input_o\))) # (!\present_state.state_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~4_combout\,
	datab => \present_state.state_1~q\,
	datac => \INST[31]~input_o\,
	datad => \INST[30]~input_o\,
	combout => \Selector4~12_combout\);

-- Location: LCCOMB_X29_Y1_N14
\Selector4~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~9_combout\ = (!\INST[25]~input_o\ & \INST[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datad => \INST[24]~input_o\,
	combout => \Selector4~9_combout\);

-- Location: LCCOMB_X28_Y1_N24
\Selector4~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~10_combout\ = (((!\INST[27]~input_o\) # (!\ld_PC~3_combout\)) # (!\Selector4~9_combout\)) # (!\INST[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[26]~input_o\,
	datab => \Selector4~9_combout\,
	datac => \ld_PC~3_combout\,
	datad => \INST[27]~input_o\,
	combout => \Selector4~10_combout\);

-- Location: LCCOMB_X28_Y1_N14
\Selector4~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~11_combout\ = (\Selector4~12_combout\ & (((!\Equal0~2_combout\ & \Selector4~10_combout\)) # (!\present_state.state_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~12_combout\,
	datab => \Equal0~2_combout\,
	datac => \Selector4~10_combout\,
	datad => \present_state.state_2~q\,
	combout => \Selector4~11_combout\);

-- Location: LCCOMB_X28_Y1_N26
\ld_IR$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ld_IR$latch~combout\ = (\enable~input_o\ & ((GLOBAL(\Selector7~0clkctrl_outclk\) & (\Selector4~11_combout\)) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & ((\ld_IR$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~11_combout\,
	datab => \enable~input_o\,
	datac => \ld_IR$latch~combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => \ld_IR$latch~combout\);

-- Location: LCCOMB_X29_Y1_N0
\clr_A~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clr_A~0_combout\ = (!\PC_Mux~2_combout\ & (!\INST[27]~input_o\ & (\INST[26]~input_o\ & \Selector4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_Mux~2_combout\,
	datab => \INST[27]~input_o\,
	datac => \INST[26]~input_o\,
	datad => \Selector4~9_combout\,
	combout => \clr_A~0_combout\);

-- Location: LCCOMB_X29_Y1_N26
\clr_A$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clr_A$latch~combout\ = (!\PC_Mux~6_combout\ & ((GLOBAL(\PC_Mux~5clkctrl_outclk\) & (\clr_A~0_combout\)) # (!GLOBAL(\PC_Mux~5clkctrl_outclk\) & ((\clr_A$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_Mux~6_combout\,
	datab => \clr_A~0_combout\,
	datac => \clr_A$latch~combout\,
	datad => \PC_Mux~5clkctrl_outclk\,
	combout => \clr_A$latch~combout\);

-- Location: LCCOMB_X31_Y1_N12
\clr_B~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clr_B~0_combout\ = (!\PC_Mux~2_combout\ & (\INST[26]~input_o\ & (\INST[25]~input_o\ & !\INST[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_Mux~2_combout\,
	datab => \INST[26]~input_o\,
	datac => \INST[25]~input_o\,
	datad => \INST[27]~input_o\,
	combout => \clr_B~0_combout\);

-- Location: LCCOMB_X31_Y1_N10
\clr_B~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clr_B~1_combout\ = (!\INST[24]~input_o\ & \clr_B~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST[24]~input_o\,
	datad => \clr_B~0_combout\,
	combout => \clr_B~1_combout\);

-- Location: LCCOMB_X32_Y1_N30
\clr_B$latch~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clr_B$latch~0_combout\ = (GLOBAL(\PC_Mux~5clkctrl_outclk\) & (\clr_B~1_combout\)) # (!GLOBAL(\PC_Mux~5clkctrl_outclk\) & ((\clr_B$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_B~1_combout\,
	datac => \PC_Mux~5clkctrl_outclk\,
	datad => \clr_B$latch~combout\,
	combout => \clr_B$latch~0_combout\);

-- Location: LCCOMB_X32_Y1_N16
\clr_B$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clr_B$latch~combout\ = (!\comb~2_combout\ & ((\IM_MUX1~1_combout\) # (\clr_B$latch~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~1_combout\,
	datac => \clr_B$latch~0_combout\,
	datad => \comb~2_combout\,
	combout => \clr_B$latch~combout\);

-- Location: LCCOMB_X31_Y1_N20
\clr_C~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clr_C~0_combout\ = (\INST[24]~input_o\ & \clr_B~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[24]~input_o\,
	datad => \clr_B~0_combout\,
	combout => \clr_C~0_combout\);

-- Location: LCCOMB_X31_Y1_N22
\clr_C$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clr_C$latch~combout\ = (!\PC_Mux~6_combout\ & ((GLOBAL(\PC_Mux~5clkctrl_outclk\) & (\clr_C~0_combout\)) # (!GLOBAL(\PC_Mux~5clkctrl_outclk\) & ((\clr_C$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_C~0_combout\,
	datab => \PC_Mux~6_combout\,
	datac => \clr_C$latch~combout\,
	datad => \PC_Mux~5clkctrl_outclk\,
	combout => \clr_C$latch~combout\);

-- Location: LCCOMB_X30_Y1_N6
\clr_Z~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clr_Z~0_combout\ = (!\INST[25]~input_o\ & (\INST[27]~input_o\ & (!\INST[26]~input_o\ & !\INST[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datab => \INST[27]~input_o\,
	datac => \INST[26]~input_o\,
	datad => \INST[24]~input_o\,
	combout => \clr_Z~0_combout\);

-- Location: LCCOMB_X30_Y1_N20
\clr_Z~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clr_Z~1_combout\ = (\clr_Z~0_combout\ & !\PC_Mux~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr_Z~0_combout\,
	datad => \PC_Mux~2_combout\,
	combout => \clr_Z~1_combout\);

-- Location: LCCOMB_X30_Y1_N30
\clr_Z$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clr_Z$latch~combout\ = (!\PC_Mux~6_combout\ & ((GLOBAL(\PC_Mux~5clkctrl_outclk\) & ((\clr_Z~1_combout\))) # (!GLOBAL(\PC_Mux~5clkctrl_outclk\) & (\clr_Z$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_Z$latch~combout\,
	datab => \PC_Mux~6_combout\,
	datac => \clr_Z~1_combout\,
	datad => \PC_Mux~5clkctrl_outclk\,
	combout => \clr_Z$latch~combout\);

-- Location: LCCOMB_X27_Y1_N14
\Selector0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~12_combout\ = (!\INST[30]~input_o\ & (\present_state.state_1~q\ & !\INST[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[30]~input_o\,
	datab => \present_state.state_1~q\,
	datad => \INST[29]~input_o\,
	combout => \Selector0~12_combout\);

-- Location: LCCOMB_X28_Y1_N10
\Selector0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~11_combout\ = (\present_state.state_2~q\ & ((\Equal0~3_combout\) # ((!\Equal0~4_combout\ & \Selector0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.state_2~q\,
	datab => \Equal0~4_combout\,
	datac => \Selector0~10_combout\,
	datad => \Equal0~3_combout\,
	combout => \Selector0~11_combout\);

-- Location: LCCOMB_X28_Y1_N12
\Selector0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~13_combout\ = (\Selector0~11_combout\) # ((\Selector0~12_combout\ & (\INST[28]~input_o\ $ (!\INST[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~12_combout\,
	datab => \INST[28]~input_o\,
	datac => \Selector0~11_combout\,
	datad => \INST[31]~input_o\,
	combout => \Selector0~13_combout\);

-- Location: LCCOMB_X28_Y1_N8
\ld_A$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ld_A$latch~combout\ = (\enable~input_o\ & ((GLOBAL(\Selector7~0clkctrl_outclk\) & (\Selector0~13_combout\)) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & ((\ld_A$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \Selector0~13_combout\,
	datac => \ld_A$latch~combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => \ld_A$latch~combout\);

-- Location: LCCOMB_X26_Y1_N12
\Selector1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\INST[29]~input_o\ & (!\INST[28]~input_o\ & \INST[31]~input_o\)) # (!\INST[29]~input_o\ & (\INST[28]~input_o\ & !\INST[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST[29]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[31]~input_o\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X26_Y1_N22
\Selector1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~6_combout\ = (\present_state.state_1~q\ & (!\INST[30]~input_o\ & \Selector1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.state_1~q\,
	datac => \INST[30]~input_o\,
	datad => \Selector1~3_combout\,
	combout => \Selector1~6_combout\);

-- Location: LCCOMB_X26_Y1_N10
\ld_B$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ld_B$latch~combout\ = (\enable~input_o\ & ((GLOBAL(\Selector7~0clkctrl_outclk\) & ((\Selector1~6_combout\))) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & (\ld_B$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_B$latch~combout\,
	datab => \enable~input_o\,
	datac => \Selector1~6_combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => \ld_B$latch~combout\);

-- Location: LCCOMB_X31_Y1_N14
\Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\INST[26]~input_o\ & (!\INST[27]~input_o\ & ((\INST[24]~input_o\) # (\INST[25]~input_o\)))) # (!\INST[26]~input_o\ & (!\INST[24]~input_o\ & ((\INST[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[24]~input_o\,
	datab => \INST[26]~input_o\,
	datac => \INST[25]~input_o\,
	datad => \INST[27]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X32_Y1_N4
\ld_C~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ld_C~1_combout\ = (\PC_Mux~2_combout\) # (\Mux15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_Mux~2_combout\,
	datad => \Mux15~0_combout\,
	combout => \ld_C~1_combout\);

-- Location: LCCOMB_X29_Y1_N30
\ld_C~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ld_C~2_combout\ = (!\Equal0~1_combout\ & (!\Equal0~2_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \ld_C~2_combout\);

-- Location: LCCOMB_X29_Y1_N4
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\INST[27]~input_o\ & ((\statusZ~input_o\) # ((\INST[26]~input_o\) # (\INST[24]~input_o\)))) # (!\INST[27]~input_o\ & (((!\INST[24]~input_o\) # (!\INST[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statusZ~input_o\,
	datab => \INST[27]~input_o\,
	datac => \INST[26]~input_o\,
	datad => \INST[24]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X29_Y1_N22
\ld_C~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ld_C~3_combout\ = ((\ld_C~2_combout\ & ((\Mux2~0_combout\) # (!\INST[25]~input_o\)))) # (!\ld_C~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datab => \ld_C~2_combout\,
	datac => \Mux2~0_combout\,
	datad => \ld_C~0_combout\,
	combout => \ld_C~3_combout\);

-- Location: CLKCTRL_G6
\ld_C~3clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ld_C~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ld_C~3clkctrl_outclk\);

-- Location: LCCOMB_X32_Y1_N22
\ld_C$latch~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ld_C$latch~0_combout\ = (GLOBAL(\ld_C~3clkctrl_outclk\) & (!\ld_C~1_combout\)) # (!GLOBAL(\ld_C~3clkctrl_outclk\) & ((\ld_C$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_C~1_combout\,
	datac => \ld_C~3clkctrl_outclk\,
	datad => \ld_C$latch~combout\,
	combout => \ld_C$latch~0_combout\);

-- Location: LCCOMB_X32_Y1_N24
\ld_C$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ld_C$latch~combout\ = (!\comb~2_combout\ & ((\IM_MUX1~1_combout\) # (\ld_C$latch~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~1_combout\,
	datac => \ld_C$latch~0_combout\,
	datad => \comb~2_combout\,
	combout => \ld_C$latch~combout\);

-- Location: LCCOMB_X31_Y1_N24
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\INST[26]~input_o\ & (!\INST[27]~input_o\ & ((\INST[24]~input_o\) # (\INST[25]~input_o\)))) # (!\INST[26]~input_o\ & (\INST[27]~input_o\ & ((!\INST[25]~input_o\) # (!\INST[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[24]~input_o\,
	datab => \INST[26]~input_o\,
	datac => \INST[25]~input_o\,
	datad => \INST[27]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X32_Y1_N26
\ld_Z~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ld_Z~0_combout\ = (\PC_Mux~2_combout\) # (\Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_Mux~2_combout\,
	datad => \Mux3~0_combout\,
	combout => \ld_Z~0_combout\);

-- Location: LCCOMB_X32_Y1_N10
\ld_Z$latch~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ld_Z$latch~0_combout\ = (GLOBAL(\ld_C~3clkctrl_outclk\) & (!\ld_Z~0_combout\)) # (!GLOBAL(\ld_C~3clkctrl_outclk\) & ((\ld_Z$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_Z~0_combout\,
	datac => \ld_C~3clkctrl_outclk\,
	datad => \ld_Z$latch~combout\,
	combout => \ld_Z$latch~0_combout\);

-- Location: LCCOMB_X32_Y1_N20
\ld_Z$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ld_Z$latch~combout\ = (!\comb~2_combout\ & ((\IM_MUX1~1_combout\) # (\ld_Z$latch~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~1_combout\,
	datac => \comb~2_combout\,
	datad => \ld_Z$latch~0_combout\,
	combout => \ld_Z$latch~combout\);

-- Location: LCCOMB_X26_Y1_N24
\T[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T[1]~0_combout\ = !\present_state.state_0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.state_0~q\,
	combout => \T[1]~0_combout\);

-- Location: FF_X26_Y1_N25
\T[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \T[1]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T[1]~reg0_q\);

-- Location: LCCOMB_X26_Y1_N30
\T[2]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T[2]~reg0feeder_combout\ = \present_state.state_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.state_1~q\,
	combout => \T[2]~reg0feeder_combout\);

-- Location: FF_X26_Y1_N31
\T[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \T[2]~reg0feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T[2]~reg0_q\);

-- Location: IOIBUF_X27_Y0_N22
\mclk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mclk,
	o => \mclk~input_o\);

-- Location: CLKCTRL_G19
\mclk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mclk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mclk~inputclkctrl_outclk\);

-- Location: LCCOMB_X27_Y1_N2
\wen~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wen~0_combout\ = (!\present_state.state_2~q\) # (!\clk~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datad => \present_state.state_2~q\,
	combout => \wen~0_combout\);

-- Location: LCCOMB_X27_Y1_N16
\wen~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wen~1_combout\ = (!\INST[31]~input_o\ & (!\INST[30]~input_o\ & (\present_state.state_1~q\ & \INST[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \present_state.state_1~q\,
	datad => \INST[29]~input_o\,
	combout => \wen~1_combout\);

-- Location: LCCOMB_X27_Y1_N0
\wen~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wen~2_combout\ = (\wen~0_combout\ & ((\wen~1_combout\) # ((!\present_state.state_1~q\ & \wen~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wen~0_combout\,
	datab => \present_state.state_1~q\,
	datac => \wen~reg0_q\,
	datad => \wen~1_combout\,
	combout => \wen~2_combout\);

-- Location: FF_X27_Y1_N1
\wen~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mclk~inputclkctrl_outclk\,
	d => \wen~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wen~reg0_q\);

-- Location: LCCOMB_X26_Y1_N26
\Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\INST[28]~input_o\ & (\INST[29]~input_o\ & (!\INST[30]~input_o\ & !\INST[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[28]~input_o\,
	datab => \INST[29]~input_o\,
	datac => \INST[30]~input_o\,
	datad => \INST[31]~input_o\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X26_Y1_N16
\Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\INST[28]~input_o\ & (\INST[29]~input_o\ & (!\INST[30]~input_o\ & !\INST[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[28]~input_o\,
	datab => \INST[29]~input_o\,
	datac => \INST[30]~input_o\,
	datad => \INST[31]~input_o\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X27_Y1_N26
\en~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \en~2_combout\ = (\present_state.state_1~q\ & ((\Equal0~5_combout\) # ((\Equal0~6_combout\)))) # (!\present_state.state_1~q\ & (((\en~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \present_state.state_1~q\,
	datad => \en~reg0_q\,
	combout => \en~2_combout\);

-- Location: LCCOMB_X27_Y1_N18
\en~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \en~3_combout\ = (\clk~input_o\ & (!\present_state.state_2~q\ & ((\en~2_combout\) # (\Selector5~2_combout\)))) # (!\clk~input_o\ & (((\en~2_combout\) # (\Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \present_state.state_2~q\,
	datac => \en~2_combout\,
	datad => \Selector5~2_combout\,
	combout => \en~3_combout\);

-- Location: FF_X27_Y1_N19
\en~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mclk~inputclkctrl_outclk\,
	d => \en~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \en~reg0_q\);

-- Location: IOIBUF_X23_Y41_N1
\INST[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(0),
	o => \INST[0]~input_o\);

-- Location: IOIBUF_X21_Y41_N1
\INST[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(1),
	o => \INST[1]~input_o\);

-- Location: IOIBUF_X41_Y41_N22
\INST[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(2),
	o => \INST[2]~input_o\);

-- Location: IOIBUF_X31_Y41_N15
\INST[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(3),
	o => \INST[3]~input_o\);

-- Location: IOIBUF_X21_Y41_N8
\INST[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(4),
	o => \INST[4]~input_o\);

-- Location: IOIBUF_X25_Y41_N8
\INST[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(5),
	o => \INST[5]~input_o\);

-- Location: IOIBUF_X48_Y41_N1
\INST[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(6),
	o => \INST[6]~input_o\);

-- Location: IOIBUF_X52_Y16_N8
\INST[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(7),
	o => \INST[7]~input_o\);

-- Location: IOIBUF_X7_Y41_N22
\INST[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(8),
	o => \INST[8]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\INST[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(9),
	o => \INST[9]~input_o\);

-- Location: IOIBUF_X41_Y41_N1
\INST[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(10),
	o => \INST[10]~input_o\);

-- Location: IOIBUF_X7_Y41_N15
\INST[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(11),
	o => \INST[11]~input_o\);

-- Location: IOIBUF_X41_Y41_N15
\INST[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(12),
	o => \INST[12]~input_o\);

-- Location: IOIBUF_X52_Y12_N8
\INST[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(13),
	o => \INST[13]~input_o\);

-- Location: IOIBUF_X50_Y0_N8
\INST[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(14),
	o => \INST[14]~input_o\);

-- Location: IOIBUF_X50_Y41_N1
\INST[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(15),
	o => \INST[15]~input_o\);

-- Location: IOIBUF_X5_Y41_N8
\INST[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(16),
	o => \INST[16]~input_o\);

-- Location: IOIBUF_X52_Y21_N22
\INST[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(17),
	o => \INST[17]~input_o\);

-- Location: IOIBUF_X52_Y21_N15
\INST[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(18),
	o => \INST[18]~input_o\);

-- Location: IOIBUF_X12_Y41_N1
\INST[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(19),
	o => \INST[19]~input_o\);

-- Location: IOIBUF_X52_Y21_N8
\INST[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(20),
	o => \INST[20]~input_o\);

-- Location: IOIBUF_X52_Y21_N1
\INST[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(21),
	o => \INST[21]~input_o\);

-- Location: IOIBUF_X46_Y41_N1
\INST[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(22),
	o => \INST[22]~input_o\);

-- Location: IOIBUF_X31_Y41_N8
\INST[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(23),
	o => \INST[23]~input_o\);

ww_PC_Mux <= \PC_Mux~output_o\;

ww_IM_MUX1 <= \IM_MUX1~output_o\;

ww_REG_Mux <= \REG_Mux~output_o\;

ww_IM_MUX2(0) <= \IM_MUX2[0]~output_o\;

ww_IM_MUX2(1) <= \IM_MUX2[1]~output_o\;

ww_DATA_Mux(0) <= \DATA_Mux[0]~output_o\;

ww_DATA_Mux(1) <= \DATA_Mux[1]~output_o\;

ww_ALU_op(0) <= \ALU_op[0]~output_o\;

ww_ALU_op(1) <= \ALU_op[1]~output_o\;

ww_ALU_op(2) <= \ALU_op[2]~output_o\;

ww_inc_PC <= \inc_PC~output_o\;

ww_ld_PC <= \ld_PC~output_o\;

ww_clr_IR <= \clr_IR~output_o\;

ww_ld_IR <= \ld_IR~output_o\;

ww_clr_A <= \clr_A~output_o\;

ww_clr_B <= \clr_B~output_o\;

ww_clr_C <= \clr_C~output_o\;

ww_clr_Z <= \clr_Z~output_o\;

ww_ld_A <= \ld_A~output_o\;

ww_ld_B <= \ld_B~output_o\;

ww_ld_C <= \ld_C~output_o\;

ww_ld_Z <= \ld_Z~output_o\;

ww_T(0) <= \T[0]~output_o\;

ww_T(1) <= \T[1]~output_o\;

ww_T(2) <= \T[2]~output_o\;

ww_wen <= \wen~output_o\;

ww_en <= \en~output_o\;
END structure;


