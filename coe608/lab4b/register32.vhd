LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY register32 IS
PORT(
		d		:IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- Input
		ld		:IN STD_LOGIC; --load/enable
		clr	:IN STD_LOGIC; --async.clear
		clk	:IN STD_LOGIC;	--Clock
		Q		:OUT STD_LOGIC_VECTOR(31 DOWNTO 0));--Output
END register32;

ARCHITECTURE description OF register32 IS
BEGIN
	PROCESS(d,ld,clr,clk)
		BEGIN
			IF clr='1' THEN
				Q<="00000000000000000000000000000000";
				
			ELSIF rising_edge(clk) AND ld='1' THEN
				Q<=d;
			END IF;
	END PROCESS;
END description;