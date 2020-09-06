----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:30:27 11/22/2019 
-- Design Name: 
-- Module Name:    refresh - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity refresh is
port (
	pixclk : in std_logic;
	refreshcount: out integer;
	refreshclk : out std_logic);
	
end refresh;

architecture Behavioral of refresh is
signal refresh_clk : std_logic;
signal refreshcnt : integer:= 0;

begin
process(pixclk)
	begin
		if pixclk'event and pixclk='1' then
			if (refreshcnt >= 416667) then
				refresh_clk <= not(refresh_clk);
				refreshcnt <= 0;
			else
				refreshcnt <= refreshcnt + 1;
			end if;
			
		end if;
end process;

refreshcount <= refreshcnt;
refreshclk <= refresh_clk;

end Behavioral;

