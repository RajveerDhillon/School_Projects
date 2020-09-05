LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;
ENTITY ASU IS
PORT ( Cin : IN STD_LOGIC ;
X, Y : IN std_logic_vector(3 DOWNTO 0) ;
S : OUT std_logic_vector(4 DOWNTO 0) ;
cout, Overflow : OUT std_LOGIC ) ;
END ASU ;
ARCHITECTURE Behavior OF ASU IS
SIGNAL Sum : std_logic_vector(4 DOWNTO 0) ;
BEGIN
sum <= ('0' & X) + ('0' & Y) + Cin ;
S <= sum(3 DOWNTO 0) ;
cout <= sum(4) ;
Overflow <= Sum(4) XOR X(3) XOR Y(3) XOR Sum(3) ;
END Behavior ;