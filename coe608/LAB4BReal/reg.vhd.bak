LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
USE ieee.numeric_std.ALL; 
USE ieee.std_logic_unsigned.ALL;

ENTITY reg IS 
PORT( ld, clr, clk		: IN STD_LOGIC;
		data_in				: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		data_out 			: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END reg;

ARCHITECTURE description OF reg IS
BEGIN
process(clk, ld, clr, data_in)
begin
if ld = '1' THEN
	if rising_edge(clk) then
		data_out <= data_in;
	end if;
elsif clr = '1' then
	data_out <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
end if;
end process;
end description;