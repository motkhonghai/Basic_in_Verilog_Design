/*
+-----+-----+-----+-------+
|  A  |  B  | Sum | Carry |
+-----+-----+-----+-------+
|  0  |  0  |  0  |   0   |
+-----+-----+-----+-------+
|  0  |  1  |  1  |   0   |
+-----+-----+-----+-------+
|  1  |  0  |  1  |   0   |
+-----+-----+-----+-------+
|  1  |  1  |  0  |   1   |
+-----+-----+-----+-------+

sum 	= 1 khi (a = 0 va b = 1) va (a = 1 va b = 0) => a'.b + a.b' = a^b (a xor b)
cout 	= 1 khi (a = 1 va b = 1) => a&b (a and b)

*/



module half_adder(a, b, sum, cout);

	input 		a, b;
	output 		sum, cout;

	assign sum 	= a ^ b;
	assign cout 	= a & b; 

endmodule
