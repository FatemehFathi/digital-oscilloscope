module waveOrGridOrText(input[2:0] grid_rgb, wave_rgb, text_rgb, output reg[2:0] out_rgb);
	always@(*) begin
		if (wave_rgb != 0)
			out_rgb = wave_rgb;
		else
			out_rgb = grid_rgb;
	end
endmodule