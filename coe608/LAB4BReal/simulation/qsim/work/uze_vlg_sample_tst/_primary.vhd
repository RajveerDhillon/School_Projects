library verilog;
use verilog.vl_types.all;
entity uze_vlg_sample_tst is
    port(
        data_in         : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end uze_vlg_sample_tst;
