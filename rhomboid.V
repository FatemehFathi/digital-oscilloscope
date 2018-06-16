module rhomboid(input clk, reset, output reg [7:0] out);
	reg[7:0] counter;
	always @(posedge clk, posedge reset) begin
			if (reset == 1) 
				counter <= 0;
			else begin
				if (counter[0] == 0 && counter[7] == 0)
					out <= 128 - counter;
				else if (counter[0] == 0 && counter[7] == 1)
					out <= counter + 128;
				else if (counter[0] == 1 && counter[7] == 0)
					out <= counter + 128;
				else if (counter[0] == 1 && counter[7] == 1)
					out <= 255 + 127 - counter;
				counter <= counter + 1;
			end
	end
endmodule