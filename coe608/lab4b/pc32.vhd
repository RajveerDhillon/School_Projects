LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY pc IS
PORT(
		d		:IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- Input
		inc	:IN STD_LOGIC;
		ld		:IN STD_LOGIC; --load/enable
		clr	:IN STD_LOGIC; --async.clear
		clk	:IN STD_LOGIC;	--Clock
		q		:INOUT STD_LOGIC_VECTOR(31 DOWNTO 0));--Output
END pc;

ARCHITECTURE description OF pc IS
BEGIN
	PROCESS(d,ld,clr,clk)
		BEGIN
			IF clr='1' THEN
				Q<="00000000000000000000000000000000";
				
			ELSIF rising_edge(clk) AND ld='1' THEN
				IF inc='0' THEN
					q<=d;
				ELSE
					q<=q+4;
				END IF;
			END IF;
	END PROCESS;
END description;	