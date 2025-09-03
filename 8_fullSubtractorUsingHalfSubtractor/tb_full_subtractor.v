module tb_full_subtractor();
	reg a,b,bi; 
	wire d,bo;

	full_subtractor uut(
		.a(a),
		.b(b),
		.bi(bi),
		.d(d),
		.bo(bo)
	);

	initial	begin
		$dumpfile("wave_form.vcd");
		$dumpvars(0, tb_full_subtractor);

		a=0;b=0;bi=0; #10
		a=0;b=0;bi=1; #10
		a=0;b=1;bi=0; #10
		a=0;b=1;bi=1; #10
		a=1;b=0;bi=0; #10
		a=1;b=0;bi=1; #10
		a=1;b=1;bi=0; #10
		a=1;b=1;bi=1; #10
		$finish;
	end
endmodule
