`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module tb_riscvabs ();

   parameter RAM_DEPTH = 30; 
   parameter I_SIZE = 32;

   reg clk = 1'b0;
   reg rst = 1'b0;

  // signals to connect datapath with IRAM and DMEM
  wire [31:0] fromIRAMsignal, fromDRAMSignal, toIRAMsignal, toDRAMaddressSignal, toDRAMdataSignal;
  wire toDRAMenableSignal, toDRAMrwSignal;
  wire [2:0] toDRAMfunct3Signal;

  RISC_VDATAPATH DATAPATHINST (.clk(clk),
           .rst(rst),
           .fromIRAM(fromIRAMsignal),
           .fromDRAM(fromDRAMSignal),
           .toIRAM(toIRAMsignal),
           .toDRAMaddress(toDRAMaddressSignal),
           .toDRAMdata(toDRAMdataSignal),
           .toDRAMenable(toDRAMenableSignal),
           .toDRAMrw(toDRAMrwSignal),
           .toDRAMfunct3(toDRAMfunct3Signal));

  datamem DRAMINST (.clk(clk),
           .reset(rst),
           .enable(toDRAMenableSignal),
           .datamem_address(toDRAMaddressSignal),
           .datamem_datain(toDRAMdataSignal),
           .datamem_negread_write(toDRAMrwSignal),
           .funct3(toDRAMfunct3Signal),
           .datamem_dataout(fromDRAMSignal));

  IRAM #(RAM_DEPTH, I_SIZE) IRAMINST (.rst(rst),
           .Addr(toIRAMsignal),
           .Dout(fromIRAMsignal));

   initial
	begin
	  #5
	  rst = 1'b1;
	end
   
   always 
	begin
      clk = 1'b1; 
      #1; // high for 1 * timescale = 1 ns

      clk = 1'b0;
      #1; // low for 1 * timescale = 1 ns
	end

endmodule
