library verilog;
use verilog.vl_types.all;
entity reg_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        data_in         : in     vl_logic_vector(31 downto 0);
        ld              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end reg_vlg_sample_tst;
