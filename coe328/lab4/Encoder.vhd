LIBRARY ieee;
USE ieee.std_logic_1164.all ;
ENTITY Encoder IS
PORT ( w : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
y : OUT STD_LOGIC_VECTOR(1 DOWNTO 0) ;
z : OUT STD_LOGIC ) ;
END Encoder ;

ARCHITECTURE Behavior OF Encoder IS
BEGIN
PROCESS ( w )
BEGIN
y <="00" ;
IF w(1) = '1' THEN y <= "01" ; END IF ;
IF w(2) ='1' THEN y <= "10" ; END IF ;
IF w(3) ='1' THEN y <= "11" ; END IF ;
z <='1' ;
IF w ="0000" THEN z <= '0'; END IF ;
END PROCESS ;
END Behavior ;