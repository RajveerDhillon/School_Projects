LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY combiner4_8 IS
PORT ( A, B : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
       W : OUT STD_LOGIC_VECTOR(7 downto 0)) ;
END combiner4_8 ;
ARCHITECTURE Behavior OF combiner4_8 IS
 BEGIN
 W(3 downto 0) <= A; 
 W(7 downto 4) <= B;
END Behavior ;