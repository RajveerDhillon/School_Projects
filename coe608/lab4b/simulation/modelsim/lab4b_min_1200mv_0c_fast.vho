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

-- DATE "03/12/2019 19:13:26"

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

ENTITY 	reg IS
    PORT (
	ld : IN std_logic;
	clr : IN std_logic;
	clk : IN std_logic;
	data_in : IN std_logic_vector(31 DOWNTO 0);
	data_out : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END reg;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[8]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[9]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[10]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[11]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[12]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[13]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[14]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[15]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[16]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[17]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[18]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[19]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[20]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[21]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[22]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[23]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[24]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[25]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[26]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[27]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[28]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[29]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[30]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[31]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[16]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[17]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[18]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[19]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[20]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[21]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[22]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[23]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[24]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[25]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[26]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[27]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[28]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[29]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[30]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[31]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF reg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ld : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_data_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(31 DOWNTO 0);
SIGNAL \ld~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \data_out[8]~output_o\ : std_logic;
SIGNAL \data_out[9]~output_o\ : std_logic;
SIGNAL \data_out[10]~output_o\ : std_logic;
SIGNAL \data_out[11]~output_o\ : std_logic;
SIGNAL \data_out[12]~output_o\ : std_logic;
SIGNAL \data_out[13]~output_o\ : std_logic;
SIGNAL \data_out[14]~output_o\ : std_logic;
SIGNAL \data_out[15]~output_o\ : std_logic;
SIGNAL \data_out[16]~output_o\ : std_logic;
SIGNAL \data_out[17]~output_o\ : std_logic;
SIGNAL \data_out[18]~output_o\ : std_logic;
SIGNAL \data_out[19]~output_o\ : std_logic;
SIGNAL \data_out[20]~output_o\ : std_logic;
SIGNAL \data_out[21]~output_o\ : std_logic;
SIGNAL \data_out[22]~output_o\ : std_logic;
SIGNAL \data_out[23]~output_o\ : std_logic;
SIGNAL \data_out[24]~output_o\ : std_logic;
SIGNAL \data_out[25]~output_o\ : std_logic;
SIGNAL \data_out[26]~output_o\ : std_logic;
SIGNAL \data_out[27]~output_o\ : std_logic;
SIGNAL \data_out[28]~output_o\ : std_logic;
SIGNAL \data_out[29]~output_o\ : std_logic;
SIGNAL \data_out[30]~output_o\ : std_logic;
SIGNAL \data_out[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \data_out[0]~287_combout\ : std_logic;
SIGNAL \data_out[0]~en_q\ : std_logic;
SIGNAL \data_out[0]~255_combout\ : std_logic;
SIGNAL \ld~input_o\ : std_logic;
SIGNAL \ld~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_out[0]~32_combout\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \data_out[0]~34_combout\ : std_logic;
SIGNAL \data_out[0]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[0]~33_combout\ : std_logic;
SIGNAL \data_out[1]~288_combout\ : std_logic;
SIGNAL \data_out[1]~en_q\ : std_logic;
SIGNAL \data_out[1]~256_combout\ : std_logic;
SIGNAL \data_out[1]~36_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_out[1]~38_combout\ : std_logic;
SIGNAL \data_out[1]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[1]~37_combout\ : std_logic;
SIGNAL \data_out[2]~289_combout\ : std_logic;
SIGNAL \data_out[2]~en_q\ : std_logic;
SIGNAL \data_out[2]~257_combout\ : std_logic;
SIGNAL \data_out[2]~40_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_out[2]~42_combout\ : std_logic;
SIGNAL \data_out[2]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[2]~41_combout\ : std_logic;
SIGNAL \data_out[3]~290_combout\ : std_logic;
SIGNAL \data_out[3]~en_q\ : std_logic;
SIGNAL \data_out[3]~258_combout\ : std_logic;
SIGNAL \data_out[3]~44_combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_out[3]~46_combout\ : std_logic;
SIGNAL \data_out[3]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[3]~45_combout\ : std_logic;
SIGNAL \data_out[4]~291_combout\ : std_logic;
SIGNAL \data_out[4]~en_q\ : std_logic;
SIGNAL \data_out[4]~259_combout\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_out[4]~48_combout\ : std_logic;
SIGNAL \data_out[4]~50_combout\ : std_logic;
SIGNAL \data_out[4]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[4]~49_combout\ : std_logic;
SIGNAL \data_out[5]~292_combout\ : std_logic;
SIGNAL \data_out[5]~en_q\ : std_logic;
SIGNAL \data_out[5]~260_combout\ : std_logic;
SIGNAL \data_out[5]~52_combout\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_out[5]~54_combout\ : std_logic;
SIGNAL \data_out[5]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[5]~53_combout\ : std_logic;
SIGNAL \data_out[6]~293_combout\ : std_logic;
SIGNAL \data_out[6]~en_q\ : std_logic;
SIGNAL \data_out[6]~261_combout\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \data_out[6]~56_combout\ : std_logic;
SIGNAL \data_out[6]~58_combout\ : std_logic;
SIGNAL \data_out[6]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[6]~57_combout\ : std_logic;
SIGNAL \data_out[7]~294_combout\ : std_logic;
SIGNAL \data_out[7]~en_q\ : std_logic;
SIGNAL \data_out[7]~262_combout\ : std_logic;
SIGNAL \data_out[7]~60_combout\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \data_out[7]~62_combout\ : std_logic;
SIGNAL \data_out[7]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[7]~61_combout\ : std_logic;
SIGNAL \data_out[8]~295_combout\ : std_logic;
SIGNAL \data_out[8]~en_q\ : std_logic;
SIGNAL \data_out[8]~263_combout\ : std_logic;
SIGNAL \data_out[8]~64_combout\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \data_out[8]~66_combout\ : std_logic;
SIGNAL \data_out[8]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[8]~65_combout\ : std_logic;
SIGNAL \data_out[9]~296_combout\ : std_logic;
SIGNAL \data_out[9]~en_q\ : std_logic;
SIGNAL \data_out[9]~264_combout\ : std_logic;
SIGNAL \data_out[9]~68_combout\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \data_out[9]~70_combout\ : std_logic;
SIGNAL \data_out[9]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[9]~69_combout\ : std_logic;
SIGNAL \data_out[10]~297_combout\ : std_logic;
SIGNAL \data_out[10]~en_q\ : std_logic;
SIGNAL \data_out[10]~265_combout\ : std_logic;
SIGNAL \data_out[10]~72_combout\ : std_logic;
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \data_out[10]~74_combout\ : std_logic;
SIGNAL \data_out[10]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[10]~73_combout\ : std_logic;
SIGNAL \data_out[11]~298_combout\ : std_logic;
SIGNAL \data_out[11]~en_q\ : std_logic;
SIGNAL \data_out[11]~266_combout\ : std_logic;
SIGNAL \data_in[11]~input_o\ : std_logic;
SIGNAL \data_out[11]~76_combout\ : std_logic;
SIGNAL \data_out[11]~78_combout\ : std_logic;
SIGNAL \data_out[11]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[11]~77_combout\ : std_logic;
SIGNAL \data_out[12]~299_combout\ : std_logic;
SIGNAL \data_out[12]~en_q\ : std_logic;
SIGNAL \data_out[12]~267_combout\ : std_logic;
SIGNAL \data_out[12]~80_combout\ : std_logic;
SIGNAL \data_in[12]~input_o\ : std_logic;
SIGNAL \data_out[12]~82_combout\ : std_logic;
SIGNAL \data_out[12]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[12]~81_combout\ : std_logic;
SIGNAL \data_out[13]~300_combout\ : std_logic;
SIGNAL \data_out[13]~en_q\ : std_logic;
SIGNAL \data_out[13]~268_combout\ : std_logic;
SIGNAL \data_out[13]~84_combout\ : std_logic;
SIGNAL \data_in[13]~input_o\ : std_logic;
SIGNAL \data_out[13]~86_combout\ : std_logic;
SIGNAL \data_out[13]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[13]~85_combout\ : std_logic;
SIGNAL \data_out[14]~301_combout\ : std_logic;
SIGNAL \data_out[14]~en_q\ : std_logic;
SIGNAL \data_out[14]~269_combout\ : std_logic;
SIGNAL \data_in[14]~input_o\ : std_logic;
SIGNAL \data_out[14]~88_combout\ : std_logic;
SIGNAL \data_out[14]~90_combout\ : std_logic;
SIGNAL \data_out[14]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[14]~89_combout\ : std_logic;
SIGNAL \data_out[15]~302_combout\ : std_logic;
SIGNAL \data_out[15]~en_q\ : std_logic;
SIGNAL \data_out[15]~270_combout\ : std_logic;
SIGNAL \data_out[15]~92_combout\ : std_logic;
SIGNAL \data_in[15]~input_o\ : std_logic;
SIGNAL \data_out[15]~94_combout\ : std_logic;
SIGNAL \data_out[15]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[15]~93_combout\ : std_logic;
SIGNAL \data_out[16]~303_combout\ : std_logic;
SIGNAL \data_out[16]~en_q\ : std_logic;
SIGNAL \data_out[16]~271_combout\ : std_logic;
SIGNAL \data_out[16]~96_combout\ : std_logic;
SIGNAL \data_in[16]~input_o\ : std_logic;
SIGNAL \data_out[16]~98_combout\ : std_logic;
SIGNAL \data_out[16]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[16]~97_combout\ : std_logic;
SIGNAL \data_out[17]~304_combout\ : std_logic;
SIGNAL \data_out[17]~en_q\ : std_logic;
SIGNAL \data_out[17]~272_combout\ : std_logic;
SIGNAL \data_in[17]~input_o\ : std_logic;
SIGNAL \data_out[17]~100_combout\ : std_logic;
SIGNAL \data_out[17]~102_combout\ : std_logic;
SIGNAL \data_out[17]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[17]~101_combout\ : std_logic;
SIGNAL \data_out[18]~305_combout\ : std_logic;
SIGNAL \data_out[18]~en_q\ : std_logic;
SIGNAL \data_out[18]~273_combout\ : std_logic;
SIGNAL \data_out[18]~104_combout\ : std_logic;
SIGNAL \data_in[18]~input_o\ : std_logic;
SIGNAL \data_out[18]~106_combout\ : std_logic;
SIGNAL \data_out[18]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[18]~105_combout\ : std_logic;
SIGNAL \data_out[19]~306_combout\ : std_logic;
SIGNAL \data_out[19]~en_q\ : std_logic;
SIGNAL \data_out[19]~274_combout\ : std_logic;
SIGNAL \data_out[19]~108_combout\ : std_logic;
SIGNAL \data_in[19]~input_o\ : std_logic;
SIGNAL \data_out[19]~110_combout\ : std_logic;
SIGNAL \data_out[19]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[19]~109_combout\ : std_logic;
SIGNAL \data_out[20]~307_combout\ : std_logic;
SIGNAL \data_out[20]~en_q\ : std_logic;
SIGNAL \data_out[20]~275_combout\ : std_logic;
SIGNAL \data_out[20]~112_combout\ : std_logic;
SIGNAL \data_in[20]~input_o\ : std_logic;
SIGNAL \data_out[20]~114_combout\ : std_logic;
SIGNAL \data_out[20]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[20]~113_combout\ : std_logic;
SIGNAL \data_out[21]~308_combout\ : std_logic;
SIGNAL \data_out[21]~en_q\ : std_logic;
SIGNAL \data_out[21]~276_combout\ : std_logic;
SIGNAL \data_out[21]~116_combout\ : std_logic;
SIGNAL \data_in[21]~input_o\ : std_logic;
SIGNAL \data_out[21]~118_combout\ : std_logic;
SIGNAL \data_out[21]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[21]~117_combout\ : std_logic;
SIGNAL \data_out[22]~309_combout\ : std_logic;
SIGNAL \data_out[22]~en_q\ : std_logic;
SIGNAL \data_out[22]~277_combout\ : std_logic;
SIGNAL \data_in[22]~input_o\ : std_logic;
SIGNAL \data_out[22]~120_combout\ : std_logic;
SIGNAL \data_out[22]~122_combout\ : std_logic;
SIGNAL \data_out[22]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[22]~121_combout\ : std_logic;
SIGNAL \data_out[23]~310_combout\ : std_logic;
SIGNAL \data_out[23]~en_q\ : std_logic;
SIGNAL \data_out[23]~278_combout\ : std_logic;
SIGNAL \data_out[23]~124_combout\ : std_logic;
SIGNAL \data_in[23]~input_o\ : std_logic;
SIGNAL \data_out[23]~126_combout\ : std_logic;
SIGNAL \data_out[23]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[23]~125_combout\ : std_logic;
SIGNAL \data_out[24]~311_combout\ : std_logic;
SIGNAL \data_out[24]~en_q\ : std_logic;
SIGNAL \data_out[24]~279_combout\ : std_logic;
SIGNAL \data_out[24]~128_combout\ : std_logic;
SIGNAL \data_in[24]~input_o\ : std_logic;
SIGNAL \data_out[24]~130_combout\ : std_logic;
SIGNAL \data_out[24]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[24]~129_combout\ : std_logic;
SIGNAL \data_out[25]~312_combout\ : std_logic;
SIGNAL \data_out[25]~en_q\ : std_logic;
SIGNAL \data_out[25]~280_combout\ : std_logic;
SIGNAL \data_in[25]~input_o\ : std_logic;
SIGNAL \data_out[25]~132_combout\ : std_logic;
SIGNAL \data_out[25]~134_combout\ : std_logic;
SIGNAL \data_out[25]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[25]~133_combout\ : std_logic;
SIGNAL \data_out[26]~313_combout\ : std_logic;
SIGNAL \data_out[26]~en_q\ : std_logic;
SIGNAL \data_out[26]~281_combout\ : std_logic;
SIGNAL \data_out[26]~136_combout\ : std_logic;
SIGNAL \data_in[26]~input_o\ : std_logic;
SIGNAL \data_out[26]~138_combout\ : std_logic;
SIGNAL \data_out[26]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[26]~137_combout\ : std_logic;
SIGNAL \data_out[27]~314_combout\ : std_logic;
SIGNAL \data_out[27]~en_q\ : std_logic;
SIGNAL \data_out[27]~282_combout\ : std_logic;
SIGNAL \data_out[27]~140_combout\ : std_logic;
SIGNAL \data_in[27]~input_o\ : std_logic;
SIGNAL \data_out[27]~142_combout\ : std_logic;
SIGNAL \data_out[27]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[27]~141_combout\ : std_logic;
SIGNAL \data_out[28]~315_combout\ : std_logic;
SIGNAL \data_out[28]~en_q\ : std_logic;
SIGNAL \data_out[28]~283_combout\ : std_logic;
SIGNAL \data_out[28]~144_combout\ : std_logic;
SIGNAL \data_in[28]~input_o\ : std_logic;
SIGNAL \data_out[28]~146_combout\ : std_logic;
SIGNAL \data_out[28]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[28]~145_combout\ : std_logic;
SIGNAL \data_out[29]~316_combout\ : std_logic;
SIGNAL \data_out[29]~en_q\ : std_logic;
SIGNAL \data_out[29]~284_combout\ : std_logic;
SIGNAL \data_out[29]~148_combout\ : std_logic;
SIGNAL \data_in[29]~input_o\ : std_logic;
SIGNAL \data_out[29]~150_combout\ : std_logic;
SIGNAL \data_out[29]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[29]~149_combout\ : std_logic;
SIGNAL \data_out[30]~317_combout\ : std_logic;
SIGNAL \data_out[30]~en_q\ : std_logic;
SIGNAL \data_out[30]~285_combout\ : std_logic;
SIGNAL \data_out[30]~152_combout\ : std_logic;
SIGNAL \data_in[30]~input_o\ : std_logic;
SIGNAL \data_out[30]~154_combout\ : std_logic;
SIGNAL \data_out[30]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[30]~153_combout\ : std_logic;
SIGNAL \data_out[31]~318_combout\ : std_logic;
SIGNAL \data_out[31]~en_q\ : std_logic;
SIGNAL \data_out[31]~286_combout\ : std_logic;
SIGNAL \data_out[31]~156_combout\ : std_logic;
SIGNAL \data_in[31]~input_o\ : std_logic;
SIGNAL \data_out[31]~158_combout\ : std_logic;
SIGNAL \data_out[31]~reg0_emulated_q\ : std_logic;
SIGNAL \data_out[31]~157_combout\ : std_logic;

BEGIN

ww_ld <= ld;
ww_clr <= clr;
ww_clk <= clk;
ww_data_in <= data_in;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ld~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ld~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X1_Y0_N23
\data_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[0]~33_combout\,
	oe => \data_out[0]~en_q\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\data_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[1]~37_combout\,
	oe => \data_out[1]~en_q\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\data_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[2]~41_combout\,
	oe => \data_out[2]~en_q\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\data_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[3]~45_combout\,
	oe => \data_out[3]~en_q\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\data_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[4]~49_combout\,
	oe => \data_out[4]~en_q\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\data_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[5]~53_combout\,
	oe => \data_out[5]~en_q\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X5_Y24_N2
\data_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[6]~57_combout\,
	oe => \data_out[6]~en_q\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X5_Y24_N23
\data_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[7]~61_combout\,
	oe => \data_out[7]~en_q\,
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\data_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[8]~65_combout\,
	oe => \data_out[8]~en_q\,
	devoe => ww_devoe,
	o => \data_out[8]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\data_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[9]~69_combout\,
	oe => \data_out[9]~en_q\,
	devoe => ww_devoe,
	o => \data_out[9]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\data_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[10]~73_combout\,
	oe => \data_out[10]~en_q\,
	devoe => ww_devoe,
	o => \data_out[10]~output_o\);

-- Location: IOOBUF_X0_Y19_N16
\data_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[11]~77_combout\,
	oe => \data_out[11]~en_q\,
	devoe => ww_devoe,
	o => \data_out[11]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\data_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[12]~81_combout\,
	oe => \data_out[12]~en_q\,
	devoe => ww_devoe,
	o => \data_out[12]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\data_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[13]~85_combout\,
	oe => \data_out[13]~en_q\,
	devoe => ww_devoe,
	o => \data_out[13]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\data_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[14]~89_combout\,
	oe => \data_out[14]~en_q\,
	devoe => ww_devoe,
	o => \data_out[14]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\data_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[15]~93_combout\,
	oe => \data_out[15]~en_q\,
	devoe => ww_devoe,
	o => \data_out[15]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\data_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[16]~97_combout\,
	oe => \data_out[16]~en_q\,
	devoe => ww_devoe,
	o => \data_out[16]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\data_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[17]~101_combout\,
	oe => \data_out[17]~en_q\,
	devoe => ww_devoe,
	o => \data_out[17]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\data_out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[18]~105_combout\,
	oe => \data_out[18]~en_q\,
	devoe => ww_devoe,
	o => \data_out[18]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\data_out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[19]~109_combout\,
	oe => \data_out[19]~en_q\,
	devoe => ww_devoe,
	o => \data_out[19]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\data_out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[20]~113_combout\,
	oe => \data_out[20]~en_q\,
	devoe => ww_devoe,
	o => \data_out[20]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\data_out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[21]~117_combout\,
	oe => \data_out[21]~en_q\,
	devoe => ww_devoe,
	o => \data_out[21]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\data_out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[22]~121_combout\,
	oe => \data_out[22]~en_q\,
	devoe => ww_devoe,
	o => \data_out[22]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\data_out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[23]~125_combout\,
	oe => \data_out[23]~en_q\,
	devoe => ww_devoe,
	o => \data_out[23]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\data_out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[24]~129_combout\,
	oe => \data_out[24]~en_q\,
	devoe => ww_devoe,
	o => \data_out[24]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\data_out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[25]~133_combout\,
	oe => \data_out[25]~en_q\,
	devoe => ww_devoe,
	o => \data_out[25]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\data_out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[26]~137_combout\,
	oe => \data_out[26]~en_q\,
	devoe => ww_devoe,
	o => \data_out[26]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\data_out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[27]~141_combout\,
	oe => \data_out[27]~en_q\,
	devoe => ww_devoe,
	o => \data_out[27]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\data_out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[28]~145_combout\,
	oe => \data_out[28]~en_q\,
	devoe => ww_devoe,
	o => \data_out[28]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\data_out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[29]~149_combout\,
	oe => \data_out[29]~en_q\,
	devoe => ww_devoe,
	o => \data_out[29]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\data_out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[30]~153_combout\,
	oe => \data_out[30]~en_q\,
	devoe => ww_devoe,
	o => \data_out[30]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\data_out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[31]~157_combout\,
	oe => \data_out[31]~en_q\,
	devoe => ww_devoe,
	o => \data_out[31]~output_o\);

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

