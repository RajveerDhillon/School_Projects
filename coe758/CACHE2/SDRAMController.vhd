----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:51:08 10/31/2015 
-- Design Name: 
-- Module Name:    SDRAMController - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SDRAMController is
    Port ( 
			  clk			: in STD_LOGIC;
			  ADDR 		: in  STD_LOGIC_VECTOR (15 downto 0);
           WR_RD 		: in  STD_LOGIC;
           MSTRB 		: in  STD_LOGIC;
           DIN 		: in  STD_LOGIC_VECTOR (7 downto 0);
           DOUT 		: out  STD_LOGIC_VECTOR (7 downto 0));
end SDRAMController;

architecture Behavioral of SDRAMController is
							--INDEX                              --WORD (Block offet)            --Actaual Data
type ram_type is array (7 downto 0, 31 downto 0) of std_logic_vector(7 downto 0);
    signal RAM: ram_type;
	 
	 signal counter : integer := 0;
begin

process (CLK)
    begin
        if CLK'event and CLK = '1' then		  
            
				if counter = 0 then
					for I in 0 to 7 loop
						for J in 0 to 31 loop
							RAM(i,j) <= "11110000";
						end loop;
					end loop;
					counter <= 1;	
				end if;
				
				if MSTRB = '1' then
					if WR_RD = '1' then
						RAM(to_integer(unsigned(ADDR(7 downto 5))),to_integer(unsigned(ADDR(4 downto 0)))) <= DIN;    
               ELSE
						DOUT <= RAM(to_integer(unsigned(ADDR(7 downto 5))),to_integer(unsigned(ADDR(4 downto 0))));
					end if;
				end if;
        end if;
    end process;


end Behavioral;

