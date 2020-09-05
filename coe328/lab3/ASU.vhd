LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY ASU IS
PORT (
 Cin : IN STD_LOGIC;
 x, y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
 S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
 Cout, neg: OUT STD_LOGIC );
 
 END ASU ;
 
 ARCHITECTURE Behavior OF ASU IS
  Signal Sum : STD_LOGIC_VECTOR(4 DOWNTO 0);
 BEGIN 
 PROCESS (Cin)
 BEGIN
 if (Cin = '0') then
  Sum <= ('0' & x) + ('0' & y) + Cin;
  neg <= '0';
 --elseif ( Cin = '0') and (y = "0000") then
	--Sum <= ('0' & x) + Cin;
 else 
	Sum <= (('0' & x) + not ('0' & y)) + Cin;
	IF (y>x) THEN
		neg <= '1';
	ELSE 
		neg <= '0';
	END IF;
END IF;
S <= Sum(3 DOWNTO 0);
Cout <= Sum(4);
END PROCESS;
END Behavior ;