library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CacheController is
	port (
		clk : in STD_LOGIC;
		DIN : in STD_LOGIC_VECTOR(7 downto 0);
		ADDR : out STD_LOGIC_VECTOR(15 downto 0);
		DOUT : out STD_LOGIC_VECTOR(7 downto 0);
		WR_RD, MSTRB, RDY, CS : out STD_LOGIC
	);

end CacheController;

architecture Behavioral of CacheController is
 
	--CPU Signals
	signal dout_cpu, din_cpu : STD_LOGIC_VECTOR(7 downto 0);
	signal addr_cpu : STD_LOGIC_VECTOR (15 downto 0);
	signal cpu_rw, cs_cpu, sRDY : STD_LOGIC;
	signal tag_cpu : STD_LOGIC_VECTOR(7 downto 0);
	signal index_cpu : STD_LOGIC_VECTOR(2 downto 0);
	signal offset_cpu : STD_LOGIC_VECTOR(4 downto 0);
 
	--SRAM Signals
	signal dbit : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
	signal vbit : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
	signal addr_sram, din_sram, dout_sram : STD_LOGIC_VECTOR (7 downto 0);
	signal sWEN : STD_LOGIC_VECTOR (0 downto 0);
	signal tagEN : STD_LOGIC := '0';
 
	type ram_type is array (7 downto 0) of STD_LOGIC_VECTOR(7 downto 0);
	signal tag_mem : ram_type := ((others => (others => '0')));
 
	--Core Signals
	signal control0 : STD_LOGIC_VECTOR(35 downto 0);
	signal ila_data : std_logic_vector(35 downto 0);
	signal trig0 : std_logic_vector(0 to 0);
 
	--SDRAM Signals
	signal din_sdram, dout_sdram : STD_LOGIC_VECTOR(7 downto 0);
	signal addr_sdram : STD_LOGIC_VECTOR(15 downto 0);
	signal counter : integer := 0;
	signal offset : integer := 0;
	signal sMSTRB, rw_sdram : STD_LOGIC;
	
	--Components
	component CPU_gen
		port (
			clk : in STD_LOGIC;
			rst : in STD_LOGIC;
			trig : in STD_LOGIC;
			Address : out STD_LOGIC_VECTOR (15 downto 0);
			wr_rd : out STD_LOGIC;
			cs : out STD_LOGIC;
			DOut : out STD_LOGIC_VECTOR (7 downto 0)
		);
	end component;
	
	component SDRAMController
		port (
			clk : in STD_LOGIC;
			ADDR : in STD_LOGIC_VECTOR (15 downto 0);
			WR_RD : in STD_LOGIC;
			MSTRB : in STD_LOGIC;
			DIN : in STD_LOGIC_VECTOR (7 downto 0);
			DOUT : out STD_LOGIC_VECTOR (7 downto 0)
		);
	end component;
 
	component SRAM
		port (
			clka : in STD_LOGIC;
			wea : in STD_LOGIC_VECTOR(0 downto 0);
			addra : in STD_LOGIC_VECTOR(7 downto 0);
			dina : in STD_LOGIC_VECTOR(7 downto 0);
			douta : out STD_LOGIC_VECTOR(7 downto 0)
		);
	end component;
 
	component icon
		port (
			CONTROL0 : inout STD_LOGIC_VECTOR(35 downto 0)
		);
	end component;
 
	component ila
		port (
			CONTROL : inout STD_LOGIC_VECTOR(35 downto 0);
			CLK : in STD_LOGIC;
			DATA : in STD_LOGIC_VECTOR(35 downto 0);
			TRIG0 : in STD_LOGIC_VECTOR(0 to 0)
		);
	end component;
	
	--STATES
	--State 0: Hit and Write --0001
	--State 1: Hit and Read --0010
	--State 2: Miss --0100
	--State 3: Idle --1000
	--State 4: Write From SRAM to SDRAM --0011
	--State 5: Load From Memory --0101
	--State 6: Initial state --1001

	type state is (state_6, state_0, state_1, state_2, state_3, state_4, state_5);
	signal present_state : state;
	signal states_code : STD_LOGIC_VECTOR(3 downto 0);
 
