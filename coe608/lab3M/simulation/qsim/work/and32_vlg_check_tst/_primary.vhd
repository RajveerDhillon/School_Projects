library verilog;
use verilog.vl_types.all;
entity and32_vlg_check_tst is
    port(
        result          : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end and32_vlg_check_tst;
