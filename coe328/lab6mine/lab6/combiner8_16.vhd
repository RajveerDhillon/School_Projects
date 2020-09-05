LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY combiner8_16 IS
PORT ( A, B, C, D : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
       J: OUT STD_LOGIC_VECTOR(15 downto 0)) ;
END combiner8_16 ;
ARCHITECTURE Behavior OF combiner8_16 IS
 BEGIN
 J(3 downto 0) <= A; 
 J(7 downto 4) <= B;
 J(11 downto 8) <= C;
J(15 downto 12) <= D; 
END Behavior ;