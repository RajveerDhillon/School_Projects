library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.all;

entity mux_2to1 is
	port(
			in0,in1			: in std_logic_vector(31 downto 0);
			sel				:in  std_logic;
			y					:out std_logic_vector(31 downto 0)
	);
end mux_2to1;

architecture mux2Implementation of mux_2to1 is
begin
	process(sel,in0,in1)
	begin
		case sel is
			when '0' =>
				y<=in0;
				
			when '1' =>
				y<=in1;
							
			when others =>
				y<="ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		end case;
	end process;
end mux2Implementation;