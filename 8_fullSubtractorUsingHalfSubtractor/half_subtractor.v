/*
+-----+-----+-----+-------+
|  A  |  B  | diff| borrow|
+-----+-----+-----+-------+
|  0  |  0  |  0  |   0   |
+-----+-----+-----+-------+
|  0  |  1  |  1  |   1   |
+-----+-----+-----+-------+
|  1  |  0  |  1  |   0   |
+-----+-----+-----+-------+
|  1  |  1  |  0  |   0   |
+-----+-----+-----+-------+

diff    = 1 khi (a = 0 va b = 1) va (a = 1 va b = 0)
=> a'.b + a.b' = a^b (a xor b)

borrow  = 1 khi (a = 0 va b = 1)
=> (~a)&b (~a and b)

*/

module half_subtractor(input a, b, output d, bo);
        assign d     = a^b;
        assign bo   = (~a)&b;
endmodule
