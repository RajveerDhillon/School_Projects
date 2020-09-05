LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
USE ieee.numeric_std.ALL; 
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.all;

ENTITY lze IS
PORT( data_in		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		data_out		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END lze;

ARCHITECTURE description OF lze IS
BEGIN
data_out(31 DOWNTO 16) <= (others => '0');
data_out(15 DOWNTO 0) <= data_in(15 DOWNTO 0);
end description;