-- Location: IOIBUF_X7_Y0_N8
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: LCCOMB_X1_Y8_N24
\data_out[0]~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~287_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clr~input_o\,
	combout => \data_out[0]~287_combout\);

-- Location: FF_X1_Y8_N25
\data_out[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[0]~287_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[0]~en_q\);

-- Location: LCCOMB_X1_Y8_N10
\data_out[0]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~255_combout\ = (\data_out[0]~33_combout\) # (!\data_out[0]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[0]~33_combout\,
	datad => \data_out[0]~en_q\,
	combout => \data_out[0]~255_combout\);

-- Location: IOIBUF_X0_Y11_N15
\ld~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld,
	o => \ld~input_o\);

-- Location: CLKCTRL_G4
\ld~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ld~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ld~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y8_N16
\data_out[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~32_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[0]~32_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[0]~255_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[0]~32_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[0]~255_combout\,
	combout => \data_out[0]~32_combout\);

-- Location: IOIBUF_X0_Y4_N15
\data_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X1_Y8_N30
\data_out[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~34_combout\ = \data_out[0]~32_combout\ $ (\data_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[0]~32_combout\,
	datac => \data_in[0]~input_o\,
	combout => \data_out[0]~34_combout\);

-- Location: FF_X1_Y8_N31
\data_out[0]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[0]~34_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[0]~reg0_emulated_q\);

