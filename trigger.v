module trigger(input clk, slope, input[7:0] level, data, output reg trig_enable);
	reg prev = 0;
	reg current = 0;

	always@(posedge clk) begin
		trig_enable = 0;
		prev = current;
		current = (data > level) ? 1 : 0;

		case (slope)
			0: if(~current && prev) trig_enable = 1; //negative slope
			1: if(current && ~prev) trig_enable = 1; //positive slope
		endcase
	end
	
endmodule
