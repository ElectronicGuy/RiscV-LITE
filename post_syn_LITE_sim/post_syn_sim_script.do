vlib work

vcom -93 -work ./work ./datamem.vhd
vcom -93 -work ./work ./IRAM.vhd

vlog -work ./work ./RISC-VLITE.v

vlog -work ./work ./tbRISC-VLITE.v

vsim -L /software/dk/nangate45/verilog/msim6.2g work.tb_riscvlite

