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

-- DATE "01/23/2019 14:45:27"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	registerPC IS
    PORT (
	clr : IN std_logic;
	clk : IN std_logic;
	ld : IN std_logic;
	inc : IN std_logic;
	d : IN std_logic_vector(31 DOWNTO 0);
	q : INOUT std_logic_vector(31 DOWNTO 0)
	);
END registerPC;

-- Design Ports Information
-- q[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[10]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[11]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[12]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[13]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[14]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[15]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[17]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[18]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[19]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[20]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[21]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[22]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[23]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[24]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[25]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[26]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[27]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[28]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[29]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[30]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[31]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inc	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[6]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[7]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[8]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[9]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[10]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[11]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[13]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[14]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[15]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[16]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[17]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[18]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[19]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[20]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[21]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[22]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[23]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[24]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[25]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[26]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[27]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[28]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[29]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[30]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[31]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF registerPC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ld : std_logic;
SIGNAL ww_inc : std_logic;
SIGNAL ww_d : std_logic_vector(31 DOWNTO 0);
SIGNAL \clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[0]~input_o\ : std_logic;
SIGNAL \q[1]~input_o\ : std_logic;
SIGNAL \q[2]~input_o\ : std_logic;
SIGNAL \q[3]~input_o\ : std_logic;
SIGNAL \q[4]~input_o\ : std_logic;
SIGNAL \q[5]~input_o\ : std_logic;
SIGNAL \q[6]~input_o\ : std_logic;
SIGNAL \q[7]~input_o\ : std_logic;
SIGNAL \q[8]~input_o\ : std_logic;
SIGNAL \q[9]~input_o\ : std_logic;
SIGNAL \q[10]~input_o\ : std_logic;
SIGNAL \q[11]~input_o\ : std_logic;
SIGNAL \q[12]~input_o\ : std_logic;
SIGNAL \q[13]~input_o\ : std_logic;
SIGNAL \q[14]~input_o\ : std_logic;
SIGNAL \q[15]~input_o\ : std_logic;
SIGNAL \q[16]~input_o\ : std_logic;
SIGNAL \q[17]~input_o\ : std_logic;
SIGNAL \q[18]~input_o\ : std_logic;
SIGNAL \q[19]~input_o\ : std_logic;
SIGNAL \q[20]~input_o\ : std_logic;
SIGNAL \q[21]~input_o\ : std_logic;
SIGNAL \q[22]~input_o\ : std_logic;
SIGNAL \q[23]~input_o\ : std_logic;
SIGNAL \q[24]~input_o\ : std_logic;
SIGNAL \q[25]~input_o\ : std_logic;
SIGNAL \q[26]~input_o\ : std_logic;
SIGNAL \q[27]~input_o\ : std_logic;
SIGNAL \q[28]~input_o\ : std_logic;
SIGNAL \q[29]~input_o\ : std_logic;
SIGNAL \q[30]~input_o\ : std_logic;
SIGNAL \q[31]~input_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[8]~output_o\ : std_logic;
SIGNAL \q[9]~output_o\ : std_logic;
SIGNAL \q[10]~output_o\ : std_logic;
SIGNAL \q[11]~output_o\ : std_logic;
SIGNAL \q[12]~output_o\ : std_logic;
SIGNAL \q[13]~output_o\ : std_logic;
SIGNAL \q[14]~output_o\ : std_logic;
SIGNAL \q[15]~output_o\ : std_logic;
SIGNAL \q[16]~output_o\ : std_logic;
SIGNAL \q[17]~output_o\ : std_logic;
SIGNAL \q[18]~output_o\ : std_logic;
SIGNAL \q[19]~output_o\ : std_logic;
SIGNAL \q[20]~output_o\ : std_logic;
SIGNAL \q[21]~output_o\ : std_logic;
SIGNAL \q[22]~output_o\ : std_logic;
SIGNAL \q[23]~output_o\ : std_logic;
SIGNAL \q[24]~output_o\ : std_logic;
SIGNAL \q[25]~output_o\ : std_logic;
SIGNAL \q[26]~output_o\ : std_logic;
SIGNAL \q[27]~output_o\ : std_logic;
SIGNAL \q[28]~output_o\ : std_logic;
SIGNAL \q[29]~output_o\ : std_logic;
SIGNAL \q[30]~output_o\ : std_logic;
SIGNAL \q[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ld~input_o\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \q~64_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \q[0]~reg0_q\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \q~65_combout\ : std_logic;
SIGNAL \q[1]~reg0_q\ : std_logic;
SIGNAL \inc~input_o\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \q[2]~reg0_q\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \q[3]~reg0feeder_combout\ : std_logic;
SIGNAL \q[3]~reg0_q\ : std_logic;
SIGNAL \d[4]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \q[4]~reg0_q\ : std_logic;
SIGNAL \d[5]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \q[5]~reg0_q\ : std_logic;
SIGNAL \d[6]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \q[6]~reg0_q\ : std_logic;
SIGNAL \d[7]~input_o\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \q[7]~reg0_q\ : std_logic;
SIGNAL \d[8]~input_o\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \q[8]~reg0_q\ : std_logic;
SIGNAL \d[9]~input_o\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \q[9]~reg0_q\ : std_logic;
SIGNAL \d[10]~input_o\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \q[10]~reg0_q\ : std_logic;
SIGNAL \d[11]~input_o\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \q[11]~reg0_q\ : std_logic;
SIGNAL \d[12]~input_o\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \q[12]~reg0_q\ : std_logic;
SIGNAL \d[13]~input_o\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \q[13]~reg0_q\ : std_logic;
SIGNAL \d[14]~input_o\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \q[14]~reg0_q\ : std_logic;
SIGNAL \d[15]~input_o\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \q[15]~reg0_q\ : std_logic;
SIGNAL \d[16]~input_o\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \q[16]~reg0_q\ : std_logic;
SIGNAL \d[17]~input_o\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \q[17]~reg0_q\ : std_logic;
SIGNAL \d[18]~input_o\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \q[18]~reg0_q\ : std_logic;
SIGNAL \d[19]~input_o\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \q[19]~reg0feeder_combout\ : std_logic;
SIGNAL \q[19]~reg0_q\ : std_logic;
SIGNAL \d[20]~input_o\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \q[20]~reg0_q\ : std_logic;
SIGNAL \d[21]~input_o\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \q[21]~reg0_q\ : std_logic;
SIGNAL \d[22]~input_o\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \q[22]~reg0_q\ : std_logic;
SIGNAL \d[23]~input_o\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \q[23]~reg0_q\ : std_logic;
SIGNAL \d[24]~input_o\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \q[24]~reg0_q\ : std_logic;
SIGNAL \d[25]~input_o\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \q[25]~reg0_q\ : std_logic;
SIGNAL \d[26]~input_o\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \q[26]~reg0_q\ : std_logic;
SIGNAL \d[27]~input_o\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \q[27]~reg0_q\ : std_logic;
SIGNAL \d[28]~input_o\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \q[28]~reg0_q\ : std_logic;
SIGNAL \d[29]~input_o\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \q[29]~reg0_q\ : std_logic;
SIGNAL \d[30]~input_o\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \q[30]~reg0_q\ : std_logic;
SIGNAL \d[31]~input_o\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \q[31]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_ld~input_o\ : std_logic;

BEGIN

ww_clr <= clr;
ww_clk <= clk;
ww_ld <= ld;
ww_inc <= inc;
ww_d <= d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clr~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clr~inputclkctrl_outclk\ <= NOT \clr~inputclkctrl_outclk\;
\ALT_INV_ld~input_o\ <= NOT \ld~input_o\;

-- Location: IOOBUF_X25_Y0_N2
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[0]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[1]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X34_Y8_N9
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[2]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[3]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[4]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[5]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[6]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[7]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\q[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[8]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[8]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\q[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[9]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[9]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\q[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[10]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[10]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\q[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[11]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[11]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\q[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[12]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[12]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\q[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[13]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[13]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\q[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[14]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[14]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\q[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[15]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[15]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\q[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[16]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[16]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\q[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[17]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[17]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\q[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[18]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[18]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\q[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[19]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[19]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\q[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[20]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[20]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\q[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[21]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[21]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\q[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[22]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[22]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\q[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[23]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[23]~output_o\);

-- Location: IOOBUF_X34_Y10_N2
\q[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[24]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[24]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\q[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[25]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[25]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\q[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[26]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[26]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\q[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[27]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[27]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\q[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[28]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[28]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\q[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[29]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[29]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\q[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[30]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[30]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\q[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[31]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[31]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X13_Y0_N15
\ld~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld,
	o => \ld~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\d[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: LCCOMB_X30_Y3_N16
\q~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~64_combout\ = (\ld~input_o\ & ((\d[0]~input_o\))) # (!\ld~input_o\ & (\q[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datac => \q[0]~reg0_q\,
	datad => \d[0]~input_o\,
	combout => \q~64_combout\);

-- Location: IOIBUF_X0_Y11_N15
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: CLKCTRL_G4
\clr~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr~inputclkctrl_outclk\);

-- Location: FF_X30_Y3_N17
\q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~64_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[0]~reg0_q\);

-- Location: IOIBUF_X23_Y0_N1
\d[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: LCCOMB_X23_Y4_N4
\q~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~65_combout\ = (\ld~input_o\ & ((\d[1]~input_o\))) # (!\ld~input_o\ & (\q[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datac => \q[1]~reg0_q\,
	datad => \d[1]~input_o\,
	combout => \q~65_combout\);

-- Location: FF_X23_Y4_N5
\q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~65_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[1]~reg0_q\);

-- Location: IOIBUF_X18_Y0_N15
\inc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inc,
	o => \inc~input_o\);

-- Location: IOIBUF_X34_Y7_N15
\d[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: LCCOMB_X33_Y4_N2
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\inc~input_o\ & (\d[2]~input_o\ $ (VCC))) # (!\inc~input_o\ & (\d[2]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\inc~input_o\ & \d[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \d[2]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X33_Y4_N3
\q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	asdata => \q[2]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[2]~reg0_q\);

-- Location: IOIBUF_X34_Y5_N22
\d[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: LCCOMB_X33_Y4_N4
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\d[3]~input_o\ & (!\Add0~1\)) # (!\d[3]~input_o\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\d[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[3]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X33_Y4_N0
\q[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[3]~reg0feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	combout => \q[3]~reg0feeder_combout\);

-- Location: FF_X33_Y4_N1
\q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[3]~reg0feeder_combout\,
	asdata => \q[3]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[3]~reg0_q\);

-- Location: IOIBUF_X34_Y11_N1
\d[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(4),
	o => \d[4]~input_o\);

-- Location: LCCOMB_X33_Y4_N6
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\d[4]~input_o\ & (\Add0~3\ $ (GND))) # (!\d[4]~input_o\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\d[4]~input_o\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[4]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X33_Y4_N7
\q[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	asdata => \q[4]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[4]~reg0_q\);

-- Location: IOIBUF_X34_Y11_N8
\d[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(5),
	o => \d[5]~input_o\);

-- Location: LCCOMB_X33_Y4_N8
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\d[5]~input_o\ & (!\Add0~5\)) # (!\d[5]~input_o\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\d[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d[5]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X33_Y4_N9
\q[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	asdata => \q[5]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[5]~reg0_q\);

-- Location: IOIBUF_X34_Y9_N22
\d[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(6),
	o => \d[6]~input_o\);

-- Location: LCCOMB_X33_Y4_N10
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\d[6]~input_o\ & (\Add0~7\ $ (GND))) # (!\d[6]~input_o\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\d[6]~input_o\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[6]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X33_Y4_N11
\q[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	asdata => \q[6]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[6]~reg0_q\);

-- Location: IOIBUF_X34_Y4_N22
\d[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(7),
	o => \d[7]~input_o\);

-- Location: LCCOMB_X33_Y4_N12
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\d[7]~input_o\ & (!\Add0~9\)) # (!\d[7]~input_o\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\d[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d[7]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X33_Y4_N13
\q[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	asdata => \q[7]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[7]~reg0_q\);

-- Location: IOIBUF_X34_Y6_N15
\d[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(8),
	o => \d[8]~input_o\);

-- Location: LCCOMB_X33_Y4_N14
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\d[8]~input_o\ & (\Add0~11\ $ (GND))) # (!\d[8]~input_o\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\d[8]~input_o\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[8]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X33_Y4_N15
\q[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	asdata => \q[8]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[8]~reg0_q\);

-- Location: IOIBUF_X34_Y17_N1
\d[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(9),
	o => \d[9]~input_o\);

-- Location: LCCOMB_X33_Y4_N16
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\d[9]~input_o\ & (!\Add0~13\)) # (!\d[9]~input_o\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\d[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d[9]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X33_Y4_N17
\q[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	asdata => \q[9]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[9]~reg0_q\);

-- Location: IOIBUF_X34_Y9_N8
\d[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(10),
	o => \d[10]~input_o\);

-- Location: LCCOMB_X33_Y4_N18
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\d[10]~input_o\ & (\Add0~15\ $ (GND))) # (!\d[10]~input_o\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\d[10]~input_o\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d[10]~input_o\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X33_Y4_N19
\q[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	asdata => \q[10]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[10]~reg0_q\);

-- Location: IOIBUF_X34_Y8_N15
\d[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(11),
	o => \d[11]~input_o\);

-- Location: LCCOMB_X33_Y4_N20
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\d[11]~input_o\ & (!\Add0~17\)) # (!\d[11]~input_o\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\d[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d[11]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X33_Y4_N21
\q[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	asdata => \q[11]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[11]~reg0_q\);

-- Location: IOIBUF_X34_Y9_N1
\d[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(12),
	o => \d[12]~input_o\);

-- Location: LCCOMB_X33_Y4_N22
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\d[12]~input_o\ & (\Add0~19\ $ (GND))) # (!\d[12]~input_o\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\d[12]~input_o\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d[12]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X33_Y4_N23
\q[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	asdata => \q[12]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[12]~reg0_q\);

-- Location: IOIBUF_X21_Y0_N15
\d[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(13),
	o => \d[13]~input_o\);

-- Location: LCCOMB_X33_Y4_N24
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\d[13]~input_o\ & (!\Add0~21\)) # (!\d[13]~input_o\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\d[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d[13]~input_o\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X33_Y4_N25
\q[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	asdata => \q[13]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[13]~reg0_q\);

-- Location: IOIBUF_X34_Y18_N1
\d[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(14),
	o => \d[14]~input_o\);

-- Location: LCCOMB_X33_Y4_N26
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\d[14]~input_o\ & (\Add0~23\ $ (GND))) # (!\d[14]~input_o\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\d[14]~input_o\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d[14]~input_o\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X33_Y4_N27
\q[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	asdata => \q[14]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[14]~reg0_q\);

-- Location: IOIBUF_X34_Y9_N15
\d[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(15),
	o => \d[15]~input_o\);

-- Location: LCCOMB_X33_Y4_N28
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\d[15]~input_o\ & (!\Add0~25\)) # (!\d[15]~input_o\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\d[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d[15]~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X33_Y4_N29
\q[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	asdata => \q[15]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[15]~reg0_q\);

-- Location: IOIBUF_X21_Y0_N22
\d[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(16),
	o => \d[16]~input_o\);

-- Location: LCCOMB_X33_Y4_N30
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\d[16]~input_o\ & (\Add0~27\ $ (GND))) # (!\d[16]~input_o\ & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((\d[16]~input_o\ & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[16]~input_o\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X33_Y4_N31
\q[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	asdata => \q[16]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[16]~reg0_q\);

-- Location: IOIBUF_X34_Y19_N8
\d[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(17),
	o => \d[17]~input_o\);

-- Location: LCCOMB_X33_Y3_N0
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\d[17]~input_o\ & (!\Add0~29\)) # (!\d[17]~input_o\ & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!\d[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d[17]~input_o\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X33_Y3_N1
\q[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	asdata => \q[17]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[17]~reg0_q\);

-- Location: IOIBUF_X34_Y2_N15
\d[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(18),
	o => \d[18]~input_o\);

-- Location: LCCOMB_X33_Y3_N2
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\d[18]~input_o\ & (\Add0~31\ $ (GND))) # (!\d[18]~input_o\ & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((\d[18]~input_o\ & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[18]~input_o\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X33_Y3_N3
\q[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	asdata => \q[18]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[18]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N15
\d[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(19),
	o => \d[19]~input_o\);

-- Location: LCCOMB_X33_Y3_N4
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\d[19]~input_o\ & (!\Add0~33\)) # (!\d[19]~input_o\ & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!\d[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[19]~input_o\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X33_Y3_N30
\q[19]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[19]~reg0feeder_combout\ = \Add0~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~34_combout\,
	combout => \q[19]~reg0feeder_combout\);

-- Location: FF_X33_Y3_N31
\q[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[19]~reg0feeder_combout\,
	asdata => \q[19]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[19]~reg0_q\);

-- Location: IOIBUF_X32_Y0_N8
\d[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(20),
	o => \d[20]~input_o\);

-- Location: LCCOMB_X33_Y3_N6
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\d[20]~input_o\ & (\Add0~35\ $ (GND))) # (!\d[20]~input_o\ & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((\d[20]~input_o\ & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d[20]~input_o\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X33_Y3_N7
\q[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	asdata => \q[20]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[20]~reg0_q\);

-- Location: IOIBUF_X18_Y0_N22
\d[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(21),
	o => \d[21]~input_o\);

-- Location: LCCOMB_X33_Y3_N8
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\d[21]~input_o\ & (!\Add0~37\)) # (!\d[21]~input_o\ & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!\d[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d[21]~input_o\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X33_Y3_N9
\q[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	asdata => \q[21]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[21]~reg0_q\);

-- Location: IOIBUF_X34_Y19_N1
\d[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(22),
	o => \d[22]~input_o\);

-- Location: LCCOMB_X33_Y3_N10
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\d[22]~input_o\ & (\Add0~39\ $ (GND))) # (!\d[22]~input_o\ & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((\d[22]~input_o\ & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[22]~input_o\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X33_Y3_N11
\q[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	asdata => \q[22]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[22]~reg0_q\);

