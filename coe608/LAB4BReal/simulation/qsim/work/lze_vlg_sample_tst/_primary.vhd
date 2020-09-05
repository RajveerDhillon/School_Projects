library verilog;
use verilog.vl_types.all;
entity lze_vlg_sample_tst is
    port(
        data_in         : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end lze_vlg_sample_tst;
