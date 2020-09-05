library verilog;
use verilog.vl_types.all;
entity rightSH is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        result          : out    vl_logic_vector(31 downto 0)
    );
end rightSH;
