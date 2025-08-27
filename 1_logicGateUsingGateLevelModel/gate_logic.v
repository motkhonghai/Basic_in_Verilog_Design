module gate_logic(a, b, and_out, or_out, xor_out, xnor_out, nand_out, notb_out);
	input 	a, b;
	output 	and_out, or_out, xor_out, xnor_out, nand_out, notb_out;

	and 	a1(and_out, a, b);
	or	o1(or_out, a, b);
	xor	x1(xor_out, a, b);
	xnor	x2(xnor_out, a, b);
	nand	n1(nand_out, a, b);
	not	n2(notb, b);

endmodule
