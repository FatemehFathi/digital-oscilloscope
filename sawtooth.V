module sawtooth(input clk, reset, output reg [7:0] out);
	always @(posedge clk,posedge reset) begin
		if (reset==1) out = 0;
		else out <= out + 1;
	end
endmodule