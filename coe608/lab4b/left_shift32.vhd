library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity left_shift32 is
	port(
		a2			:in std_logic_vector(31 downto 0);
		result	:out std_logic_vector(31 downto 0)
	);
end left_shift32;

architecture left_shift_32_imp of left_shift32 is
begin
	result(31 downto 1)<=a2(30 downto 0);
	result(0)<='0';
end left_shift_32_imp;