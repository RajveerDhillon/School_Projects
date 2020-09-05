library verilog;
use verilog.vl_types.all;
entity reg is
    port(
        ld              : in     vl_logic;
        clr             : in     vl_logic;
        clk             : in     vl_logic;
        data_in         : in     vl_logic_vector(31 downto 0);
        data_out        : out    vl_logic_vector(31 downto 0)
    );
end reg;
