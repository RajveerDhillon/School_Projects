LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY data_mem IS
PORT(
		clk		:IN STD_logic;
		addr		:IN unsigned(7 downto 0);
		data_in	:IN std_logic_vector(31 downto 0);
		wen		:IN std_logic;
		en			:IN std_logic;
		data_out  :OUT std_logic_vector(31 downto 0)
);

END data_mem;

ARCHITECTURE description of data_mem is
type mem_type is array(2**7 downto 0) of std_logic_vector(31 downto 0);
signal mem: mem_type;

begin
process(clk,data_in,addr,wen,en)
begin
if falling_edge(clk) then
	if(en='0') then
		data_out<="00000000000000000000000000000000";
	elsif(en='1' and wen='0') then
		data_out<=std_logic_vector(mem(to_integer(addr)));
	elsif(en='1' and wen='1') then
		mem(to_integer(addr))<=std_logic_vector(data_in);
		data_out<="00000000000000000000000000000000";
	end if;
end if;
end process;
end description;