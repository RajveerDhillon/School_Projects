-------------------------------------------------------------------------------
-- Copyright (c) 2015 Xilinx, Inc.
-- All Rights Reserved
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor     : Xilinx
-- \   \   \/     Version    : 13.3
--  \   \         Application: XILINX CORE Generator
--  /   /         Filename   : vio.vhd
-- /___/   /\     Timestamp  : Sun Nov 01 16:41:12 EST 2015
-- \   \  /  \
--  \___\/\___\
--
-- Design Name: VHDL Synthesis Wrapper
-------------------------------------------------------------------------------
-- This wrapper is used to integrate with Project Navigator and PlanAhead

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY vio IS
  port (
    CONTROL: inout std_logic_vector(35 downto 0);
    ASYNC_OUT: out std_logic_vector(26 downto 0));
END vio;

ARCHITECTURE vio_a OF vio IS
BEGIN

END vio_a;
