library verilog;
use verilog.vl_types.all;
entity RISC_VDATAPATH_DW01_add_3 is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        CI              : in     vl_logic;
        SUM             : out    vl_logic_vector(31 downto 0);
        CO              : out    vl_logic;
        n7422           : in     vl_logic;
        n7416           : in     vl_logic;
        n7414           : in     vl_logic;
        n7413           : in     vl_logic
    );
end RISC_VDATAPATH_DW01_add_3;
