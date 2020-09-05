library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity not32 is
	port(
		x		:in std_logic_vector(31 downto 0);
		y		:out std_logic_vector(31 downto 0)
	);
end not32;

architecture not32_imp of not32 is
begin	
	y<=not x;
end not32_imp;