LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
USE ieee.numeric_std.ALL; 
USE ieee.std_logic_unsigned.all;

ENTITY mux3_1 IS
PORT( in0, in1, in2	: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		s					: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		out0				: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
end mux3_1;
		
ARCHITECTURE description OF mux3_1 IS
BEGIN
process(in0, in1, in2, s)
BEGIN
if s = "00" then
	out0 <= in0;
elsif s = "01" then
	out0 <= in1;
elsif s = "10" then
	out0 <= in2;
else
	out0 <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
end if;
end process;
end description;
		