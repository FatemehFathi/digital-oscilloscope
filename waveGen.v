module waveGen(input[7:0]data, input[9:0] y, output[2:0] rgb);
	assign rgb = ((368 - data) == y) ? 3'b010 : 3'b000;
endmodule