-- Location: IOIBUF_X34_Y2_N22
\d[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(23),
	o => \d[23]~input_o\);

-- Location: LCCOMB_X33_Y3_N12
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\d[23]~input_o\ & (!\Add0~41\)) # (!\d[23]~input_o\ & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!\d[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d[23]~input_o\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X33_Y3_N13
\q[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	asdata => \q[23]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[23]~reg0_q\);

-- Location: IOIBUF_X0_Y11_N22
\d[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(24),
	o => \d[24]~input_o\);

-- Location: LCCOMB_X33_Y3_N14
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\d[24]~input_o\ & (\Add0~43\ $ (GND))) # (!\d[24]~input_o\ & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((\d[24]~input_o\ & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[24]~input_o\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X33_Y3_N15
\q[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	asdata => \q[24]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[24]~reg0_q\);

-- Location: IOIBUF_X34_Y19_N15
\d[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(25),
	o => \d[25]~input_o\);

-- Location: LCCOMB_X33_Y3_N16
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\d[25]~input_o\ & (!\Add0~45\)) # (!\d[25]~input_o\ & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!\d[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[25]~input_o\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X33_Y3_N17
\q[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	asdata => \q[25]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[25]~reg0_q\);

-- Location: IOIBUF_X34_Y3_N15
\d[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(26),
	o => \d[26]~input_o\);

