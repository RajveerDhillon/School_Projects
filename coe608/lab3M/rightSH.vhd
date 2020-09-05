LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.ALL; 
USE ieee.std_logic_signed.all;

ENTITY rightSH IS
PORT( a		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		result	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END rightSH;

ARCHITECTURE description OF rightSH IS
BEGIN
result(30 DOWNTO 0) <= a(31 DOWNTO 1);
result(31) <= '0';
END description;