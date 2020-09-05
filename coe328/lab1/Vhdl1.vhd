LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab_one_vhdl2 IS
PORT (
w1, w2, w3, w4 : IN STD_logic ;
g, h : OUT STD_Logic );
end lab_one_vhdl2;
ARCHITECTURE Behavior OF lab_one_vhdl2 is
begin 
g <= (w1 AND w2) OR (w3 AND w4);
h <= (w1 and w3) or (w2 and w4);
end Behavior;
