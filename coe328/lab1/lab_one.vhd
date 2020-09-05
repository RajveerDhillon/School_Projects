LIBRARY Ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity lab_one is 
port (x1, x2, x3 : in std_logic;
f : out std_logic );
end lab_one;
architecture behavior of lab_one is 
begin
f <= (x1 and x2) or ((not x2) and x3);
end behavior ;