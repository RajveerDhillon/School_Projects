LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY sseg IS
PORT ( bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
neg : IN STD_LOGIC;
leds, led2 : OUT STD_LOGIC_VECTOR(1 TO 7) ) ;
END sseg ;
ARCHITECTURE Behavior OF sseg IS
BEGIN
PROCESS ( bcd, neg )
BEGIN
IF (neg = '1') THEN 
led2 <= "1111110";
ELSE
 led2 <= "0000000";
END IF;

CASE bcd IS -- 0123456789ABCDEF
WHEN "0000" =>leds <= (NOT "1111110") ; --0
WHEN "0001" => leds <= (NOT "0110000") ; --1
WHEN "0010" => leds <= (NOT "1101101") ; --2
WHEN "0011" => leds <= (NOT "1111001") ; --3
WHEN "0100" => leds <= (NOT"0110011" ); --4
WHEN "0101" => leds <= (NOT"1011011") ; --5
WHEN "0110" => leds <= (NOT "1011111") ; --6
WHEN "0111" => leds <= (NOT "1110000") ; --7
WHEN "1000" => leds <= (NOT "1111111") ; --8
WHEN "1001" => leds <= (NOT "1111011" ); --9
WHEN "1010" => leds <=  (NOT "1110111"); --A
WHEN "1011" => leds <=	(NOT "0011111"); --B
WHEN "1100" => leds <=	(NOT"1001110");-- C
WHEN "1101" => leds <=	(NOT"0111101"); --D
WHEN "1110" => leds <=	(NOT"1001111"); --E
WHEN "1111" => leds <=	(NOT"1000111"); --F
END CASE ;

END PROCESS ;
END Behavior ;