-- Location: LCCOMB_X33_Y3_N18
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\d[26]~input_o\ & (\Add0~47\ $ (GND))) # (!\d[26]~input_o\ & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((\d[26]~input_o\ & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d[26]~input_o\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X33_Y3_N19
\q[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	asdata => \q[26]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[26]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N22
\d[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(27),
	o => \d[27]~input_o\);

-- Location: LCCOMB_X33_Y3_N20
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\d[27]~input_o\ & (!\Add0~49\)) # (!\d[27]~input_o\ & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!\d[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d[27]~input_o\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X33_Y3_N21
\q[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	asdata => \q[27]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[27]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N1
\d[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(28),
	o => \d[28]~input_o\);

-- Location: LCCOMB_X33_Y3_N22
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\d[28]~input_o\ & (\Add0~51\ $ (GND))) # (!\d[28]~input_o\ & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((\d[28]~input_o\ & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d[28]~input_o\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X33_Y3_N23
\q[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	asdata => \q[28]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[28]~reg0_q\);

-- Location: IOIBUF_X13_Y0_N22
\d[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(29),
	o => \d[29]~input_o\);

-- Location: LCCOMB_X33_Y3_N24
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\d[29]~input_o\ & (!\Add0~53\)) # (!\d[29]~input_o\ & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!\d[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d[29]~input_o\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X33_Y3_N25
\q[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	asdata => \q[29]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[29]~reg0_q\);