-- Location: LCCOMB_X1_Y8_N12
\data_out[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~33_combout\ = (\ld~input_o\ & ((\data_out[0]~reg0_emulated_q\ $ (\data_out[0]~32_combout\)))) # (!\ld~input_o\ & (\data_out[0]~255_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[0]~255_combout\,
	datab => \ld~input_o\,
	datac => \data_out[0]~reg0_emulated_q\,
	datad => \data_out[0]~32_combout\,
	combout => \data_out[0]~33_combout\);

-- Location: LCCOMB_X1_Y11_N28
\data_out[1]~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~288_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clr~input_o\,
	combout => \data_out[1]~288_combout\);

-- Location: FF_X1_Y11_N29
\data_out[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[1]~288_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[1]~en_q\);

-- Location: LCCOMB_X1_Y11_N10
\data_out[1]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~256_combout\ = (\data_out[1]~37_combout\) # (!\data_out[1]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[1]~37_combout\,
	datad => \data_out[1]~en_q\,
	combout => \data_out[1]~256_combout\);

-- Location: LCCOMB_X1_Y11_N12
\data_out[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~36_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[1]~36_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[1]~256_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[1]~36_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[1]~256_combout\,
	combout => \data_out[1]~36_combout\);

-- Location: IOIBUF_X0_Y22_N1
\data_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X1_Y11_N22
\data_out[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~38_combout\ = \data_out[1]~36_combout\ $ (\data_in[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[1]~36_combout\,
	datab => \data_in[1]~input_o\,
	combout => \data_out[1]~38_combout\);

-- Location: FF_X1_Y11_N23
\data_out[1]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[1]~38_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[1]~reg0_emulated_q\);

-- Location: LCCOMB_X1_Y11_N4
\data_out[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~37_combout\ = (\ld~input_o\ & ((\data_out[1]~reg0_emulated_q\ $ (\data_out[1]~36_combout\)))) # (!\ld~input_o\ & (\data_out[1]~256_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datab => \data_out[1]~256_combout\,
	datac => \data_out[1]~reg0_emulated_q\,
	datad => \data_out[1]~36_combout\,
	combout => \data_out[1]~37_combout\);

-- Location: LCCOMB_X1_Y11_N30
\data_out[2]~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~289_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clr~input_o\,
	combout => \data_out[2]~289_combout\);

-- Location: FF_X1_Y11_N31
\data_out[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[2]~289_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[2]~en_q\);

-- Location: LCCOMB_X1_Y11_N16
\data_out[2]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~257_combout\ = (\data_out[2]~41_combout\) # (!\data_out[2]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[2]~en_q\,
	datad => \data_out[2]~41_combout\,
	combout => \data_out[2]~257_combout\);

-- Location: LCCOMB_X1_Y11_N26
\data_out[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~40_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[2]~40_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[2]~257_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~40_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[2]~257_combout\,
	combout => \data_out[2]~40_combout\);

-- Location: IOIBUF_X0_Y8_N15
\data_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X1_Y11_N6
\data_out[2]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~42_combout\ = \data_in[2]~input_o\ $ (\data_out[2]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	datad => \data_out[2]~40_combout\,
	combout => \data_out[2]~42_combout\);

-- Location: FF_X1_Y11_N7
\data_out[2]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[2]~42_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[2]~reg0_emulated_q\);

-- Location: LCCOMB_X1_Y11_N8
\data_out[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~41_combout\ = (\ld~input_o\ & ((\data_out[2]~40_combout\ $ (\data_out[2]~reg0_emulated_q\)))) # (!\ld~input_o\ & (\data_out[2]~257_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datab => \data_out[2]~257_combout\,
	datac => \data_out[2]~40_combout\,
	datad => \data_out[2]~reg0_emulated_q\,
	combout => \data_out[2]~41_combout\);

-- Location: LCCOMB_X1_Y8_N18
\data_out[3]~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~290_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clr~input_o\,
	combout => \data_out[3]~290_combout\);

-- Location: FF_X1_Y8_N19
\data_out[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[3]~290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[3]~en_q\);

-- Location: LCCOMB_X1_Y8_N28
\data_out[3]~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~258_combout\ = (\data_out[3]~45_combout\) # (!\data_out[3]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[3]~en_q\,
	datad => \data_out[3]~45_combout\,
	combout => \data_out[3]~258_combout\);

-- Location: LCCOMB_X1_Y8_N26
\data_out[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~44_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[3]~44_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[3]~258_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[3]~44_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[3]~258_combout\,
	combout => \data_out[3]~44_combout\);

-- Location: IOIBUF_X0_Y23_N15
\data_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X1_Y8_N6
\data_out[3]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~46_combout\ = \data_in[3]~input_o\ $ (\data_out[3]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[3]~input_o\,
	datad => \data_out[3]~44_combout\,
	combout => \data_out[3]~46_combout\);

-- Location: FF_X1_Y8_N7
\data_out[3]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[3]~46_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[3]~reg0_emulated_q\);

-- Location: LCCOMB_X1_Y8_N8
\data_out[3]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~45_combout\ = (\ld~input_o\ & ((\data_out[3]~44_combout\ $ (\data_out[3]~reg0_emulated_q\)))) # (!\ld~input_o\ & (\data_out[3]~258_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[3]~258_combout\,
	datab => \ld~input_o\,
	datac => \data_out[3]~44_combout\,
	datad => \data_out[3]~reg0_emulated_q\,
	combout => \data_out[3]~45_combout\);

-- Location: LCCOMB_X1_Y9_N16
\data_out[4]~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~291_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	combout => \data_out[4]~291_combout\);

-- Location: FF_X1_Y9_N17
\data_out[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[4]~291_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[4]~en_q\);

-- Location: LCCOMB_X1_Y9_N18
\data_out[4]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~259_combout\ = (\data_out[4]~49_combout\) # (!\data_out[4]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[4]~49_combout\,
	datad => \data_out[4]~en_q\,
	combout => \data_out[4]~259_combout\);

-- Location: IOIBUF_X13_Y0_N22
\data_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: LCCOMB_X1_Y9_N28
\data_out[4]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~48_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[4]~48_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[4]~259_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[4]~48_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[4]~259_combout\,
	combout => \data_out[4]~48_combout\);

-- Location: LCCOMB_X1_Y9_N30
\data_out[4]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~50_combout\ = \data_in[4]~input_o\ $ (\data_out[4]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[4]~input_o\,
	datad => \data_out[4]~48_combout\,
	combout => \data_out[4]~50_combout\);

-- Location: FF_X1_Y9_N31
\data_out[4]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[4]~50_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[4]~reg0_emulated_q\);

-- Location: LCCOMB_X1_Y9_N20
\data_out[4]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~49_combout\ = (\ld~input_o\ & ((\data_out[4]~reg0_emulated_q\ $ (\data_out[4]~48_combout\)))) # (!\ld~input_o\ & (\data_out[4]~259_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datab => \data_out[4]~259_combout\,
	datac => \data_out[4]~reg0_emulated_q\,
	datad => \data_out[4]~48_combout\,
	combout => \data_out[4]~49_combout\);

-- Location: LCCOMB_X1_Y9_N10
\data_out[5]~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~292_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	combout => \data_out[5]~292_combout\);

