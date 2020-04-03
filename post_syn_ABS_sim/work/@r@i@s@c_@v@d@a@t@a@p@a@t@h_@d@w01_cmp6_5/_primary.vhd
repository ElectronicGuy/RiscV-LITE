library verilog;
use verilog.vl_types.all;
entity RISC_VDATAPATH_DW01_cmp6_5 is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        TC              : in     vl_logic;
        LT              : out    vl_logic;
        GT              : out    vl_logic;
        EQ              : out    vl_logic;
        LE              : out    vl_logic;
        GE              : out    vl_logic;
        NE              : out    vl_logic
    );
end RISC_VDATAPATH_DW01_cmp6_5;
