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

-- DATE "03/09/2020 11:00:43"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	custom_ip IS
    PORT (
	CLOCK_50 : IN std_logic;
	HPS_DDR3_RZQ : IN std_logic;
	HPS_ENET_RX_CLK : IN std_logic;
	HPS_ENET_RX_DV : IN std_logic;
	HPS_DDR3_ADDR : BUFFER std_logic_vector(14 DOWNTO 0);
	HPS_DDR3_BA : BUFFER std_logic_vector(2 DOWNTO 0);
	HPS_DDR3_CS_N : BUFFER std_logic;
	HPS_DDR3_CK_P : BUFFER std_logic;
	HPS_DDR3_CK_N : BUFFER std_logic;
	HPS_DDR3_CKE : BUFFER std_logic;
	HPS_USB_DIR : IN std_logic;
	HPS_USB_NXT : IN std_logic;
	HPS_USB_CLKOUT : IN std_logic;
	HPS_ENET_RX_DATA : IN std_logic_vector(3 DOWNTO 0);
	HPS_SD_DATA : BUFFER std_logic_vector(3 DOWNTO 0);
	HPS_DDR3_DQS_N : BUFFER std_logic_vector(3 DOWNTO 0);
	HPS_DDR3_DQS_P : BUFFER std_logic_vector(3 DOWNTO 0);
	HPS_ENET_MDIO : BUFFER std_logic;
	HPS_USB_DATA : BUFFER std_logic_vector(7 DOWNTO 0);
	HPS_DDR3_DQ : BUFFER std_logic_vector(31 DOWNTO 0);
	HPS_SD_CMD : BUFFER std_logic;
	HPS_ENET_TX_DATA : BUFFER std_logic_vector(3 DOWNTO 0);
	HPS_DDR3_DM : BUFFER std_logic_vector(3 DOWNTO 0);
	HPS_DDR3_ODT : BUFFER std_logic;
	HPS_DDR3_RAS_N : BUFFER std_logic;
	HPS_DDR3_RESET_N : BUFFER std_logic;
	HPS_DDR3_CAS_N : BUFFER std_logic;
	HPS_DDR3_WE_N : BUFFER std_logic;
	HPS_ENET_MDC : BUFFER std_logic;
	HPS_ENET_TX_EN : BUFFER std_logic;
	HPS_USB_STP : BUFFER std_logic;
	HPS_SD_CLK : BUFFER std_logic;
	HPS_ENET_GTX_CLK : BUFFER std_logic
	);
END custom_ip;

-- Design Ports Information
-- HPS_DDR3_ADDR[0]	=>  Location: PIN_F26,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_ADDR[1]	=>  Location: PIN_G30,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_ADDR[2]	=>  Location: PIN_F28,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_ADDR[3]	=>  Location: PIN_F30,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_ADDR[4]	=>  Location: PIN_J25,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_ADDR[5]	=>  Location: PIN_J27,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_ADDR[6]	=>  Location: PIN_F29,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_ADDR[7]	=>  Location: PIN_E28,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_ADDR[8]	=>  Location: PIN_H27,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_ADDR[9]	=>  Location: PIN_G26,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_ADDR[10]	=>  Location: PIN_D29,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_ADDR[11]	=>  Location: PIN_C30,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_ADDR[12]	=>  Location: PIN_B30,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_ADDR[13]	=>  Location: PIN_C29,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_ADDR[14]	=>  Location: PIN_H25,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_BA[0]	=>  Location: PIN_E29,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_BA[1]	=>  Location: PIN_J24,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_BA[2]	=>  Location: PIN_J23,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_CS_N	=>  Location: PIN_H24,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_CK_P	=>  Location: PIN_M23,	 I/O Standard: Differential 1.5-V SSTL Class I,	 Current Strength: Default
-- HPS_DDR3_CK_N	=>  Location: PIN_L23,	 I/O Standard: Differential 1.5-V SSTL Class I,	 Current Strength: Default
-- HPS_DDR3_CKE	=>  Location: PIN_L29,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_ENET_TX_DATA[0]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HPS_ENET_TX_DATA[1]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HPS_ENET_TX_DATA[2]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HPS_ENET_TX_DATA[3]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HPS_DDR3_DM[0]	=>  Location: PIN_K28,	 I/O Standard: SSTL-15 Class I,	 Current Strength: Default
-- HPS_DDR3_DM[1]	=>  Location: PIN_M28,	 I/O Standard: SSTL-15 Class I,	 Current Strength: Default
-- HPS_DDR3_DM[2]	=>  Location: PIN_R28,	 I/O Standard: SSTL-15 Class I,	 Current Strength: Default
-- HPS_DDR3_DM[3]	=>  Location: PIN_W30,	 I/O Standard: SSTL-15 Class I,	 Current Strength: Default
-- HPS_DDR3_ODT	=>  Location: PIN_H28,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_RAS_N	=>  Location: PIN_D30,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_RESET_N	=>  Location: PIN_P30,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_CAS_N	=>  Location: PIN_E27,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_DDR3_WE_N	=>  Location: PIN_C28,	 I/O Standard: SSTL-15 Class I,	 Current Strength: 12mA
-- HPS_ENET_MDC	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HPS_ENET_TX_EN	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HPS_USB_STP	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HPS_SD_CLK	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HPS_ENET_GTX_CLK	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HPS_SD_DATA[0]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HPS_SD_DATA[1]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HPS_SD_DATA[2]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HPS_SD_DATA[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HPS_DDR3_DQS_N[0]	=>  Location: PIN_M19,	 I/O Standard: Differential 1.5-V SSTL Class I,	 Current Strength: Default
-- HPS_DDR3_DQS_N[1]	=>  Location: PIN_N24,	 I/O Standard: Differential 1.5-V SSTL Class I,	 Current Strength: Default
-- HPS_DDR3_DQS_N[2]	=>  Location: PIN_R18,	 I/O Standard: Differential 1.5-V SSTL Class I,	 Current Strength: Default
-- HPS_DDR3_DQS_N[3]	=>  Location: PIN_R21,	 I/O Standard: Differential 1.5-V SSTL Class I,	 Current Strength: Default
-- HPS_DDR3_DQS_P[0]	=>  Location: PIN_N18,	 I/O Standard: Differential 1.5-V SSTL Class I,	 Current Strength: Default
-- HPS_DDR3_DQS_P[1]	=>  Location: PIN_N25,	 I/O Standard: Differential 1.5-V SSTL Class I,	 Current Strength: Default
-- HPS_DDR3_DQS_P[2]	=>  Location: PIN_R19,	 I/O Standard: Differential 1.5-V SSTL Class I,	 Current Strength: Default
-- HPS_DDR3_DQS_P[3]	=>  Location: PIN_R22,	 I/O Standard: Differential 1.5-V SSTL Class I,	 Current Strength: Default
-- HPS_ENET_MDIO	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HPS_USB_DATA[0]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HPS