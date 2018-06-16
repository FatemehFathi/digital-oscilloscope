module VGAcontroller(input R_in, G_in, B_in, clk,
 output reg R_out, G_out, B_out, H_sync, V_sync, output reg[9:0] x, y);
	always@(posedge clk) begin
		x <= x + 1;
		
		if (x == 699)
			y <= y + 1;
			
		if (y == 524 && x == 699)
			y <= 1'b0; 
			
		if (x == 799)
			x <= 0;
			
		if (x > 658 && x < 756 )
			H_sync <= 1'b0;
		else
			H_sync <= 1'b1;
		
		if (y > 493 && y < 496)
			V_sync <= 1'b0;
		else 
			V_sync <= 1'b1;
			
		if (x > 639 || y > 439)
			{R_out, G_out, B_out} <= 3'b0; 
		else
			{R_out, G_out, B_out} <= {R_in, G_in, B_in};
	end

endmodule