-- Location: FF_X1_Y9_N11
\data_out[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[5]~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[5]~en_q\);

-- Location: LCCOMB_X1_Y9_N0
\data_out[5]~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~260_combout\ = (\data_out[5]~53_combout\) # (!\data_out[5]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[5]~en_q\,
	datad => \data_out[5]~53_combout\,
	combout => \data_out[5]~260_combout\);

-- Location: LCCOMB_X1_Y9_N26
\data_out[5]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~52_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[5]~52_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[5]~260_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[5]~52_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[5]~260_combout\,
	combout => \data_out[5]~52_combout\);

-- Location: IOIBUF_X0_Y23_N8
\data_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: LCCOMB_X1_Y9_N6
\data_out[5]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~54_combout\ = \data_in[5]~input_o\ $ (\data_out[5]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	datad => \data_out[5]~52_combout\,
	combout => \data_out[5]~54_combout\);

-- Location: FF_X1_Y9_N7
\data_out[5]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[5]~54_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[5]~reg0_emulated_q\);

-- Location: LCCOMB_X1_Y9_N8
\data_out[5]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~53_combout\ = (\ld~input_o\ & ((\data_out[5]~52_combout\ $ (\data_out[5]~reg0_emulated_q\)))) # (!\ld~input_o\ & (\data_out[5]~260_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datab => \data_out[5]~260_combout\,
	datac => \data_out[5]~52_combout\,
	datad => \data_out[5]~reg0_emulated_q\,
	combout => \data_out[5]~53_combout\);

-- Location: LCCOMB_X5_Y11_N20
\data_out[6]~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~293_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clr~input_o\,
	combout => \data_out[6]~293_combout\);

-- Location: FF_X5_Y11_N21
\data_out[6]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[6]~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[6]~en_q\);

-- Location: LCCOMB_X5_Y11_N0
\data_out[6]~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~261_combout\ = (\data_out[6]~57_combout\) # (!\data_out[6]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[6]~57_combout\,
	datad => \data_out[6]~en_q\,
	combout => \data_out[6]~261_combout\);

-- Location: IOIBUF_X5_Y24_N8
\data_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LCCOMB_X5_Y11_N28
\data_out[6]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~56_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[6]~56_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[6]~261_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[6]~56_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[6]~261_combout\,
	combout => \data_out[6]~56_combout\);

-- Location: LCCOMB_X5_Y11_N4
\data_out[6]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~58_combout\ = \data_in[6]~input_o\ $ (\data_out[6]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	datad => \data_out[6]~56_combout\,
	combout => \data_out[6]~58_combout\);

-- Location: FF_X5_Y11_N5
\data_out[6]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[6]~58_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[6]~reg0_emulated_q\);

-- Location: LCCOMB_X5_Y11_N30
\data_out[6]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~57_combout\ = (\ld~input_o\ & ((\data_out[6]~reg0_emulated_q\ $ (\data_out[6]~56_combout\)))) # (!\ld~input_o\ & (\data_out[6]~261_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~261_combout\,
	datab => \ld~input_o\,
	datac => \data_out[6]~reg0_emulated_q\,
	datad => \data_out[6]~56_combout\,
	combout => \data_out[6]~57_combout\);

-- Location: LCCOMB_X5_Y11_N22
\data_out[7]~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~294_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clr~input_o\,
	combout => \data_out[7]~294_combout\);

-- Location: FF_X5_Y11_N23
\data_out[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[7]~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[7]~en_q\);

-- Location: LCCOMB_X5_Y11_N6
\data_out[7]~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~262_combout\ = (\data_out[7]~61_combout\) # (!\data_out[7]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[7]~en_q\,
	datac => \data_out[7]~61_combout\,
	combout => \data_out[7]~262_combout\);

-- Location: LCCOMB_X5_Y11_N2
\data_out[7]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~60_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[7]~60_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[7]~262_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[7]~60_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[7]~262_combout\,
	combout => \data_out[7]~60_combout\);

-- Location: IOIBUF_X16_Y0_N22
\data_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LCCOMB_X5_Y11_N8
\data_out[7]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~62_combout\ = \data_out[7]~60_combout\ $ (\data_in[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[7]~60_combout\,
	datac => \data_in[7]~input_o\,
	combout => \data_out[7]~62_combout\);

-- Location: FF_X5_Y11_N9
\data_out[7]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[7]~62_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[7]~reg0_emulated_q\);

-- Location: LCCOMB_X5_Y11_N10
\data_out[7]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~61_combout\ = (\ld~input_o\ & ((\data_out[7]~reg0_emulated_q\ $ (\data_out[7]~60_combout\)))) # (!\ld~input_o\ & (\data_out[7]~262_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datab => \data_out[7]~262_combout\,
	datac => \data_out[7]~reg0_emulated_q\,
	datad => \data_out[7]~60_combout\,
	combout => \data_out[7]~61_combout\);

-- Location: LCCOMB_X1_Y11_N0
\data_out[8]~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[8]~295_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clr~input_o\,
	combout => \data_out[8]~295_combout\);

-- Location: FF_X1_Y11_N1
\data_out[8]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[8]~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[8]~en_q\);

-- Location: LCCOMB_X1_Y11_N2
\data_out[8]~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[8]~263_combout\ = (\data_out[8]~65_combout\) # (!\data_out[8]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[8]~65_combout\,
	datad => \data_out[8]~en_q\,
	combout => \data_out[8]~263_combout\);

-- Location: LCCOMB_X1_Y11_N20
\data_out[8]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[8]~64_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[8]~64_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[8]~263_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[8]~64_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[8]~263_combout\,
	combout => \data_out[8]~64_combout\);

-- Location: IOIBUF_X0_Y19_N22
\data_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: LCCOMB_X1_Y11_N14
\data_out[8]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[8]~66_combout\ = \data_out[8]~64_combout\ $ (\data_in[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[8]~64_combout\,
	datac => \data_in[8]~input_o\,
	combout => \data_out[8]~66_combout\);

-- Location: FF_X1_Y11_N15
\data_out[8]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[8]~66_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[8]~reg0_emulated_q\);

-- Location: LCCOMB_X1_Y11_N24
\data_out[8]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[8]~65_combout\ = (\ld~input_o\ & ((\data_out[8]~reg0_emulated_q\ $ (\data_out[8]~64_combout\)))) # (!\ld~input_o\ & (\data_out[8]~263_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datab => \data_out[8]~263_combout\,
	datac => \data_out[8]~reg0_emulated_q\,
	datad => \data_out[8]~64_combout\,
	combout => \data_out[8]~65_combout\);

-- Location: LCCOMB_X2_Y11_N28
\data_out[9]~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[9]~296_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clr~input_o\,
	combout => \data_out[9]~296_combout\);

-- Location: FF_X2_Y11_N29
\data_out[9]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[9]~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[9]~en_q\);

-- Location: LCCOMB_X2_Y11_N10
\data_out[9]~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[9]~264_combout\ = (\data_out[9]~69_combout\) # (!\data_out[9]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[9]~69_combout\,
	datad => \data_out[9]~en_q\,
	combout => \data_out[9]~264_combout\);

-- Location: LCCOMB_X2_Y11_N20
\data_out[9]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[9]~68_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[9]~68_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[9]~264_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[9]~68_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[9]~264_combout\,
	combout => \data_out[9]~68_combout\);

-- Location: IOIBUF_X1_Y24_N1
\data_in[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: LCCOMB_X2_Y11_N22
\data_out[9]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[9]~70_combout\ = \data_out[9]~68_combout\ $ (\data_in[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[9]~68_combout\,
	datad => \data_in[9]~input_o\,
	combout => \data_out[9]~70_combout\);

-- Location: FF_X2_Y11_N23
\data_out[9]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[9]~70_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[9]~reg0_emulated_q\);

-- Location: LCCOMB_X2_Y11_N4
\data_out[9]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[9]~69_combout\ = (\ld~input_o\ & ((\data_out[9]~reg0_emulated_q\ $ (\data_out[9]~68_combout\)))) # (!\ld~input_o\ & (\data_out[9]~264_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[9]~264_combout\,
	datab => \ld~input_o\,
	datac => \data_out[9]~reg0_emulated_q\,
	datad => \data_out[9]~68_combout\,
	combout => \data_out[9]~69_combout\);

-- Location: LCCOMB_X1_Y7_N12
\data_out[10]~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[10]~297_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	combout => \data_out[10]~297_combout\);

-- Location: FF_X1_Y7_N13
\data_out[10]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[10]~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[10]~en_q\);

-- Location: LCCOMB_X1_Y7_N28
\data_out[10]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[10]~265_combout\ = (\data_out[10]~73_combout\) # (!\data_out[10]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[10]~73_combout\,
	datad => \data_out[10]~en_q\,
	combout => \data_out[10]~265_combout\);

-- Location: LCCOMB_X1_Y7_N20
\data_out[10]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[10]~72_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[10]~72_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[10]~265_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[10]~72_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[10]~265_combout\,
	combout => \data_out[10]~72_combout\);

-- Location: IOIBUF_X9_Y0_N1
\data_in[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: LCCOMB_X1_Y7_N4
\data_out[10]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[10]~74_combout\ = \data_out[10]~72_combout\ $ (\data_in[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[10]~72_combout\,
	datac => \data_in[10]~input_o\,
	combout => \data_out[10]~74_combout\);

-- Location: FF_X1_Y7_N5
\data_out[10]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[10]~74_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[10]~reg0_emulated_q\);

-- Location: LCCOMB_X1_Y7_N26
\data_out[10]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[10]~73_combout\ = (\ld~input_o\ & ((\data_out[10]~reg0_emulated_q\ $ (\data_out[10]~72_combout\)))) # (!\ld~input_o\ & (\data_out[10]~265_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datab => \data_out[10]~265_combout\,
	datac => \data_out[10]~reg0_emulated_q\,
	datad => \data_out[10]~72_combout\,
	combout => \data_out[10]~73_combout\);

