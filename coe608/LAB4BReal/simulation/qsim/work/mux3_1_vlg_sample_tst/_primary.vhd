library verilog;
use verilog.vl_types.all;
entity mux3_1_vlg_sample_tst is
    port(
        in0             : in     vl_logic_vector(31 downto 0);
        in1             : in     vl_logic_vector(31 downto 0);
        in2             : in     vl_logic_vector(31 downto 0);
        s               : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end mux3_1_vlg_sample_tst;
