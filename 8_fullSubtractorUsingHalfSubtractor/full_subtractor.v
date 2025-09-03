module full_subtractor(input a, b, bi, output d, bo);

	wire w1, w2, w3;

	half_subtractor hs1(a, b, w1, w2);
	half_subtractor hs2(w1, bi, d, w3);

	assign bo = w2|w3;
endmodule
