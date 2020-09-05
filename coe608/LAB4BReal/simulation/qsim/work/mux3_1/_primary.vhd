library verilog;
use verilog.vl_types.all;
entity mux3_1 is
    port(
        in0             : in     vl_logic_vector(31 downto 0);
        in1             : in     vl_logic_vector(31 downto 0);
        in2             : in     vl_logic_vector(31 downto 0);
        s               : in     vl_logic_vector(1 downto 0);
        out0            : out    vl_logic_vector(31 downto 0)
    );
end mux3_1;