-- Location: LCCOMB_X2_Y11_N26
\data_out[11]~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[11]~298_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clr~input_o\,
	combout => \data_out[11]~298_combout\);

-- Location: FF_X2_Y11_N27
\data_out[11]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[11]~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[11]~en_q\);

-- Location: LCCOMB_X2_Y11_N24
\data_out[11]~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[11]~266_combout\ = (\data_out[11]~77_combout\) # (!\data_out[11]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[11]~en_q\,
	datad => \data_out[11]~77_combout\,
	combout => \data_out[11]~266_combout\);

-- Location: IOIBUF_X13_Y0_N15
\data_in[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

-- Location: LCCOMB_X2_Y11_N2
\data_out[11]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[11]~76_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[11]~76_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[11]~266_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[11]~76_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[11]~266_combout\,
	combout => \data_out[11]~76_combout\);

-- Location: LCCOMB_X2_Y11_N30
\data_out[11]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[11]~78_combout\ = \data_in[11]~input_o\ $ (\data_out[11]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[11]~input_o\,
	datac => \data_out[11]~76_combout\,
	combout => \data_out[11]~78_combout\);

-- Location: FF_X2_Y11_N31
\data_out[11]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[11]~78_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[11]~reg0_emulated_q\);

-- Location: LCCOMB_X2_Y11_N16
\data_out[11]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[11]~77_combout\ = (\ld~input_o\ & ((\data_out[11]~reg0_emulated_q\ $ (\data_out[11]~76_combout\)))) # (!\ld~input_o\ & (\data_out[11]~266_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[11]~266_combout\,
	datab => \ld~input_o\,
	datac => \data_out[11]~reg0_emulated_q\,
	datad => \data_out[11]~76_combout\,
	combout => \data_out[11]~77_combout\);

-- Location: LCCOMB_X2_Y11_N8
\data_out[12]~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[12]~299_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clr~input_o\,
	combout => \data_out[12]~299_combout\);

-- Location: FF_X2_Y11_N9
\data_out[12]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[12]~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[12]~en_q\);

-- Location: LCCOMB_X2_Y11_N18
\data_out[12]~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[12]~267_combout\ = (\data_out[12]~81_combout\) # (!\data_out[12]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[12]~81_combout\,
	datad => \data_out[12]~en_q\,
	combout => \data_out[12]~267_combout\);

-- Location: LCCOMB_X2_Y11_N12
\data_out[12]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[12]~80_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[12]~80_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[12]~267_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[12]~80_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[12]~267_combout\,
	combout => \data_out[12]~80_combout\);

-- Location: IOIBUF_X11_Y0_N8
\data_in[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

-- Location: LCCOMB_X2_Y11_N14
\data_out[12]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[12]~82_combout\ = \data_out[12]~80_combout\ $ (\data_in[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[12]~80_combout\,
	datab => \data_in[12]~input_o\,
	combout => \data_out[12]~82_combout\);

-- Location: FF_X2_Y11_N15
\data_out[12]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[12]~82_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[12]~reg0_emulated_q\);

-- Location: LCCOMB_X2_Y11_N0
\data_out[12]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[12]~81_combout\ = (\ld~input_o\ & ((\data_out[12]~reg0_emulated_q\ $ (\data_out[12]~80_combout\)))) # (!\ld~input_o\ & (\data_out[12]~267_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[12]~267_combout\,
	datab => \ld~input_o\,
	datac => \data_out[12]~reg0_emulated_q\,
	datad => \data_out[12]~80_combout\,
	combout => \data_out[12]~81_combout\);

-- Location: LCCOMB_X1_Y7_N22
\data_out[13]~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[13]~300_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	combout => \data_out[13]~300_combout\);

-- Location: FF_X1_Y7_N23
\data_out[13]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[13]~300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[13]~en_q\);

-- Location: LCCOMB_X1_Y7_N18
\data_out[13]~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[13]~268_combout\ = (\data_out[13]~85_combout\) # (!\data_out[13]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[13]~en_q\,
	datad => \data_out[13]~85_combout\,
	combout => \data_out[13]~268_combout\);

-- Location: LCCOMB_X1_Y7_N6
\data_out[13]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[13]~84_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[13]~84_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[13]~268_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[13]~84_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[13]~268_combout\,
	combout => \data_out[13]~84_combout\);

-- Location: IOIBUF_X9_Y0_N22
\data_in[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

-- Location: LCCOMB_X1_Y7_N8
\data_out[13]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[13]~86_combout\ = \data_out[13]~84_combout\ $ (\data_in[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[13]~84_combout\,
	datab => \data_in[13]~input_o\,
	combout => \data_out[13]~86_combout\);

-- Location: FF_X1_Y7_N9
\data_out[13]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[13]~86_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[13]~reg0_emulated_q\);

-- Location: LCCOMB_X1_Y7_N30
\data_out[13]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[13]~85_combout\ = (\ld~input_o\ & ((\data_out[13]~reg0_emulated_q\ $ (\data_out[13]~84_combout\)))) # (!\ld~input_o\ & (\data_out[13]~268_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datab => \data_out[13]~268_combout\,
	datac => \data_out[13]~reg0_emulated_q\,
	datad => \data_out[13]~84_combout\,
	combout => \data_out[13]~85_combout\);

-- Location: LCCOMB_X3_Y11_N24
\data_out[14]~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[14]~301_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	combout => \data_out[14]~301_combout\);

-- Location: FF_X3_Y11_N25
\data_out[14]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[14]~301_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[14]~en_q\);

-- Location: LCCOMB_X3_Y11_N20
\data_out[14]~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[14]~269_combout\ = (\data_out[14]~89_combout\) # (!\data_out[14]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[14]~89_combout\,
	datad => \data_out[14]~en_q\,
	combout => \data_out[14]~269_combout\);

-- Location: IOIBUF_X7_Y0_N15
\data_in[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

-- Location: LCCOMB_X3_Y11_N28
\data_out[14]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[14]~88_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[14]~88_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[14]~269_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[14]~88_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[14]~269_combout\,
	combout => \data_out[14]~88_combout\);

-- Location: LCCOMB_X3_Y11_N4
\data_out[14]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[14]~90_combout\ = \data_in[14]~input_o\ $ (\data_out[14]~88_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[14]~input_o\,
	datad => \data_out[14]~88_combout\,
	combout => \data_out[14]~90_combout\);

-- Location: FF_X3_Y11_N5
\data_out[14]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[14]~90_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[14]~reg0_emulated_q\);

-- Location: LCCOMB_X3_Y11_N22
\data_out[14]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[14]~89_combout\ = (\ld~input_o\ & ((\data_out[14]~reg0_emulated_q\ $ (\data_out[14]~88_combout\)))) # (!\ld~input_o\ & (\data_out[14]~269_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datab => \data_out[14]~269_combout\,
	datac => \data_out[14]~reg0_emulated_q\,
	datad => \data_out[14]~88_combout\,
	combout => \data_out[14]~89_combout\);

-- Location: LCCOMB_X3_Y11_N30
\data_out[15]~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[15]~302_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	combout => \data_out[15]~302_combout\);

-- Location: FF_X3_Y11_N31
\data_out[15]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[15]~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[15]~en_q\);

-- Location: LCCOMB_X3_Y11_N18
\data_out[15]~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[15]~270_combout\ = (\data_out[15]~93_combout\) # (!\data_out[15]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[15]~93_combout\,
	datac => \data_out[15]~en_q\,
	combout => \data_out[15]~270_combout\);

-- Location: LCCOMB_X3_Y11_N26
\data_out[15]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[15]~92_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[15]~92_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[15]~270_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[15]~92_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[15]~270_combout\,
	combout => \data_out[15]~92_combout\);

-- Location: IOIBUF_X18_Y0_N15
\data_in[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);

-- Location: LCCOMB_X3_Y11_N0
\data_out[15]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[15]~94_combout\ = \data_in[15]~input_o\ $ (\data_out[15]~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[15]~input_o\,
	datad => \data_out[15]~92_combout\,
	combout => \data_out[15]~94_combout\);

-- Location: FF_X3_Y11_N1
\data_out[15]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[15]~94_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[15]~reg0_emulated_q\);

-- Location: LCCOMB_X3_Y11_N2
\data_out[15]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[15]~93_combout\ = (\ld~input_o\ & ((\data_out[15]~92_combout\ $ (\data_out[15]~reg0_emulated_q\)))) # (!\ld~input_o\ & (\data_out[15]~270_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[15]~270_combout\,
	datab => \ld~input_o\,
	datac => \data_out[15]~92_combout\,
	datad => \data_out[15]~reg0_emulated_q\,
	combout => \data_out[15]~93_combout\);

-- Location: LCCOMB_X3_Y9_N24
\data_out[16]~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[16]~303_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	combout => \data_out[16]~303_combout\);

-- Location: FF_X3_Y9_N25
\data_out[16]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[16]~303_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[16]~en_q\);

-- Location: LCCOMB_X3_Y9_N20
\data_out[16]~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[16]~271_combout\ = (\data_out[16]~97_combout\) # (!\data_out[16]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[16]~97_combout\,
	datad => \data_out[16]~en_q\,
	combout => \data_out[16]~271_combout\);

-- Location: LCCOMB_X3_Y9_N8
\data_out[16]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[16]~96_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[16]~96_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[16]~271_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[16]~96_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[16]~271_combout\,
	combout => \data_out[16]~96_combout\);

-- Location: IOIBUF_X3_Y24_N8
\data_in[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(16),
	o => \data_in[16]~input_o\);

