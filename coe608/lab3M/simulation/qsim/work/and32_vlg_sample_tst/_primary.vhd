library verilog;
use verilog.vl_types.all;
entity and32_vlg_sample_tst is
    port(
        Ain             : in     vl_logic_vector(31 downto 0);
        Bin             : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end and32_vlg_sample_tst;