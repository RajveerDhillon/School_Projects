LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all; 
USE ieee.std_logic_signed.all;

ENTITY mux8_1 IS
PORT( x0, x1, x2, x3, x4, x5, x6, x7	: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		s											: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		y											: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END mux8_1;
		
ARCHITECTURE description OF mux8_1 IS
BEGIN
PROCESS(x0, x1, x2, x3, x4, x5, x6, x7, s)
BEGIN
	case s IS
	WHEN "000" => y <= x0;
	WHEN "001" => y <= x1;
	WHEN "010" => y <= x2;
	WHEN "011" => y <= x3;
	WHEN "100" => y <= x4;
	WHEN "101" => y <= x5;
	WHEN "110" => y <= x6;
	WHEN "111" => y <= x7;
	WHEN others => y <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
	END case;
	END PROCESS;
END description;