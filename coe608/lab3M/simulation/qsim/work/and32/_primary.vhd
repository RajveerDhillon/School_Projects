library verilog;
use verilog.vl_types.all;
entity and32 is
    port(
        Ain             : in     vl_logic_vector(31 downto 0);
        Bin             : in     vl_logic_vector(31 downto 0);
        result          : out    vl_logic_vector(31 downto 0)
    );
end and32;
