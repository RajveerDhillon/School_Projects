library ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_signed.all;

ENTITY full_adder IS 
PORT( a, b, Cin		: IN STD_LOGIC;
		Cout, sum		: OUT STD_LOGIC);

END full_adder;

ARCHITECTURE description OF full_adder IS
BEGIN

sum <= (a XOR b) XOR Cin;
Cout <= (a AND b) OR ((a XOR b) AND Cin);

END description;