LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
USE ieee.std_logic_arith.ALL; 
USE ieee.std_logic_unsigned.ALL; 

ENTITY datapath IS 
PORT(
  Clk, mClk  : 
IN STD_LOGIC;  
--clock Signal 
--Memory Signals 
WEN, EN :    
IN STD_LOGIC;
 
-- Register Control Signals (CLR and LD). 
Clr_A , Ld_A :       
IN STD_LOGIC; 
Clr_B , Ld_B :  
IN STD_LOGIC; 
Clr_C , Ld_C :  
IN STD_LOGIC; 
Clr_Z , Ld_Z :  
IN STD_LOGIC; 
Clr_PC , Ld_PC :     
IN STD_LOGIC; 
Clr_IR , Ld_IR :      
IN STD_LOGIC; 

-- Register outputs (Some needed to feed back to control unit. Others pulled out for testing. 
Out_A :       
OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
Out_B : 
OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
Out_C :       
OUT STD_LOGIC; 
Out_Z : 
OUT STD_LOGIC; 
Out_PC :      
OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
Out_IR :      
OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 

-- Special inputs to PC. 
Inc_PC :      
IN STD_LOGIC; 

-- Address and Data Bus signals for debugging. 
ADDR_OUT :  
OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
DATA_IN  :   
IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
DATA_OUT, MEM_OUT, MEM_IN :     OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
MEM_ADDR :       OUT STD_LOGIC_VECTOR(7 DOWNTO 0); 

-- Various MUX controls. 
DATA_Mux:   
IN STD_LOGIC_VECTOR(1 DOWNTO 0); 
REG_Mux :    
IN STD_LOGIC; 
A_MUX, B_MUX :   
IN STD_LOGIC; 
IM_MUX1 :    
IN STD_LOGIC; 
IM_MUX2 :    
IN STD_LOGIC_VECTOR(1 DOWNTO 0); 

-- ALU Operations. 
ALU_Op :     
IN STD_LOGIC_VECTOR(2 DOWNTO 0)); 
END datapath; 

--------------------------------------------------------------------------------------------------------------------------- 
ARCHITECTURE description OF datapath IS 
--  Component instantiations   
--  you figure this out 
component alu IS
PORT (
		a			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		b			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		op			:IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		result	:OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		cout		:OUT STD_LOGIC;
		zero		:OUT STD_LOGIC);
END component;

component data_mem IS
PORT(
		clk		:IN STD_logic;
		addr		:IN unsigned(7 downto 0);
		data_in	:IN std_logic_vector(31 downto 0);
		wen		:IN std_logic;
		en			:IN std_logic;
		data_out  :OUT std_logic_vector(31 downto 0)
);
END component;

component mux_2to1 is
	port(
			in0,in1			: in std_logic_vector(31 downto 0);
			sel				:in  std_logic;
			y					:out std_logic_vector(31 downto 0)
	);
end component;

component pc IS
PORT(
		d		:IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- Input
		inc	:IN STD_LOGIC;
		ld		:IN STD_LOGIC; --load/enable
		clr	:IN STD_LOGIC; --async.clear
		clk	:IN STD_LOGIC;	--Clock
		q		:INOUT STD_LOGIC_VECTOR(31 DOWNTO 0));--Output
END component;

component register32 IS
PORT(
		d		:IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- Input
		ld		:IN STD_LOGIC; --load/enable
		clr	:IN STD_LOGIC; --async.clear
		clk	:IN STD_LOGIC;	--Clock
		Q		:OUT STD_LOGIC_VECTOR(31 DOWNTO 0));--Output
END component;

component mux_3to1 is
	port(
			in0,in1,in2			: in std_logic_vector(31 downto 0);
			sel				:in  std_logic_VECTOR(1 downto 0);
			y					:out std_logic_vector(31 downto 0)
	);
end component;

component reducer is 
port(
a: in std_logic_vector(31 downto 0);
b: out std_logic_vector(7 downto 0));
end component;

component uze is 
port(
a: in std_logic_vector(31 downto 0);
b: out std_logic_vector(31 downto 0));
end component;

component lze is 
port(
a: in std_logic_vector(31 downto 0);
b: out std_logic_vector(31 downto 0));
end component;


--  Internal signals     
--  you decide what you need  

signal mux1_out:std_LOGIC_VECTOR(31 downto 0);
signal mux2_out :std_LOGIC_VECTOR(31 downto 0);
signal databus_out :std_LOGIC_VECTOR(31 downto 0);
signal regmux_out :std_LOGIC_VECTOR(31 downto 0);
signal mux_Aout:std_LOGIC_VECTOR(31 downto 0);
signal mux_Bout :std_LOGIC_VECTOR(31 downto 0);

signal lze_outA :std_LOGIC_VECTOR(31 downto 0);
signal lze_outB :std_LOGIC_VECTOR(31 downto 0);
signal lze_outAlu :std_LOGIC_VECTOR(31 downto 0);
signal red_out :std_LOGIC_VECTOR(7 downto 0);
signal uze_out :std_LOGIC_VECTOR(31 downto 0);

signal regI_out :std_LOGIC_VECTOR(31 downto 0);
signal regA_out :std_LOGIC_VECTOR(31 downto 0);
signal regB_out :std_LOGIC_VECTOR(31 downto 0);

signal ALUCout :std_LOGIC;
signal ALUZero :std_LOGIC;

signal datamem_out :std_LOGIC_VECTOR(31 downto 0);
signal alu_out :std_LOGIC_VECTOR(31 downto 0);



BEGIN 
--  you fill in the details  
ALU1: alu port map (
		a=>mux1_out,
		b=>mux2_out,
		op=>ALU_Op,
		result=>alu_out,
		cout=>ALUCout,
		zero=>ALUZero);

mux_A: mux_2to1 port map(
		in0=>regI_out,
		in1=>lze_outA,
		sel=>A_MUX,
		y=>mux_Aout);		
		
mux_B: mux_2to1 port map(
		in0=>regI_out,
		in1=>lze_outB,
		sel=>B_MUX,
		y=>mux_Bout);	
		
mux_reg: mux_2to1 port map(
		in0=>regA_out,
		in1=>regB_out,
		sel=>REG_Mux,
		y=>regmux_out);	
		
mux1_im: mux_2to1 port map(
		in0=>regA_out,
		in1=>uze_out,
		sel=>IM_MUX1 ,
		y=>mux1_out);	
		
mux2_im: mux_3to1 port map(
		in0=>regB_out,
		in1=>lze_outAlu,
		in2=>"11111111111111111111111111111111",
		sel=>IM_MUX2,
		y=>mux2_out);	

mux_data: mux_3to1 port map(
		in0=>DATA_IN ,
		in1=>datamem_out,
		in2=>alu_out,
		sel=>DATA_Mux,
		y=>databus_out);	
		
data_mem1: data_mem port map(
		clk=>mClk,
		addr=>unsigned(red_out),
		data_in=>regmux_out,
		wen=>WEN,
		en=>EN,
		data_out=>datamem_out);
		
reg_A: register32 port map(
		d=>mux_Aout,
		ld=>Ld_A,
		clr=>Clr_A,
		clk=>CLK,
		Q=>regA_out);
		
reg_B: register32 port map(
		d=>mux_Bout,
		ld=>Ld_B,
		clr=>Clr_B,
		clk=>CLK,
		Q=>regB_out);
		
reg_I: register32 port map(
		d=>databus_out,
		ld=>Ld_IR,
		clr=>Clr_IR,
		clk=>CLK,
		Q=>regI_out);
		
red1: reducer port map (
		a=>regI_out,
		b=>red_out);

lzeA: lze port map(
		a=>regI_out,
		b=>lze_outA);
		
lzeB: lze port map(
		a=>regI_out,
		b=>lze_outB);
		
lzeAlu: lze port map(
		a=>regI_out,
		b=>lze_outAlu);

uze1: uze port map(
		a=>regI_out,
		b=>uze_out);

END description; 
------------------------------------------------------------------------------------------------------------------------- 