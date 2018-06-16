module time_div(input clk_in, input[1:0] time_div, output reg clk_out);
	reg clk1, clk2, clk3;
	
	always@(posedge clk_in)
		clk1 <= !clk1;
	always@(posedge clk1)
		clk2 <= !clk2;
	always@(posedge clk2)
		clk3 <= !clk3;
	always@(clk_in) begin
		case (time_div)
			0: clk_out <= clk_in;
			1: clk_out <= clk1;
			2: clk_out <= clk2;
			3: clk_out <= clk3;
			default: clk_out <= clk_in;
		endcase
	end
endmodule