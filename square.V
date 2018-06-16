module square(input clk, reset, output reg [7:0] out);
	reg [7:0] counter;
	always @(posedge clk, posedge reset) begin
		if (reset==1) counter = 0;
		else begin
			counter <= counter + 1;
			out <= {counter[7],counter[7],counter[7],counter[7],counter[7],counter[7],counter[7],counter[7]};
		end
	end
endmodule