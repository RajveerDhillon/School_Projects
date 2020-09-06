----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:19:17 11/22/2019 
-- Design Name: 
-- Module Name:    Sync - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sync is
port (
pclk : in std_logic;
hcounter, vcounter : out integer);
end Sync;

architecture Behavioral of Sync is

signal hcount, vcount : integer;

begin
process (pclk)
	begin
		if pclk'event and pclk = '1' then
-- horizontal counts from 0 to 799
			hcount <= hcount+1;
			if (hcount = 799) then
				vcount <= vcount+1;
				hcount <= 0;
			end if;
-- vertical counts from 0 to 524
			if (vcount = 524) then
				vcount <= 0;
			end if;
		end if;
		
end process;
hcounter <= hcount;
vcounter <= vcount;
end Behavioral;

