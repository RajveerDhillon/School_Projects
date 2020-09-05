library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity right_shift32 is
	port(
		a2			:in std_logic_vector(31 downto 0);
		result	:out std_logic_vector(31 downto 0)
	);
end right_shift32;

architecture right_shift_32_imp of right_shift32 is
begin
	result(30 downto 0)<=a2(31 downto 1);
	result(31)<='0';
end right_shift_32_imp;