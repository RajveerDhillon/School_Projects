library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY mult_unit IS
	PORT( clk, reset, enable			: IN STD_LOGIC;
			mult_a, mult_b					: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			mult_done						: OUT STD_LOGIC;
			mult_result						: OUT STD_LOGIC_VECTOR(31 DOWNTO 0):= (others => '0'));
END ENTITY mult_unit;

ARCHITECTURE Behaviour of mult_unit IS

COMPONENT mult
	PORT
	(
		aclr		: IN STD_LOGIC ;
		clken		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		dataa		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL done0, done1, done2 : STD_LOGIC;
SIGNAL temp_res : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

multiplier : mult
PORT MAP(aclr => reset, clken	=> enable, clock => clk, 
		dataa	=> mult_a, datab => mult_b, result => temp_res);

PROCESS(clk, reset, enable)
BEGIN
	IF(reset = '1')THEN
		done0 <= '0'; done1 <= '0'; done2 <= '0';
	ELSIF(rising_edge(clk))THEN
		IF(enable = '1')THEN
					done0 <= '1';
		END IF;
		--pipeline the done signal til multiplication is complete
		done1 <= done0;
		done2 <= done1;
	END IF;
END PROCESS;		

mult_result <= temp_res;
mult_done <= done2;
		
END Behaviour;