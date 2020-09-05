LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY alu IS
PORT (
		a			:	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		b			:	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		op			:	IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		result	:	OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		Cout		:	OUT STD_LOGIC;
		zero		:	OUT STD_LOGIC);
END alu;
ARCHITECTURE description OF alu IS
SIGNAL temp 			: STD_LOGIC_VECTOR(32 DOWNTO 0);
SIGNAL tmpz				: STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN
PROCESS (op, a, b)
BEGIN
	 CASE op IS
		WHEN "000" => tmpz <= a AND b; -- logical AND
		WHEN "001" => tmpz <= a OR b; -- logical OR
		WHEN "010" => temp <= ('0' & a) + ('0' & b); --adding with a carry
						  tmpz <= temp(31 DOWNTO 0);
						  Cout <= temp(32);
		WHEN "110" => temp <= (('0' & a) + NOT('0' & b)) + '1' ;
						  tmpz <= temp(31 DOWNTO 0);
						  Cout <= temp(32);
		WHEN "100" => 
						  tmpz(31 DOWNTO 1) <= a(30 DOWNTO 0);
						  tmpz(0) <= '0';
		WHEN "101" => 
						  tmpz(30 DOWNTO 0) <= a(31 DOWNTO 1);
						  tmpz(31) <= '0';
		
		WHEN others => tmpz <= NULL;
		
		END CASE;
	IF (tmpz = x"00000000") THEN
		zero <= '1';
	ELSE
		zero <= '0';
	END IF;
	END PROCESS;
	
	result <= tmpz;

END description;