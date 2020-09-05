library verilog;
use verilog.vl_types.all;
entity registerPC_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        d               : in     vl_logic_vector(31 downto 0);
        inc             : in     vl_logic;
        ld              : in     vl_logic;
        q               : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end registerPC_vlg_sample_tst;
