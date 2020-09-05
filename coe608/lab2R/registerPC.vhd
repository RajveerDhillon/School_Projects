LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY register32 IS 
PORT(
		d		:IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- input
		ld		:IN STD_LOGIC; --load/enable
		clr	:IN STD_LOGIC; --async. clear
		clk	:IN STD_LOGIC; --clock
		Q		:OUT STD_LOGIC_VECTOR(31 DOWNTO 0)); --output
END register32;

ARCHITECTURE description OF register32 IS
BEGIN
	PROCESS (clr, clk)
		BEGIN
			IF clr = '1' THEN
				Q <= x"00";
			ELSIF (clk'EVENT AND clk = '1')THEN
				IF ld = '1' THEN
					IF 
					Q <= d;
				END IF;
			END IF;
		END PROCESS;
END description;