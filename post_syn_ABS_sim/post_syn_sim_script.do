vlib work

vcom -93 -work ./work ./datamem.vhd
vcom -93 -work ./work ./IRAM.vhd

vlog -work ./work ./RISC-VABS.v

vlog -work ./work ./tbRISC-VABS.v

vsim -L /software/dk/nangate45/verilog/msim6.2g work.tb_riscvabs

