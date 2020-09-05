LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_signed.all;

ENTITY or32 IS
PORT( Ain, Bin			: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		result			: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END or32;

ARCHITECTURE description OF or32 IS
BEGIN
result <= Ain OR Bin;
END description;