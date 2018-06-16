module sampling(input clk, input [7:0] data_in, output reg[7:0] data_out);
	always@(posedge clk)
		data_out <= data_in;
endmodule