-- Location: LCCOMB_X3_Y9_N28
\data_out[16]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[16]~98_combout\ = \data_in[16]~input_o\ $ (\data_out[16]~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[16]~input_o\,
	datad => \data_out[16]~96_combout\,
	combout => \data_out[16]~98_combout\);

-- Location: FF_X3_Y9_N29
\data_out[16]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[16]~98_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[16]~reg0_emulated_q\);

-- Location: LCCOMB_X3_Y9_N18
\data_out[16]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[16]~97_combout\ = (\ld~input_o\ & ((\data_out[16]~96_combout\ $ (\data_out[16]~reg0_emulated_q\)))) # (!\ld~input_o\ & (\data_out[16]~271_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datab => \data_out[16]~271_combout\,
	datac => \data_out[16]~96_combout\,
	datad => \data_out[16]~reg0_emulated_q\,
	combout => \data_out[16]~97_combout\);

-- Location: LCCOMB_X3_Y7_N12
\data_out[17]~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[17]~304_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clr~input_o\,
	combout => \data_out[17]~304_combout\);

-- Location: FF_X3_Y7_N13
\data_out[17]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[17]~304_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[17]~en_q\);

-- Location: LCCOMB_X3_Y7_N20
\data_out[17]~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[17]~272_combout\ = (\data_out[17]~101_combout\) # (!\data_out[17]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[17]~101_combout\,
	datad => \data_out[17]~en_q\,
	combout => \data_out[17]~272_combout\);

-- Location: IOIBUF_X11_Y0_N22
\data_in[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(17),
	o => \data_in[17]~input_o\);

-- Location: LCCOMB_X3_Y7_N28
\data_out[17]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[17]~100_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[17]~100_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[17]~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[17]~100_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[17]~272_combout\,
	combout => \data_out[17]~100_combout\);

-- Location: LCCOMB_X3_Y7_N8
\data_out[17]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[17]~102_combout\ = \data_in[17]~input_o\ $ (\data_out[17]~100_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[17]~input_o\,
	datad => \data_out[17]~100_combout\,
	combout => \data_out[17]~102_combout\);

-- Location: FF_X3_Y7_N9
\data_out[17]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[17]~102_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[17]~reg0_emulated_q\);

-- Location: LCCOMB_X3_Y7_N30
\data_out[17]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[17]~101_combout\ = (\ld~input_o\ & ((\data_out[17]~reg0_emulated_q\ $ (\data_out[17]~100_combout\)))) # (!\ld~input_o\ & (\data_out[17]~272_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datab => \data_out[17]~272_combout\,
	datac => \data_out[17]~reg0_emulated_q\,
	datad => \data_out[17]~100_combout\,
	combout => \data_out[17]~101_combout\);

-- Location: LCCOMB_X3_Y7_N6
\data_out[18]~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[18]~305_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clr~input_o\,
	combout => \data_out[18]~305_combout\);

-- Location: FF_X3_Y7_N7
\data_out[18]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[18]~305_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[18]~en_q\);

-- Location: LCCOMB_X3_Y7_N18
\data_out[18]~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[18]~273_combout\ = (\data_out[18]~105_combout\) # (!\data_out[18]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[18]~105_combout\,
	datad => \data_out[18]~en_q\,
	combout => \data_out[18]~273_combout\);

-- Location: LCCOMB_X3_Y7_N26
\data_out[18]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[18]~104_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[18]~104_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[18]~273_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[18]~104_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[18]~273_combout\,
	combout => \data_out[18]~104_combout\);

-- Location: IOIBUF_X3_Y0_N1
\data_in[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(18),
	o => \data_in[18]~input_o\);

-- Location: LCCOMB_X3_Y7_N24
\data_out[18]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[18]~106_combout\ = \data_in[18]~input_o\ $ (\data_out[18]~104_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[18]~input_o\,
	datad => \data_out[18]~104_combout\,
	combout => \data_out[18]~106_combout\);

-- Location: FF_X3_Y7_N25
\data_out[18]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[18]~106_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[18]~reg0_emulated_q\);

-- Location: LCCOMB_X3_Y7_N14
\data_out[18]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[18]~105_combout\ = (\ld~input_o\ & ((\data_out[18]~104_combout\ $ (\data_out[18]~reg0_emulated_q\)))) # (!\ld~input_o\ & (\data_out[18]~273_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datab => \data_out[18]~273_combout\,
	datac => \data_out[18]~104_combout\,
	datad => \data_out[18]~reg0_emulated_q\,
	combout => \data_out[18]~105_combout\);

-- Location: LCCOMB_X3_Y9_N22
\data_out[19]~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[19]~306_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	combout => \data_out[19]~306_combout\);

-- Location: FF_X3_Y9_N23
\data_out[19]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[19]~306_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[19]~en_q\);

-- Location: LCCOMB_X3_Y9_N6
\data_out[19]~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[19]~274_combout\ = (\data_out[19]~109_combout\) # (!\data_out[19]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[19]~109_combout\,
	datad => \data_out[19]~en_q\,
	combout => \data_out[19]~274_combout\);

-- Location: LCCOMB_X3_Y9_N26
\data_out[19]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[19]~108_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[19]~108_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[19]~274_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[19]~108_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[19]~274_combout\,
	combout => \data_out[19]~108_combout\);

-- Location: IOIBUF_X3_Y24_N1
\data_in[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(19),
	o => \data_in[19]~input_o\);

-- Location: LCCOMB_X3_Y9_N0
\data_out[19]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[19]~110_combout\ = \data_in[19]~input_o\ $ (\data_out[19]~108_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[19]~input_o\,
	datad => \data_out[19]~108_combout\,
	combout => \data_out[19]~110_combout\);

-- Location: FF_X3_Y9_N1
\data_out[19]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[19]~110_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[19]~reg0_emulated_q\);

-- Location: LCCOMB_X3_Y9_N30
\data_out[19]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[19]~109_combout\ = (\ld~input_o\ & ((\data_out[19]~108_combout\ $ (\data_out[19]~reg0_emulated_q\)))) # (!\ld~input_o\ & (\data_out[19]~274_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datab => \data_out[19]~274_combout\,
	datac => \data_out[19]~108_combout\,
	datad => \data_out[19]~reg0_emulated_q\,
	combout => \data_out[19]~109_combout\);

-- Location: LCCOMB_X4_Y7_N16
\data_out[20]~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[20]~307_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	combout => \data_out[20]~307_combout\);

-- Location: FF_X4_Y7_N17
\data_out[20]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[20]~307_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[20]~en_q\);

-- Location: LCCOMB_X4_Y7_N18
\data_out[20]~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[20]~275_combout\ = (\data_out[20]~113_combout\) # (!\data_out[20]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[20]~113_combout\,
	datad => \data_out[20]~en_q\,
	combout => \data_out[20]~275_combout\);

-- Location: LCCOMB_X4_Y7_N20
\data_out[20]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[20]~112_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[20]~112_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[20]~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[20]~112_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[20]~275_combout\,
	combout => \data_out[20]~112_combout\);

-- Location: IOIBUF_X16_Y0_N15
\data_in[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(20),
	o => \data_in[20]~input_o\);

-- Location: LCCOMB_X4_Y7_N22
\data_out[20]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[20]~114_combout\ = \data_out[20]~112_combout\ $ (\data_in[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[20]~112_combout\,
	datad => \data_in[20]~input_o\,
	combout => \data_out[20]~114_combout\);

-- Location: FF_X4_Y7_N23
\data_out[20]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[20]~114_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[20]~reg0_emulated_q\);

-- Location: LCCOMB_X4_Y7_N12
\data_out[20]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[20]~113_combout\ = (\ld~input_o\ & ((\data_out[20]~reg0_emulated_q\ $ (\data_out[20]~112_combout\)))) # (!\ld~input_o\ & (\data_out[20]~275_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[20]~275_combout\,
	datab => \ld~input_o\,
	datac => \data_out[20]~reg0_emulated_q\,
	datad => \data_out[20]~112_combout\,
	combout => \data_out[20]~113_combout\);

-- Location: LCCOMB_X4_Y7_N30
\data_out[21]~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[21]~308_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	combout => \data_out[21]~308_combout\);

-- Location: FF_X4_Y7_N31
\data_out[21]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[21]~308_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[21]~en_q\);

-- Location: LCCOMB_X4_Y7_N0
\data_out[21]~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[21]~276_combout\ = (\data_out[21]~117_combout\) # (!\data_out[21]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[21]~117_combout\,
	datac => \data_out[21]~en_q\,
	combout => \data_out[21]~276_combout\);

-- Location: LCCOMB_X4_Y7_N26
\data_out[21]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[21]~116_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[21]~116_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[21]~276_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[21]~116_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[21]~276_combout\,
	combout => \data_out[21]~116_combout\);

-- Location: IOIBUF_X13_Y0_N1
\data_in[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(21),
	o => \data_in[21]~input_o\);

-- Location: LCCOMB_X4_Y7_N10
\data_out[21]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[21]~118_combout\ = \data_in[21]~input_o\ $ (\data_out[21]~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[21]~input_o\,
	datad => \data_out[21]~116_combout\,
	combout => \data_out[21]~118_combout\);

-- Location: FF_X4_Y7_N11
\data_out[21]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[21]~118_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[21]~reg0_emulated_q\);

-- Location: LCCOMB_X4_Y7_N4
\data_out[21]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[21]~117_combout\ = (\ld~input_o\ & ((\data_out[21]~116_combout\ $ (\data_out[21]~reg0_emulated_q\)))) # (!\ld~input_o\ & (\data_out[21]~276_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datab => \data_out[21]~276_combout\,
	datac => \data_out[21]~116_combout\,
	datad => \data_out[21]~reg0_emulated_q\,
	combout => \data_out[21]~117_combout\);

-- Location: LCCOMB_X4_Y7_N8
\data_out[22]~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[22]~309_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	combout => \data_out[22]~309_combout\);

