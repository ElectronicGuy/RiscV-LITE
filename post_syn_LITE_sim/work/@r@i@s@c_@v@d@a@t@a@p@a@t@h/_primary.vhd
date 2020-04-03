library verilog;
use verilog.vl_types.all;
entity RISC_VDATAPATH is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        fromIRAM        : in     vl_logic_vector(31 downto 0);
        fromDRAM        : in     vl_logic_vector(31 downto 0);
        toIRAM          : out    vl_logic_vector(31 downto 0);
        toDRAMaddress   : out    vl_logic_vector(31 downto 0);
        toDRAMdata      : out    vl_logic_vector(31 downto 0);
        toDRAMenable    : out    vl_logic;
        toDRAMrw        : out    vl_logic;
        toDRAMfunct3    : out    vl_logic_vector(2 downto 0)
    );
end RISC_VDATAPATH;
