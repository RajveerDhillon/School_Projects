library verilog;
use verilog.vl_types.all;
entity adder32 is
    port(
        Ain             : in     vl_logic_vector(31 downto 0);
        Bin             : in     vl_logic_vector(31 downto 0);
        Cin             : in     vl_logic;
        Cout            : out    vl_logic;
        result          : out    vl_logic_vector(31 downto 0)
    );
end adder32;
