library verilog;
use verilog.vl_types.all;
entity lab4b is
    port(
        Zero            : out    vl_logic;
        IM_MUX1         : in     vl_logic;
        LD_A            : in     vl_logic;
        CLR_A           : in     vl_logic;
        CLK             : in     vl_logic;
        A_Mux           : in     vl_logic;
        LD_PC           : in     vl_logic;
        CLR_PC          : in     vl_logic;
        INC_PC          : in     vl_logic;
        LD_IR           : in     vl_logic;
        CLR_IR          : in     vl_logic;
        MEM_CLK         : in     vl_logic;
        WEN             : in     vl_logic;
        EN              : in     vl_logic;
        Rg_Mux          : in     vl_logic;
        LD_B            : in     vl_logic;
        CLR_B           : in     vl_logic;
        B_Mux           : in     vl_logic;
        DATA_MUX        : in     vl_logic_vector(1 downto 0);
        IM_MUX2         : in     vl_logic_vector(1 downto 0);
        ALU_OP          : in     vl_logic_vector(2 downto 0);
        CarryOut        : out    vl_logic
    );
end lab4b;
