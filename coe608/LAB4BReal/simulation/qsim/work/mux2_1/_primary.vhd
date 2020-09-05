library verilog;
use verilog.vl_types.all;
entity mux2_1 is
    port(
        in0             : in     vl_logic_vector(31 downto 0);
        in1             : in     vl_logic_vector(31 downto 0);
        s               : in     vl_logic;
        out0            : out    vl_logic_vector(31 downto 0)
    );
end mux2_1;
