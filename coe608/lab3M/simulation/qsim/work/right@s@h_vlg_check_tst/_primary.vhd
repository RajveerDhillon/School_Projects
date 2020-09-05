library verilog;
use verilog.vl_types.all;
entity rightSH_vlg_check_tst is
    port(
        result          : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end rightSH_vlg_check_tst;
