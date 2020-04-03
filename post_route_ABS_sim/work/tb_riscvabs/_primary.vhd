library verilog;
use verilog.vl_types.all;
entity tb_riscvabs is
    generic(
        RAM_DEPTH       : integer := 30;
        I_SIZE          : integer := 32
    );
end tb_riscvabs;
