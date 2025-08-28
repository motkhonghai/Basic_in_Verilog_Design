module tb_logic_gate();
	reg 	a, b;
	wire	and_out, or_out, xor_out, xnor_out, nand_out,notb_out;

	logic_gate uut(
		.a(a),
		.b(b),
		.and_out(and_out),
		.or_out(or_out), 
		.xor_out(xor_out),
		.xnor_out(xnor_out),
		.nand_out(nand_out),
		.notb_out(notb_out)
	);

	initial begin 
		// khoi tao file wave form
		$dumpfile("waveform.vcd");	// ten file la waveform.vcd duoc sinh ra
		$dumpvars(0, tb_logic_gate);	// ghi tat ca cac tin hieu cua tb_logic_gate

		// test vector
		a = 0; b = 0; #10;
                a = 0; b = 1; #10;
                a = 1; b = 0; #10;
                a = 1; b = 1; #10;
                a = 0; b = 0; #10;
                $finish;
	end

endmodule
