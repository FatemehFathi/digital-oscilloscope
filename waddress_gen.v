module waddress_gen(input clk, trig, output reg write_enable, output reg[9:0] waddr);

	always @(posedge clk) begin
		if (waddr == 639) begin
			write_enable <= 0;
			if (trig == 1)
				waddr <= 0;
		end
		else begin
			waddr <= waddr + 1;
			write_enable <= 1;
		end
	end
endmodule