-- Location: IOIBUF_X34_Y7_N8
\d[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(30),
	o => \d[30]~input_o\);

-- Location: LCCOMB_X33_Y3_N26
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\d[30]~input_o\ & (\Add0~55\ $ (GND))) # (!\d[30]~input_o\ & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((\d[30]~input_o\ & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[30]~input_o\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X33_Y3_N27
\q[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	asdata => \q[30]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[30]~reg0_q\);

-- Location: IOIBUF_X34_Y3_N22
\d[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(31),
	o => \d[31]~input_o\);

-- Location: LCCOMB_X33_Y3_N28
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = \Add0~57\ $ (\d[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d[31]~input_o\,
	cin => \Add0~57\,
	combout => \Add0~58_combout\);

-- Location: FF_X33_Y3_N29
\q[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	asdata => \q[31]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[31]~reg0_q\);

-- Location: IOIBUF_X25_Y0_N1
\q[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(0),
	o => \q[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\q[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(1),
	o => \q[1]~input_o\);

-- Location: IOIBUF_X34_Y8_N8
\q[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(2),
	o => \q[2]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\q[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(3),
	o => \q[3]~input_o\);

-- Location: IOIBUF_X34_Y7_N22
\q[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(4),
	o => \q[4]~input_o\);

-- Location: IOIBUF_X34_Y5_N15
\q[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(5),
	o => \q[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\q[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(6),
	o => \q[6]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\q[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(7),
	o => \q[7]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\q[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(8),
	o => \q[8]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\q[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(9),
	o => \q[9]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\q[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(10),
	o => \q[10]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\q[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(11),
	o => \q[11]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\q[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(12),
	o => \q[12]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\q[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(13),
	o => \q[13]~input_o\);

-- Location: IOIBUF_X25_Y0_N22
\q[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(14),
	o => \q[14]~input_o\);

-- Location: IOIBUF_X34_Y8_N22
\q[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(15),
	o => \q[15]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\q[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(16),
	o => \q[16]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\q[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(17),
	o => \q[17]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\q[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(18),
	o => \q[18]~input_o\);

-- Location: IOIBUF_X25_Y0_N8
\q[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(19),
	o => \q[19]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\q[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(20),
	o => \q[20]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\q[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(21),
	o => \q[21]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\q[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(22),
	o => \q[22]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\q[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(23),
	o => \q[23]~input_o\);

-- Location: IOIBUF_X34_Y10_N1
\q[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(24),
	o => \q[24]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\q[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(25),
	o => \q[25]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\q[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(26),
	o => \q[26]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\q[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(27),
	o => \q[27]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\q[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(28),
	o => \q[28]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\q[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(29),
	o => \q[29]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\q[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(30),
	o => \q[30]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\q[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(31),
	o => \q[31]~input_o\);

q(0) <= \q[0]~output_o\;

q(1) <= \q[1]~output_o\;

q(2) <= \q[2]~output_o\;

q(3) <= \q[3]~output_o\;

q(4) <= \q[4]~output_o\;

q(5) <= \q[5]~output_o\;

q(6) <= \q[6]~output_o\;

q(7) <= \q[7]~output_o\;

q(8) <= \q[8]~output_o\;

q(9) <= \q[9]~output_o\;

q(10) <= \q[10]~output_o\;

q(11) <= \q[11]~output_o\;

q(12) <= \q[12]~output_o\;

q(13) <= \q[13]~output_o\;

q(14) <= \q[14]~output_o\;

q(15) <= \q[15]~output_o\;

q(16) <= \q[16]~output_o\;

q(17) <= \q[17]~output_o\;

q(18) <= \q[18]~output_o\;

q(19) <= \q[19]~output_o\;

q(20) <= \q[20]~output_o\;

q(21) <= \q[21]~output_o\;

q(22) <= \q[22]~output_o\;

q(23) <= \q[23]~output_o\;

q(24) <= \q[24]~output_o\;

q(25) <= \q[25]~output_o\;

q(26) <= \q[26]~output_o\;

q(27) <= \q[27]~output_o\;

q(28) <= \q[28]~output_o\;

q(29) <= \q[29]~output_o\;

q(30) <= \q[30]~output_o\;

q(31) <= \q[31]~output_o\;
END structure;


