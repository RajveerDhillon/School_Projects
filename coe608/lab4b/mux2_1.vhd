LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
USE ieee.numeric_std.ALL; 
USE ieee.std_logic_unsigned.all;

ENTITY mux2_1 IS
PORT(	in0, in1			: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		s					: IN STD_LOGIC;
		out0				: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
end mux2_1;

ARCHITECTURE description OF mux2_1 IS
BEGIN 
process(s, in0, in1)
BEGIN
if s = '0' then
	out0 <= in0;
else
	out0 <= in1;
end if;
end process;
end description;
