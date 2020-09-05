LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;
ENTITY C IS
PORT ( k : IN STD_LOGIC_VECTOR (3 DOWNTO 0) ;
L: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END C;

ARCHITECTURE Behavior OF C IS
BEGIN
L(3) <= (k(0) and k(3));
L(2) <= (k(1) or (k(0) and (not k(3))) or ((not k(0)) and (not k(1)) and k(3)));
L(1) <= (k(1) and (not k(2))) or (k(1) and (not k(3))) or (k(0) and (not k(3)));
L(0) <= (k(1) or (not k(2) and k(3)));
END Behavior ;