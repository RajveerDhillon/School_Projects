library verilog;
use verilog.vl_types.all;
entity mux2_1_vlg_sample_tst is
    port(
        in0             : in     vl_logic_vector(31 downto 0);
        in1             : in     vl_logic_vector(31 downto 0);
        s               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mux2_1_vlg_sample_tst;
