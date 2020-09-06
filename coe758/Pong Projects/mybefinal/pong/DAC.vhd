----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:16:48 11/22/2019 
-- Design Name: 
-- Module Name:    DAC - Behavioral 
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

entity DAC is
port ( 
clk : in std_logic;
DClk : out std_logic
);
end DAC;

architecture Behavioral of DAC is

signal pixel_clk : std_logic;

begin
process (clk)
    begin
    if clk'event and clk='1' then
        pixel_clk <= NOT(pixel_clk);
    end if;
end process;

--Mapping the pixel clock to the DAC_CLK output
DClk <= pixel_clk;


end Behavioral;

