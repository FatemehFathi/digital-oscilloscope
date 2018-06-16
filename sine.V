module sine(input clk, reset, output [7:0] out);
	reg signed[15:0] sin_1, cos_1;
	reg[15:0] sin, cos;
	always @(posedge clk, posedge reset) begin
		if (reset == 1) begin
			sin_1 = 0;
			cos_1 = 16'd30000; // = 30000
		end
		else begin
			sin = sin_1 + {cos_1[15], cos_1[15], cos_1[15], cos_1[15], cos_1[15], cos_1[15], cos_1[15:6]};
			cos = cos_1 - {sin[15], sin[15], sin[15], sin[15], sin[15], sin[15], sin[15:6]};
			sin_1 = sin;
			cos_1 = cos;
			
		end
	end
	assign out = sin[15:8] + 8'd128;
endmodule