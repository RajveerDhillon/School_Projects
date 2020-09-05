LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg IS
 PORT (
 bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
 leds, ledneg : OUT STD_LOGIC_VECTOR(1 TO 7) ;
 neg : IN STD_LOGIC);
 END sseg;
 
 ARCHITECTURE Behavior OF sseg IS
 BEGIN 
  PROCESS (bcd)
  BEGIN 
   CASE bcd IS                --abcdefg
	 WHEN "0000" => leds <=     "0000001"; 
	 WHEN "0001" => leds <= not("0110000"); --1
	 WHEN "0010" => leds <= not("1101101"); --2
	 WHEN "0011" => leds <= not("1111001"); --3
	 WHEN "0100" => leds <= not("0110011"); --4
	 WHEN "0101" => leds <= not("1011011"); --5
	 WHEN "0110" => leds <= not("1011111"); --6
	 WHEN "0111" => leds <= not("1110000"); --7
	 WHEN "1000" => leds <= not("1111111"); --8
	 WHEN "1001" => leds <= not("1110011"); --9
	 WHEN "1010" => leds <= not("1110111"); --A
	 WHEN "1011" => leds <= not("0011111"); --b
	 WHEN "1100" => leds <= not("1001110"); --C
	 WHEN "1101" => leds <= not("0111101"); --d
	 WHEN "1110" => leds <= not("1001111"); --E
	 WHEN "1111" => leds <= not("1000111"); --F
	 WHEN OTHERS => leds <= not("0000011");
	END CASE;
  END PROCESS;
  PROCESS (neg)
  begin
  	 IF (neg = '1') THEN
		ledneg <= not("0000001");
	else 
		ledneg <= not("0000000");
	end if;
	end process;
 END Behavior;