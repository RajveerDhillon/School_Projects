LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
USE ieee.std_logic_arith.ALL; 
USE ieee.std_logic_unsigned.ALL; 

ENTITY lab4Bvd IS
PORT( Clk, mClk :				IN STD_LOGIC;  --clock Signal 

  --Memory Signals 
  WEN, EN :    			IN STD_LOGIC; 

  -- Register Control Signals (CLR and LD). 
	Clr_A , Ld_A :    	IN STD_LOGIC; 
	Clr_B , Ld_B :    	IN STD_LOGIC; 
	Clr_C , Ld_C :    	IN STD_LOGIC; 
	Clr_Z , Ld_Z :    	IN STD_LOGIC; 
	Clr_PC , Ld_PC :     IN STD_LOGIC; 
	Clr_IR , Ld_IR :     IN STD_LOGIC; 
	
	-- Register outputs (Some needed to feed back to control unit. Others pulled out for testing. 
	Out_A :       OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
	Out_B : 		  OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
	Out_C :       OUT STD_LOGIC; 
	Out_Z :		  OUT STD_LOGIC; 
	Out_PC :      OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
	Out_IR :      OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 

	-- Special inputs to PC. 
	Inc_PC :      	IN STD_LOGIC; 
	
	-- Address and Data Bus signals for debugging. 
	ADDR_OUT :     						OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
	DATA_IN  :     						IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
	DATA_OUT, MEM_OUT, MEM_IN :      OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
	MEM_ADDR :       						OUT STD_LOGIC_VECTOR(7 DOWNTO 0); 

	-- Various MUX controls. 
	DATA_Mux:   IN STD_LOGIC_VECTOR(1 DOWNTO 0); 
	REG_Mux :    IN STD_LOGIC; 
	A_MUX, B_MUX :   IN STD_LOGIC; 
	IM_MUX1 :    IN STD_LOGIC; 
	IM_MUX2 :    IN STD_LOGIC_VECTOR(1 DOWNTO 0); 

 
	-- ALU Operations. 
	ALU_Op :     							IN STD_LOGIC_VECTOR(2 DOWNTO 0)); 
END Lab4Bvd;
-------------------------------------------------------------------------
ARCHITECTURE description OF Lab4Bvd IS

-- COMPENENT INST

COMPONENT reg1
PORT( ld, clr, clk		: IN STD_LOGIC;
		data_in				: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		data_out 			: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;

COMPONENT pc
PORT(	ld, clr, inc, clk	: IN STD_LOGIC;
		data_in				: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		data_out				: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;

COMPONENT reducer 
PORT( data_in			: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		data_out			: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END COMPONENT;

COMPONENT uze 
PORT( data_in		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		data_out		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;

COMPONENT lze 
PORT( data_in		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		data_out		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;

COMPONENT data_mem 
PORT( 
clk 		  : IN STD_LOGIC; 
addr 		  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);  
data_in    : IN STD_LOGIC_VECTOR(31 DOWNTO 0);  
wen 		  : IN STD_LOGIC; 
en 		  : IN STD_LOGIC; 
data_out   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));  
END COMPONENT;

COMPONENT alu 
PORT (
		a			:	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		b			:	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		op			:	IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		result	:	OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		Cout		:	OUT STD_LOGIC;
		zero		:	OUT STD_LOGIC);
END COMPONENT;

COMPONENT mux3_1 
PORT( in0, in1, in2	: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		s					: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		out0				: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;

COMPONENT mux2_1
PORT(	in0, in1			: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		s					: IN STD_LOGIC;
		out0				: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;

--Signals 

signal muxA_out_wire : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal muxB_out_wire : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal mux1_out_wire : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal mux2_out_wire : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal red_out_wire	: STD_LOGIC_VECTOR(7 DOWNTO 0);
signal lze_out_wire	: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal uze_out_wire	: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal alu_out_wire 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal DATA_BUS 		: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal Out_IR_wire 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal A_out_wire 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal B_out_wire 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal MEM_IN_wire	: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal DATA_OUT_WIRE	: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal Out_PC_wire 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal mem_out_wire	: STD_LOGIC_VECTOR(31 DOWNTO 0);

---Main Connections
BEGIN
--registers
IR 							: reg1 PORT MAP (LD_IR, CLR_IR, CLK, DATA_BUS, DATA_OUT_WIRE);
PCounter						: pc PORT MAP (LD_PC, CLR_PC, INC_PC, CLK, lze_out_wire, out_PC_wire);
A								: reg1 PORT MAP (LD_A, CLR_A, CLK, muxA_out_wire, A_out_wire);
B								: reg1 PORT MAP (LD_B, CLR_B, CLK, muxB_out_wire, B_out_wire);

--Data MEM
DATA_MEMORY					: data_mem PORT MAP (mCLK, red_out_wire, MEM_IN_wire, WEN, EN, MEM_out_wire);

-- ALU
ALU1							: alu PORT MAP (mux1_out_wire, mux2_out_wire, ALU_Op, alu_out_wire, OUT_C, OUT_Z);

--UNITS
LZ								: lze PORT MAP (DATA_OUT_WIRE, lze_out_wire);
UZ								: uze PORT MAP (DATA_OUT_WIRE, uze_out_wire);
RED							: reducer PORT MAP (DATA_OUT_WIRE, red_out_wire);

--MUX
AMUX							: mux2_1 PORT MAP (DATA_BUS, lze_out_wire, A_MUX, MUXA_out_wire);
BMUX							: mux2_1 PORT MAP (DATA_BUS, lze_out_wire, B_MUX, MUXB_out_wire);

IMMUX1						: mux2_1 PORT MAP (A_Out_wire, uze_out_wire, IM_MUX1, MUX1_out_wire);
IMMUX2						: mux3_1 PORT MAP (B_out_wire, lze_out_wire, (others => '1'), IM_MUX2, mux2_out_wire);

DATAMUX						: mux3_1 PORT MAP (DATA_IN, MEM_out_wire, alu_out_wire, DATA_Mux, DATA_BUS);

MEMMUX						: mux2_1 PORT MAP (A_out_wire, B_out_wire, REG_Mux, MEM_IN_wire);


--Debugging Variables

DATA_OUT 	<= DATA_BUS;
Out_A 		<= A_out_wire;
OUT_B 		<= B_out_wire;
ADDR_OUT 	<= out_PC_wire;
out_PC		<= out_PC_wire;
out_IR		<= out_IR_wire;
MEM_IN		<= MEM_IN_wire; 
MEM_ADDR		<= red_out_wire;
MEM_OUT		<= MEM_IN_wire;

END description;