library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity or32 is
	port(
		a2		:in std_logic_vector(31 downto 0);
		b2		:in std_logic_vector(31 downto 0);
		result:out std_logic_vector(31 downto 0)
	);
end or32;

architecture or32_imp of or32 is
begin	
	result<=a2 or b2;
end or32_imp;