LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
USE ieee.numeric_std.ALL; 
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.all;

ENTITY pc IS
PORT(	ld, clr, inc, clk	: IN STD_LOGIC;
		data_in				: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		data_out				: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
end pc;

ARCHITECTURE description OF pc IS
BEGIN
process(clk, ld, clr, inc, data_in)
BEGIN
if (rising_edge(clk)) then
	if ld = '1' then
		if inc = '1' then
			data_out <= data_in + '1';
		elsif clr = '1' then
			data_out <= (others => 'Z');
		else
			data_out <= data_in;
		end if;
	elsif clr = '1' then
		data_out <= (others =>'Z');
end if;	
end if;
end process;
end description;