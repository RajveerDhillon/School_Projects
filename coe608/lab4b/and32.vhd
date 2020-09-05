library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity and32 is
	port(
		a2		:in std_logic_vector(31 downto 0);
		b2		:in std_logic_vector(31 downto 0);
		result:out std_logic_vector(31 downto 0)
	);
end and32;

architecture and32_imp of and32 is
begin	
	result<=a2 and b2;
end and32_imp;