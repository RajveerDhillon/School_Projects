library verilog;
use verilog.vl_types.all;
entity testbench_vlg_check_tst is
    port(
        data_out        : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end testbench_vlg_check_tst;
