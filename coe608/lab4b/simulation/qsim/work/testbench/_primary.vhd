library verilog;
use verilog.vl_types.all;
entity testbench is
    port(
        data_out        : out    vl_logic_vector(31 downto 0);
        ld              : in     vl_logic;
        clr             : in     vl_logic;
        inc             : in     vl_logic;
        clk             : in     vl_logic;
        data_in         : in     vl_logic_vector(31 downto 0)
    );
end testbench;
