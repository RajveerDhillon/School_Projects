library verilog;
use verilog.vl_types.all;
entity mux3_1_vlg_check_tst is
    port(
        out0            : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end mux3_1_vlg_check_tst;