begin

	--Port Maps
	MY_CPU_gen : CPU_gen
	port map(clk, '0', sRDY, addr_cpu, cpu_rw, cs_cpu, dout_cpu);
	mySRAM : SRAM
	port map(clk, sWEN, addr_sram, addr_sram, dout_sram);
	myIcon : icon
	port map(CONTROL0);
	myILA : ila
	port map(CONTROL0, CLK, ila_data, TRIG0);
 
	process (clk) 
	begin
		if (clk'EVENT and clk = '1') then
		present_state <= state_6;
		states_code <= "1001";
			if (present_state = state_6) then
				sRDY <= '0'; 
				tag_cpu <= addr_cpu(15 downto 8);
				index_cpu <= addr_cpu(7 downto 5);
				offset_cpu <= addr_cpu(4 downto 0);
				addr_sdram(15 downto 5) <= addr_cpu(15 downto 5);
				addr_sram(7 downto 0) <= addr_cpu(7 downto 0);
 
				if (vbit(to_integer(unsigned(index_cpu))) = '1' and tag_mem(to_integer(unsigned(index_cpu))) = tag_cpu and cpu_rw = '1') then -- HIT/Write
					tagEN <= '1';
					present_state <= state_0;
					states_code <= "0001";
				elsif (vbit(to_integer(unsigned(index_cpu))) = '1' and tag_mem(to_integer(unsigned(index_cpu))) = tag_cpu and cpu_rw = '0') then --HIT/Read
					tagEN <= '1';
					present_state <= state_1;
					states_code <= "0010";
 
				else --Miss
					present_state <= state_2;
					states_code <= "0100";
				end if;
			end if;
			
			if (present_state = state_0) then --Hit/Write state
				dbit(to_integer(unsigned(index_cpu))) <= '1';
				vbit(to_integer(unsigned(index_cpu))) <= '1';
				addr_sram <= dout_cpu;
				din_cpu <= "00000000";
				sWEN <= "1";
 
				present_state <= state_3; -- Goes to IDLE state
				states_code <= "1000";
			end if;
 
			if (present_state = state_1) then
				sWEN <= "0";
				din_cpu <= dout_sram;

				present_state <= state_3; -- goes to IDLE state
				states_code <= "1000";
			end if;

			if (present_state = state_2) then --Miss State
				tagEN <= '0';
				if (dbit(to_integer(unsigned(index_cpu))) = '1' and vbit(to_integer(unsigned(index_cpu))) = '1') then
					present_state <= state_4;
					states_code <= "0011";
				else
					present_state <= state_5;
					states_code <= "0101";
				end if;
			end if;

		if (present_state = state_4) then
			if (counter = 64) then
				counter <= 0;
				dbit(to_integer(unsigned(index_cpu))) <= '0';
				offset <= 0;
				present_state <= state_5;
				states_code <= "0101";
			else
				if (counter mod 2 = 1) then
					sMSTRB <= '0';
				else
					addr_sdram(4 downto 0) <= STD_LOGIC_VECTOR(to_unsigned(offset, offset_cpu'length));
					rw_sdram <= '1';
					addr_sram(7 downto 5) <= index_cpu;
					addr_sram(4 downto 0) <= STD_LOGIC_VECTOR(to_unsigned(offset, offset_cpu'length));
					sWEN <= "0";
					din_sdram <= dout_sram;
					sMSTRB <= '1';
					offset <= offset + 1;
				end if;
				counter <= counter + 1;
			end if;
		end if;
		--elsif (present_state = state_5) then --loads from SRAM
		if (present_state = state_5) then
			if (counter = 64) then
				counter <= 0;
				vbit(to_integer(unsigned(index_cpu))) <= '1';
				tag_mem(to_integer(unsigned(index_cpu))) <= tag_cpu;
				offset <= 0;
				if (cpu_rw = '1') then
					present_state <= state_0;
					states_code <= "0001";
				else
					present_state <= state_1;
					states_code <= "0010";
				end if;
			else
				if (counter mod 2 = 1) then
					sMSTRB <= '0';
				else
					addr_sdram(4 downto 0) <= STD_LOGIC_VECTOR(to_unsigned(offset, offset_cpu'length));
					rw_sdram <= '0';
					sMSTRB <= '1';
					addr_sram(7 downto 5) <= index_cpu;
					addr_sram(4 downto 0) <= STD_LOGIC_VECTOR(to_unsigned(offset, offset_cpu'length));
					addr_sram <= dout_sdram;
					sWEN <= "1";
					offset <= offset + 1;
				end if;
				counter <= counter + 1;
			end if; 
		end if;
		
		if (present_state = state_3) then --IDLE state
			sRDY <= '1';
			if (cs_cpu = '1') then
				present_state <= state_6;
				states_code <= "1001";
			end if;
		end if;
end if;
 
end process;

WR_RD <= cpu_rw; 
MSTRB <= sMSTRB;
ADDR <= addr_cpu;
DOUT <= din_cpu;
RDY <= sRDY;
CS <= cs_cpu;
 
ila_data(15 downto 0) <= addr_cpu;
ila_data(16) <= cpu_rw;
ila_data(17) <= sRDY;
ila_data(18) <= sMSTRB;
ila_data(26 downto 19) <= din_cpu;
ila_data(30 downto 27) <= states_code;
ila_data(31) <= cs_cpu;
ila_data(32) <= vbit(to_integer(unsigned(index_cpu)));
ila_data(33) <= dbit(to_integer(unsigned(index_cpu)));
ila_data(34) <= tagEN;

end Behavioral;