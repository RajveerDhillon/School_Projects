LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY C is 
PORT (
 k : IN STD_LOGIC_VECTOR (3 downto 0);
 l : OUT STD_LOGIC_VECTOR (3 downto 0));
 END C;
  ARCHITECTURE Behavior OF C IS
 BEGIN 
 l(0) <= ((NOT k(0)) AND k(1)) OR ((NOT k(2)) AND k(3));
 l(1) <= ((NOT k(0)) AND k(1) AND (NOT k(2))) OR (k(0) AND (NOT k(2)) AND (NOT k(3))) OR (k(1) and k(2) and (not k(3)));
 l(2) <= ((not k(0)) and k(1)) or ((not k(0)) and (not k(2)) and k(3)) or (k(0) and (not k(2)) and (not k(3))) ;
 l(3) <= (k(0) and (not k(2)) and k(3));
 END Behavior;