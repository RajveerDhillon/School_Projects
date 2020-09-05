LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
USE ieee.numeric_std.ALL; 
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.all;

ENTITY reducer IS
PORT( data_in			: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		data_out			: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END reducer;

ARCHITECTURE description OF reducer IS
BEGIN

data_out <= data_in(7 DOWNTO 0);
end description;