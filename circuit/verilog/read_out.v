module read_out(
		input [4:0] vco,
		input clk, rst_n,
		output [2:0] out_qz);
	reg [4:0] DFF_1_int, DFF_2_int;
	wire [4:0] out_xor;
	genvar i;
	generate 
		for (i = 0; i <= 4; i = i + 1) begin
			always@(posedge clk, negedge rst_n) begin
				if (!rst_n) begin 
					DFF_1_int[i] <= 1'b0;
					DFF_2_int[i] <= 1'b0;
				end else begin
					DFF_1_int[i] <= vco[i];
					DFF_2_int[i] <= DFF_1_int[i];
				end
			end
			assign out_xor[i] = DFF_1_int[i] ^ DFF_2_int[i];
		end
	endgenerate
	assign out_qz = out_xor[0]+out_xor[1]+out_xor[2]+out_xor[3]+out_xor[4];
endmodule

// generate
// for (i=0; i<=4; i=i+1) begin
// always @(posedge clk, negedge rst_n) begin	
// 	if (!rst_n) begin
// 		DFF_1_int[i] <= 1'b0;
// 		DFF_2_int[i] <= 1'b0;
// 	end
// 	else begin
// 		DFF_1_int[i] <= vco[i];
// 		DFF_2_int[i] <= DFF_1_int[i];
// 	end
// 	end
//  end
// endgenerate

// generate
// 	for (i=0; i<=4; i=i+1) begin
// 		assign out_temp[i] = DFF_1_int[i] ^ DFF_2_int[i];
// 	end
// endgenerate
