LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.ALL; 
USE ieee.std_logic_signed.all;

ENTITY leftSH IS
PORT( a		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		result	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END leftSH;

ARCHITECTURE description OF leftSH IS
BEGIN
result(31 DOWNTO 1) <= a(30 DOWNTO 0);
result(0) <= '0';
END description;