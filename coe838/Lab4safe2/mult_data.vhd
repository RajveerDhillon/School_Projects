-- mult_data.vhd
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mult_data is
	port (
		avs_s0_address  : in  std_logic_vector(3 downto 0)  := (others => '0'); --          s0.address
		avs_s0_read     : in  std_logic                     := '0';             --            .read
		avs_s0_write    : in  std_logic                     := '0';             --            .write
		avs_s0_readdata : out std_logic_vector(31 downto 0);                    --            .readdata
		avs_s0_writedata  : in  std_logic_vector(31 downto 0)  := (others => '0'); --          s0.address
		clk             : in  std_logic                     := '0';             --       clock.clk
		reset           : in  std_logic                     := '0';             --       reset.reset
		mult_in1        : out std_logic_vector(31 downto 0);                    -- mult_input.m_in1
		mult_in2        : out std_logic_vector(31 downto 0);                    -- mult_input.m_in2
		mult_result     : in  std_logic_vector(31 downto 0) := (others => '0') -- mult_output.m_result
	);
end entity mult_data;

architecture rtl of mult_data is

	SIGNAL in1, in2 : STD_logic_vector(31 DOWNTO 0);
	
begin
	PROCESS(clk, reset, avs_s0_read, avs_s0_write, avs_s0_address, avs_s0_writedata)
	BEGIN
		IF(reset = '1')THEN
			avs_s0_readdata <= (OTHERS => '0');
			in1 <= (OTHERS => '0');
			in2 <= (OTHERS => '0');
			
		ELSIF(rising_edge(clk))THEN
			IF(avs_s0_read = '1')THEN
				CASE avs_s0_address IS
					WHEN "0000" =>
						avs_s0_readdata <= mult_result;
					WHEN "0001" =>
						avs_s0_readdata <= in1;
					WHEN "0010" =>
						avs_s0_readdata <= in2;
					WHEN OTHERS =>
						avs_s0_readdata <= (OTHERS => '0');
				END CASE;
			ELSIF(avs_s0_write = '1')THEN
				CASE avs_s0_address IS
					WHEN "0000" =>
						in1 <= "0000000000000000" & avs_s0_writedata(15 DOWNTO 0);
					WHEN "0001" =>
						in2 <= "0000000000000000" & avs_s0_writedata(15 DOWNTO 0);
					WHEN OTHERS =>
					
					END CASE;
			
			END iF;
		END IF;
	END PROCESS;
	
	mult_in1 <= in1;
	mult_in2 <= in2;
	
end architecture rtl; -- of mult_output
