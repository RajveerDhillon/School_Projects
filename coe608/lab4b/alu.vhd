LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.NUMERIC_STD.ALL;

ENTITY alu IS
PORT (
		a			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		b			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		op			:IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		result	:OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		cout		:OUT STD_LOGIC;
		zero		:OUT STD_LOGIC);
END alu;

architecture behaviour of alu is

	component adder32 is
		 port ( a1 : in  STD_LOGIC_VECTOR(31 downto 0);
				  b1 : in  STD_LOGIC_VECTOR(31 downto 0);
				  cin1 : in  STD_LOGIC;
				  sum1 : out  STD_LOGIC_VECTOR(31 downto 0);
				  cout1: out std_LOGIC);
	end component;

	component and32 is
		port(
			a2		:in std_logic_vector(31 downto 0);
			b2		:in std_logic_vector(31 downto 0);
			result:out std_logic_vector(31 downto 0)
		);
	end component;
	
	component or32 is
		port(
			a2		:in std_logic_vector(31 downto 0);
			b2		:in std_logic_vector(31 downto 0);
			result:out std_logic_vector(31 downto 0)
		);
	end component;
	
	component right_shift32 is
		port(
			a2			:in std_logic_vector(31 downto 0);
			result	:out std_logic_vector(31 downto 0)
		);
	end component;
	
	component left_shift32 is
		port(
			a2			:in std_logic_vector(31 downto 0);
			result	:out std_logic_vector(31 downto 0)
		);
	end component;
	
	component mux_8to1 is
		port(
				in0,in1,in2,in3,in4,in5,in6,in7	: in std_logic_vector(31 downto 0);
				sel										:in  std_logic_vector(2 downto 0);
				y											:out std_logic_vector(31 downto 0)
		);
	end component;
	
	component mux_2to1 is
		port(
				in0,in1			: in std_logic_vector(31 downto 0);
				sel				:in  std_logic;
				y					:out std_logic_vector(31 downto 0)
		);
	end component;
	
	component not32 is
		port(
			x		:in std_logic_vector(31 downto 0);
			y		:out std_logic_vector(31 downto 0)
		);
	end component;

	signal andResult :std_LOGIC_VECTOR(31 downto 0);
	signal orResult :std_LOGIC_VECTOR(31 downto 0);
	signal addResult :std_LOGIC_VECTOR(31 downto 0);
	signal lslResult :std_LOGIC_VECTOR(31 downto 0);
	signal lsrResult :std_LOGIC_VECTOR(31 downto 0);
	signal bNegorNot :std_LOGIC_VECTOR(31 downto 0);
	signal bNot :std_LOGIC_VECTOR(31 downto 0);
	signal temp :std_LOGIC_VECTOR(31 downto 0);
	
begin
	mux1: mux_8to1 port map(in0=>andResult,
								   in1=>orResult,
									in2=>addResult,
									in3=>"ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
									in4=>lslResult,
									in5=>lsrResult,
									in6=>addResult,
									in7=>"ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
									sel=>op,
									y=>temp);
									

	adder1: adder32 port map(a1=>a,
									 b1=>bNegorNot,
									 cin1=>op(2),
									 sum1=>addResult,
									 cout1=>cout);
									
	and1: and32 port map(a,b,andResult);
	or1:	or32  port map(a,b,orResult);
	lsl1:	right_shift32  port map(a,lslResult);
	lsr1:	left_shift32  port map(a,lsrResult);
	
	negMux: mux_2to1 port map(in0=>b,
									  in1=>bNot,
									  sel=>op(2),
									  y=>bNegorNot);
									  
	notber: not32 port map(b,bNot);

	process(temp)
	begin
		if(temp="00000000000000000000000000000000") then
		zero<='1';
		result<=temp;
		else
			zero<='0';
			result<=temp;
		end if;
		end process;
end behaviour;