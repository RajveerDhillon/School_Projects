library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.all;

entity mux_3to1 is
	port(
			in0,in1,in2			: in std_logic_vector(31 downto 0);
			sel				:in  std_logic_vector(1 downto 0);
			y					:out std_logic_vector(31 downto 0)
	);
end mux_3to1;

architecture mux3Implementation of mux_3to1 is
begin
	process(sel,in0,in1,in2)
	begin
		case sel is
			when "00" =>
				y<=in0;
				
			when "01" =>
				y<=in1;
				
			when "10" =>
				y<=in2;
							
			when others =>
				y<="ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		end case;
	end process;
end mux3Implementation;