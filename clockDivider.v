module clockDivider(input clkIn, output reg clkOut);
	always@(posedge clkIn) begin
		clkOut <= !clkOut;
	end
endmodule
