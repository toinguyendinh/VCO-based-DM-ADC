`timescale  1ns/1ps
module tb_dff;
	reg clk, vco, rst_n;
	wire DFF_1;
	integer i;
	integer nCase=20;
	initial begin
		clk = 0;
		rst_n = 0;
		vco=0;
	end

	always #1 clk = ~clk;
	
	dff dut (
	.clk(clk),
	.vco(vco),
	.DFF_1(DFF_1),
	.rst_n(rst_n));

	initial begin
		$dumpfile("test.vcd");
		$dumpvars(0, tb_dff);
	end

	initial begin
		#10 rst_n=1;

		for (i=0; i<nCase; i++) begin
			#10 vco = 1;
			#10 vco = 0;
		end 
		$finish();
	end
	
//	always #10 vco = ~vco;
  
endmodule