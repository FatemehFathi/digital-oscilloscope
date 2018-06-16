module triangle(input clk, reset, output reg [7:0] out);
	
	reg [7:0] counter;
	always @(posedge clk, posedge reset) begin
		if (reset==1) begin
			counter <= 0;
		end
		else counter <= counter + 1;
	end
	always @(counter) begin
		if (counter < 127)
			out <= counter << 1;
		else 
			out <= (255 - counter) << 1;
	end
	
endmodule