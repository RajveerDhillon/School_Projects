library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sseg is
port (
       bcd : in std_logic_vector(3 downto 0);
       segment7 : out std_logic_vector(1 downto 7)
    );
end sseg;
architecture Behavioral of sseg is

begin
process (bcd)
BEGIN
case  bcd is        --abcdef g
when "0000"=> segment7 <="0000001";  -- '0'
when "0001"=> segment7 <="1001111";  -- '1'
when "0010"=> segment7 <="0010010";  -- '2'
when "0011"=> segment7 <="0000110";  -- '3'
when "0100"=> segment7 <="1001100";  -- '4' 
when "0101"=> segment7 <="0100100";  -- '5'
when "0110"=> segment7 <="0100000";  -- '6'
when "0111"=> segment7 <="0001111";  -- '7'
when "1000"=> segment7 <="0000000";  -- '8'
when "1001"=> segment7 <="0000100";  -- '9'
when "1010"=> segment7 <="1110111";  -- 'A'
when "1011"=> segment7 <="0011111";  -- 'B'
when "1100"=> segment7 <="0001101";  -- 'C'
when "1101"=> segment7 <="0111101";  -- 'D'
when "1110"=> segment7 <="1001111";  -- 'E'
when "1111"=> segment7 <="1000111";  -- 'F'

when others=> segment7 <="-------"; 
begin
IF (bsd == '1') then (bsd = "1111110");
end IF;
end case;
end process;

end Behavioral;
