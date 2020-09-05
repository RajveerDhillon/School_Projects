library verilog;
use verilog.vl_types.all;
entity adder32_vlg_sample_tst is
    port(
        Ain             : in     vl_logic_vector(31 downto 0);
        Bin             : in     vl_logic_vector(31 downto 0);
        Cin             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end adder32_vlg_sample_tst;