-- Location: FF_X4_Y7_N9
\data_out[22]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[22]~309_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[22]~en_q\);

-- Location: LCCOMB_X4_Y7_N6
\data_out[22]~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[22]~277_combout\ = (\data_out[22]~121_combout\) # (!\data_out[22]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[22]~en_q\,
	datac => \data_out[22]~121_combout\,
	combout => \data_out[22]~277_combout\);

-- Location: IOIBUF_X11_Y0_N1
\data_in[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(22),
	o => \data_in[22]~input_o\);

-- Location: LCCOMB_X4_Y7_N24
\data_out[22]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[22]~120_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[22]~120_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[22]~277_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[22]~120_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[22]~277_combout\,
	combout => \data_out[22]~120_combout\);

-- Location: LCCOMB_X4_Y7_N14
\data_out[22]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[22]~122_combout\ = \data_in[22]~input_o\ $ (\data_out[22]~120_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[22]~input_o\,
	datab => \data_out[22]~120_combout\,
	combout => \data_out[22]~122_combout\);

-- Location: FF_X4_Y7_N15
\data_out[22]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[22]~122_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[22]~reg0_emulated_q\);

-- Location: LCCOMB_X4_Y7_N28
\data_out[22]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[22]~121_combout\ = (\ld~input_o\ & ((\data_out[22]~reg0_emulated_q\ $ (\data_out[22]~120_combout\)))) # (!\ld~input_o\ & (\data_out[22]~277_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[22]~277_combout\,
	datab => \ld~input_o\,
	datac => \data_out[22]~reg0_emulated_q\,
	datad => \data_out[22]~120_combout\,
	combout => \data_out[22]~121_combout\);

-- Location: LCCOMB_X4_Y11_N16
\data_out[23]~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[23]~310_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clr~input_o\,
	combout => \data_out[23]~310_combout\);

-- Location: FF_X4_Y11_N17
\data_out[23]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[23]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[23]~en_q\);

-- Location: LCCOMB_X4_Y11_N18
\data_out[23]~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[23]~278_combout\ = (\data_out[23]~125_combout\) # (!\data_out[23]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[23]~125_combout\,
	datad => \data_out[23]~en_q\,
	combout => \data_out[23]~278_combout\);

-- Location: LCCOMB_X4_Y11_N4
\data_out[23]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[23]~124_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[23]~124_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[23]~278_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[23]~124_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[23]~278_combout\,
	combout => \data_out[23]~124_combout\);

-- Location: IOIBUF_X7_Y24_N1
\data_in[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(23),
	o => \data_in[23]~input_o\);

-- Location: LCCOMB_X4_Y11_N2
\data_out[23]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[23]~126_combout\ = \data_in[23]~input_o\ $ (\data_out[23]~124_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[23]~input_o\,
	datad => \data_out[23]~124_combout\,
	combout => \data_out[23]~126_combout\);

-- Location: FF_X4_Y11_N3
\data_out[23]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[23]~126_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[23]~reg0_emulated_q\);

-- Location: LCCOMB_X4_Y11_N12
\data_out[23]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[23]~125_combout\ = (\ld~input_o\ & ((\data_out[23]~124_combout\ $ (\data_out[23]~reg0_emulated_q\)))) # (!\ld~input_o\ & (\data_out[23]~278_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[23]~278_combout\,
	datab => \ld~input_o\,
	datac => \data_out[23]~124_combout\,
	datad => \data_out[23]~reg0_emulated_q\,
	combout => \data_out[23]~125_combout\);

-- Location: LCCOMB_X4_Y11_N26
\data_out[24]~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[24]~311_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clr~input_o\,
	combout => \data_out[24]~311_combout\);

-- Location: FF_X4_Y11_N27
\data_out[24]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[24]~311_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[24]~en_q\);

-- Location: LCCOMB_X4_Y11_N28
\data_out[24]~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[24]~279_combout\ = (\data_out[24]~129_combout\) # (!\data_out[24]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[24]~en_q\,
	datad => \data_out[24]~129_combout\,
	combout => \data_out[24]~279_combout\);

-- Location: LCCOMB_X4_Y11_N6
\data_out[24]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[24]~128_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[24]~128_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[24]~279_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[24]~128_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[24]~279_combout\,
	combout => \data_out[24]~128_combout\);

-- Location: IOIBUF_X11_Y0_N15
\data_in[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(24),
	o => \data_in[24]~input_o\);

-- Location: LCCOMB_X4_Y11_N22
\data_out[24]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[24]~130_combout\ = \data_out[24]~128_combout\ $ (\data_in[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[24]~128_combout\,
	datad => \data_in[24]~input_o\,
	combout => \data_out[24]~130_combout\);

-- Location: FF_X4_Y11_N23
\data_out[24]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[24]~130_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[24]~reg0_emulated_q\);

-- Location: LCCOMB_X4_Y11_N24
\data_out[24]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[24]~129_combout\ = (\ld~input_o\ & ((\data_out[24]~reg0_emulated_q\ $ (\data_out[24]~128_combout\)))) # (!\ld~input_o\ & (\data_out[24]~279_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datab => \data_out[24]~279_combout\,
	datac => \data_out[24]~reg0_emulated_q\,
	datad => \data_out[24]~128_combout\,
	combout => \data_out[24]~129_combout\);

-- Location: LCCOMB_X4_Y11_N20
\data_out[25]~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[25]~312_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clr~input_o\,
	combout => \data_out[25]~312_combout\);

-- Location: FF_X4_Y11_N21
\data_out[25]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[25]~312_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[25]~en_q\);

-- Location: LCCOMB_X4_Y11_N10
\data_out[25]~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[25]~280_combout\ = (\data_out[25]~133_combout\) # (!\data_out[25]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[25]~133_combout\,
	datad => \data_out[25]~en_q\,
	combout => \data_out[25]~280_combout\);

-- Location: IOIBUF_X0_Y11_N22
\data_in[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(25),
	o => \data_in[25]~input_o\);

-- Location: LCCOMB_X4_Y11_N8
\data_out[25]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[25]~132_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[25]~132_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[25]~280_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[25]~132_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[25]~280_combout\,
	combout => \data_out[25]~132_combout\);

-- Location: LCCOMB_X4_Y11_N30
\data_out[25]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[25]~134_combout\ = \data_in[25]~input_o\ $ (\data_out[25]~132_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[25]~input_o\,
	datad => \data_out[25]~132_combout\,
	combout => \data_out[25]~134_combout\);

-- Location: FF_X4_Y11_N31
\data_out[25]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[25]~134_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[25]~reg0_emulated_q\);

-- Location: LCCOMB_X4_Y11_N0
\data_out[25]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[25]~133_combout\ = (\ld~input_o\ & ((\data_out[25]~reg0_emulated_q\ $ (\data_out[25]~132_combout\)))) # (!\ld~input_o\ & (\data_out[25]~280_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[25]~280_combout\,
	datab => \ld~input_o\,
	datac => \data_out[25]~reg0_emulated_q\,
	datad => \data_out[25]~132_combout\,
	combout => \data_out[25]~133_combout\);

-- Location: LCCOMB_X1_Y6_N24
\data_out[26]~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[26]~313_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clr~input_o\,
	combout => \data_out[26]~313_combout\);

-- Location: FF_X1_Y6_N25
\data_out[26]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[26]~313_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[26]~en_q\);

-- Location: LCCOMB_X1_Y6_N28
\data_out[26]~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[26]~281_combout\ = (\data_out[26]~137_combout\) # (!\data_out[26]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[26]~137_combout\,
	datad => \data_out[26]~en_q\,
	combout => \data_out[26]~281_combout\);

-- Location: LCCOMB_X1_Y6_N4
\data_out[26]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[26]~136_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[26]~136_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[26]~281_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[26]~136_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[26]~281_combout\,
	combout => \data_out[26]~136_combout\);

-- Location: IOIBUF_X16_Y0_N8
\data_in[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(26),
	o => \data_in[26]~input_o\);

-- Location: LCCOMB_X1_Y6_N20
\data_out[26]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[26]~138_combout\ = \data_in[26]~input_o\ $ (\data_out[26]~136_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[26]~input_o\,
	datad => \data_out[26]~136_combout\,
	combout => \data_out[26]~138_combout\);

-- Location: FF_X1_Y6_N21
\data_out[26]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[26]~138_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[26]~reg0_emulated_q\);

-- Location: LCCOMB_X1_Y6_N30
\data_out[26]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[26]~137_combout\ = (\ld~input_o\ & ((\data_out[26]~136_combout\ $ (\data_out[26]~reg0_emulated_q\)))) # (!\ld~input_o\ & (\data_out[26]~281_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[26]~281_combout\,
	datab => \ld~input_o\,
	datac => \data_out[26]~136_combout\,
	datad => \data_out[26]~reg0_emulated_q\,
	combout => \data_out[26]~137_combout\);

-- Location: LCCOMB_X1_Y10_N20
\data_out[27]~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[27]~314_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	combout => \data_out[27]~314_combout\);

-- Location: FF_X1_Y10_N21
\data_out[27]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[27]~314_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[27]~en_q\);

-- Location: LCCOMB_X1_Y10_N28
\data_out[27]~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[27]~282_combout\ = (\data_out[27]~141_combout\) # (!\data_out[27]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[27]~141_combout\,
	datad => \data_out[27]~en_q\,
	combout => \data_out[27]~282_combout\);

-- Location: LCCOMB_X1_Y10_N8
\data_out[27]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[27]~140_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[27]~140_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[27]~282_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[27]~140_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[27]~282_combout\,
	combout => \data_out[27]~140_combout\);

-- Location: IOIBUF_X1_Y24_N8
\data_in[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(27),
	o => \data_in[27]~input_o\);

