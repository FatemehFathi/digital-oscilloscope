module trigger_mode(input clk, sel, trig_enable, output trig);
	/* sel = 0 is normal mode and sel = 1 is auto mode */
	
	reg[9:0] counter;
	reg auto_trig;
	always@(posedge clk) begin
		counter <= counter + 1;
		auto_trig <= 0;
		
		if (sel == 1 && counter == 639) begin
			counter <= 0;
			auto_trig <= 1;
		end
	
		if (sel == 1 && trig_enable == 1) begin
			counter <= 0;
			auto_trig <= 1;
		end	
	end

	assign trig = (sel == 0) ? trig_enable : auto_trig;
	
endmodule
