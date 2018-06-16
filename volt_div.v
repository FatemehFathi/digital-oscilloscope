module volt_div(input[7:0] volt_in, input[1:0] volt_div, output reg[7:0] volt_out);
	always @(*) begin
		case (volt_div)
			0: volt_out = volt_in;
			1: volt_out = volt_in >> 1;
			2: volt_out = volt_in >> 2;
			3: volt_out = volt_in >> 3;
		endcase
	end
endmodule