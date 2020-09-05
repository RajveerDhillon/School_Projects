library verilog;
use verilog.vl_types.all;
entity lab4Bvd_vlg_sample_tst is
    port(
        A_MUX           : in     vl_logic;
        ALU_Op          : in     vl_logic_vector(2 downto 0);
        B_MUX           : in     vl_logic;
        Clk             : in     vl_logic;
        Clr_A           : in     vl_logic;
        Clr_B           : in     vl_logic;
        Clr_C           : in     vl_logic;
        Clr_IR          : in     vl_logic;
        Clr_PC          : in     vl_logic;
        Clr_Z           : in     vl_logic;
        DATA_IN         : in     vl_logic_vector(31 downto 0);
        DATA_Mux        : in     vl_logic_vector(1 downto 0);
        EN              : in     vl_logic;
        IM_MUX1         : in     vl_logic;
        IM_MUX2         : in     vl_logic_vector(1 downto 0);
        Inc_PC          : in     vl_logic;
        Ld_A            : in     vl_logic;
        Ld_B            : in     vl_logic;
        Ld_C            : in     vl_logic;
        Ld_IR           : in     vl_logic;
        Ld_PC           : in     vl_logic;
        Ld_Z            : in     vl_logic;
        mClk            : in     vl_logic;
        REG_Mux         : in     vl_logic;
        WEN             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end lab4Bvd_vlg_sample_tst;
