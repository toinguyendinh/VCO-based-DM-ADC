module dff(
  input vco, clk, rst_n,
  output reg DFF_1);
  
  always @ (posedge clk, negedge rst_n) begin
	if (!rst_n) begin
		DFF_1 <= 1'b0;
	end 
	else begin    
		DFF_1 <= vco;
	end
  end
endmodule
