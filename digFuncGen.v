module digFuncGen(input [2:0] func, input clk, reset, output reg [7:0] out, output reg arbitrarySelector);
	wire [7:0] square_out, sine_out, sawtooth_out, triangle_out, rhomboid_out;
	sine _sine(clk, reset, sine_out);
	square _square(clk, 1'b0, square_out);
	sawtooth _sawtooth(clk, 1'b0, sawtooth_out);
	triangle _triangle(clk, 1'b0, triangle_out);
	rhomboid _rhomboid(clk, 1'b0, rhomboid_out);
	reg [7:0] counter;
	always@ (posedge clk) begin
		arbitrarySelector = 1'b0;
		case(func)
			0: out <= rhomboid_out; 
			1: out <= sine_out;
			2: out <= square_out;
			3: out <= triangle_out;
			4: out <= sawtooth_out;
			5: arbitrarySelector <= 1'b1 ;
			default: begin counter <= counter + 1;
			out <= {counter[7],counter[7],counter[7],counter[7],counter[7],counter[7],counter[7],counter[7]};
			end
		endcase
	end
endmodule