-- Location: LCCOMB_X1_Y10_N24
\data_out[27]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[27]~142_combout\ = \data_in[27]~input_o\ $ (\data_out[27]~140_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[27]~input_o\,
	datad => \data_out[27]~140_combout\,
	combout => \data_out[27]~142_combout\);

-- Location: FF_X1_Y10_N25
\data_out[27]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[27]~142_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[27]~reg0_emulated_q\);

-- Location: LCCOMB_X1_Y10_N26
\data_out[27]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[27]~141_combout\ = (\ld~input_o\ & ((\data_out[27]~140_combout\ $ (\data_out[27]~reg0_emulated_q\)))) # (!\ld~input_o\ & (\data_out[27]~282_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datab => \data_out[27]~282_combout\,
	datac => \data_out[27]~140_combout\,
	datad => \data_out[27]~reg0_emulated_q\,
	combout => \data_out[27]~141_combout\);

-- Location: LCCOMB_X1_Y10_N22
\data_out[28]~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[28]~315_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	combout => \data_out[28]~315_combout\);

-- Location: FF_X1_Y10_N23
\data_out[28]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[28]~315_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[28]~en_q\);

-- Location: LCCOMB_X1_Y10_N18
\data_out[28]~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[28]~283_combout\ = (\data_out[28]~145_combout\) # (!\data_out[28]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[28]~145_combout\,
	datac => \data_out[28]~en_q\,
	combout => \data_out[28]~283_combout\);

-- Location: LCCOMB_X1_Y10_N6
\data_out[28]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[28]~144_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[28]~144_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[28]~283_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[28]~144_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[28]~283_combout\,
	combout => \data_out[28]~144_combout\);

-- Location: IOIBUF_X0_Y21_N22
\data_in[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(28),
	o => \data_in[28]~input_o\);

-- Location: LCCOMB_X1_Y10_N4
\data_out[28]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[28]~146_combout\ = \data_out[28]~144_combout\ $ (\data_in[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[28]~144_combout\,
	datac => \data_in[28]~input_o\,
	combout => \data_out[28]~146_combout\);

-- Location: FF_X1_Y10_N5
\data_out[28]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[28]~146_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[28]~reg0_emulated_q\);

-- Location: LCCOMB_X1_Y10_N30
\data_out[28]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[28]~145_combout\ = (\ld~input_o\ & ((\data_out[28]~reg0_emulated_q\ $ (\data_out[28]~144_combout\)))) # (!\ld~input_o\ & (\data_out[28]~283_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datab => \data_out[28]~283_combout\,
	datac => \data_out[28]~reg0_emulated_q\,
	datad => \data_out[28]~144_combout\,
	combout => \data_out[28]~145_combout\);

-- Location: LCCOMB_X1_Y6_N18
\data_out[29]~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[29]~316_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clr~input_o\,
	combout => \data_out[29]~316_combout\);

-- Location: FF_X1_Y6_N19
\data_out[29]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[29]~316_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[29]~en_q\);

-- Location: LCCOMB_X1_Y6_N6
\data_out[29]~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[29]~284_combout\ = (\data_out[29]~149_combout\) # (!\data_out[29]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[29]~149_combout\,
	datad => \data_out[29]~en_q\,
	combout => \data_out[29]~284_combout\);

-- Location: LCCOMB_X1_Y6_N26
\data_out[29]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[29]~148_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[29]~148_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[29]~284_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[29]~148_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[29]~284_combout\,
	combout => \data_out[29]~148_combout\);

-- Location: IOIBUF_X9_Y0_N15
\data_in[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(29),
	o => \data_in[29]~input_o\);

-- Location: LCCOMB_X1_Y6_N12
\data_out[29]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[29]~150_combout\ = \data_in[29]~input_o\ $ (\data_out[29]~148_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[29]~input_o\,
	datad => \data_out[29]~148_combout\,
	combout => \data_out[29]~150_combout\);

-- Location: FF_X1_Y6_N13
\data_out[29]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[29]~150_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[29]~reg0_emulated_q\);

-- Location: LCCOMB_X1_Y6_N10
\data_out[29]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[29]~149_combout\ = (\ld~input_o\ & ((\data_out[29]~148_combout\ $ (\data_out[29]~reg0_emulated_q\)))) # (!\ld~input_o\ & (\data_out[29]~284_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[29]~284_combout\,
	datab => \ld~input_o\,
	datac => \data_out[29]~148_combout\,
	datad => \data_out[29]~reg0_emulated_q\,
	combout => \data_out[29]~149_combout\);

-- Location: LCCOMB_X1_Y8_N0
\data_out[30]~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[30]~317_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clr~input_o\,
	combout => \data_out[30]~317_combout\);

-- Location: FF_X1_Y8_N1
\data_out[30]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[30]~317_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[30]~en_q\);

-- Location: LCCOMB_X1_Y8_N2
\data_out[30]~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[30]~285_combout\ = (\data_out[30]~153_combout\) # (!\data_out[30]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[30]~153_combout\,
	datad => \data_out[30]~en_q\,
	combout => \data_out[30]~285_combout\);

-- Location: LCCOMB_X1_Y8_N20
\data_out[30]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[30]~152_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[30]~152_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[30]~285_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[30]~152_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[30]~285_combout\,
	combout => \data_out[30]~152_combout\);

-- Location: IOIBUF_X9_Y0_N8
\data_in[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(30),
	o => \data_in[30]~input_o\);

-- Location: LCCOMB_X1_Y8_N22
\data_out[30]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[30]~154_combout\ = \data_out[30]~152_combout\ $ (\data_in[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[30]~152_combout\,
	datac => \data_in[30]~input_o\,
	combout => \data_out[30]~154_combout\);

-- Location: FF_X1_Y8_N23
\data_out[30]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[30]~154_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[30]~reg0_emulated_q\);

-- Location: LCCOMB_X1_Y8_N4
\data_out[30]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[30]~153_combout\ = (\ld~input_o\ & ((\data_out[30]~reg0_emulated_q\ $ (\data_out[30]~152_combout\)))) # (!\ld~input_o\ & (\data_out[30]~285_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[30]~285_combout\,
	datab => \ld~input_o\,
	datac => \data_out[30]~reg0_emulated_q\,
	datad => \data_out[30]~152_combout\,
	combout => \data_out[30]~153_combout\);

-- Location: LCCOMB_X1_Y9_N12
\data_out[31]~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[31]~318_combout\ = !\clr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	combout => \data_out[31]~318_combout\);

-- Location: FF_X1_Y9_N13
\data_out[31]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[31]~318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[31]~en_q\);

-- Location: LCCOMB_X1_Y9_N2
\data_out[31]~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[31]~286_combout\ = (\data_out[31]~157_combout\) # (!\data_out[31]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[31]~157_combout\,
	datad => \data_out[31]~en_q\,
	combout => \data_out[31]~286_combout\);

-- Location: LCCOMB_X1_Y9_N24
\data_out[31]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[31]~156_combout\ = (GLOBAL(\ld~inputclkctrl_outclk\) & (\data_out[31]~156_combout\)) # (!GLOBAL(\ld~inputclkctrl_outclk\) & ((\data_out[31]~286_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[31]~156_combout\,
	datac => \ld~inputclkctrl_outclk\,
	datad => \data_out[31]~286_combout\,
	combout => \data_out[31]~156_combout\);

-- Location: IOIBUF_X0_Y23_N1
\data_in[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(31),
	o => \data_in[31]~input_o\);

-- Location: LCCOMB_X1_Y9_N22
\data_out[31]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[31]~158_combout\ = \data_out[31]~156_combout\ $ (\data_in[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[31]~156_combout\,
	datad => \data_in[31]~input_o\,
	combout => \data_out[31]~158_combout\);

-- Location: FF_X1_Y9_N23
\data_out[31]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[31]~158_combout\,
	clrn => \ld~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[31]~reg0_emulated_q\);

-- Location: LCCOMB_X1_Y9_N4
\data_out[31]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[31]~157_combout\ = (\ld~input_o\ & ((\data_out[31]~reg0_emulated_q\ $ (\data_out[31]~156_combout\)))) # (!\ld~input_o\ & (\data_out[31]~286_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~input_o\,
	datab => \data_out[31]~286_combout\,
	datac => \data_out[31]~reg0_emulated_q\,
	datad => \data_out[31]~156_combout\,
	combout => \data_out[31]~157_combout\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;

ww_data_out(8) <= \data_out[8]~output_o\;

ww_data_out(9) <= \data_out[9]~output_o\;

ww_data_out(10) <= \data_out[10]~output_o\;

ww_data_out(11) <= \data_out[11]~output_o\;

ww_data_out(12) <= \data_out[12]~output_o\;

ww_data_out(13) <= \data_out[13]~output_o\;

ww_data_out(14) <= \data_out[14]~output_o\;

ww_data_out(15) <= \data_out[15]~output_o\;

ww_data_out(16) <= \data_out[16]~output_o\;

ww_data_out(17) <= \data_out[17]~output_o\;

ww_data_out(18) <= \data_out[18]~output_o\;

ww_data_out(19) <= \data_out[19]~output_o\;

ww_data_out(20) <= \data_out[20]~output_o\;

ww_data_out(21) <= \data_out[21]~output_o\;

ww_data_out(22) <= \data_out[22]~output_o\;

ww_data_out(23) <= \data_out[23]~output_o\;

ww_data_out(24) <= \data_out[24]~output_o\;

ww_data_out(25) <= \data_out[25]~output_o\;

ww_data_out(26) <= \data_out[26]~output_o\;

ww_data_out(27) <= \data_out[27]~output_o\;

ww_data_out(28) <= \data_out[28]~output_o\;

ww_data_out(29) <= \data_out[29]~output_o\;

ww_data_out(30) <= \data_out[30]~output_o\;

ww_data_out(31) <= \data_out[31]~output_o\;
END structure;


