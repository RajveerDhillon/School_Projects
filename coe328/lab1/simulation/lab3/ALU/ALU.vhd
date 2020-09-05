LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;
ENTITY ALU IS
PORT ( Cin : IN STD_LOGIC ;
X, Y: IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
S: OUT STD_LOGIC_VECTOR(3 DOWNTO 0) ;
Cout, neg : OUT STD_LOGIC ) ;
END ALU ;

ARCHITECTURE Behavior OF ALU IS
SIGNAL Sum : STD_LOGIC_VECTOR(4 DOWNTO 0) ;
BEGIN
	process (Cin, X, Y)
	BEGIN IF (Cin = '0') THEN
		Sum <=('0' &X) + Y + Cin;
	ELSE
		Sum <= ('0' &X) - Y;
	END IF;
	IF ( X < Y) AND (Cin = '1') THEN
		neg <= '1';
		S <= NOT (Sum (3 DOWNTO 0))+ '1';
	ELSE
		neg <= '0';
		S <=Sum(3 DOWNTO 0);
	END IF;
	END process;
		
		Cout <=Sum(4);
END Behavior;