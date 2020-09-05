LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.ALL; 
USE ieee.std_logic_signed.all;

ENTITY no32 IS
PORT( Xin			: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		Yout			: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END no32;

ARCHITECTURE description OF no32 IS
BEGIN
Yout <= NOT(Xin);
END description;