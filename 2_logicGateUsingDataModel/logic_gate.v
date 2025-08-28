module logic_gate(a, b, and_out, or_out, xor_out, xnor_out, nand_out,notb_out);
	input 	a, b;
	output 	 and_out, or_out, xor_out, xnor_out, nand_out,notb_out;

	assign and_out 	= a & b;
	assign or_out	= a | b;
	assign xor_out	= a ^ b;
	assign xnor_out	= ~(a ^ b);
	assign nand_out = ~(a & b);
	assign notb_out	= ~b;

endmodule
