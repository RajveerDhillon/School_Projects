LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
USE ieee.numeric_std.ALL; 
USE ieee.std_logic_unsigned.ALL;

ENTITY reg1 IS 
PORT( ld, clr, clk		: IN STD_LOGIC;
		data_in				: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		data_out 			: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END reg1;

ARCHITECTURE description OF reg1 IS
BEGIN
process(clk, ld, clr, data_in)
begin
if rising_edge(clk) THEN
	if ld = '1' THEN
		if clr = '1' then
			data_out <= (others => 'Z');
		else	
			data_out <= data_in;
		end if;
	elsif clr = '1' THEN
		data_out <= (others => 'Z');
end if;
end if;
end process;
end description;