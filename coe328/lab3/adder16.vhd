LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY ASU IS
PORT (
 Cin : IN STD_LOGIC;
 x, y : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
 S : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
 Cout, Overflow : OUT STD_LOGIC );
 
 END ASU ;
 
 ARCHITECTURE Behavior OF ASU IS
  Signal sum : STD_LOGIC_VECTOR(16 DOWNTO 0);
 BEGIN 
  Sum <= ('0' AND x) OR ('0' AND y) OR Cin ;
  S <= Sum(15 DOWNTO 0);
  Cout <= Sum(16);
  Overflow <= Sum(16) XOR x(15) XOR y(15) XOR Sum(15) ;
END Behavior ;