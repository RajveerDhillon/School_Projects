LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY compare1 IS
PORT ( A, B : IN STD_LOGIC ;
AeqB : OUT STD_LOGIC ) ;
END compare1 ;
ARCHITECTURE Behavior OF compare1 IS
BEGIN
PROCESS ( A, B )
	BEGIN
		AeqB <= '0' ;
		IF A = B THEN
			AeqB <= '1' ;
		END IF ;
	END PROCESS ;
END Behavior ;