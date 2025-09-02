/*
| A | B | Bin | D | Borrow |
|---|---|-----|---|--------|
| 0 | 0 |  0  | 0 |   0    |
| 0 | 0 |  1  | 1 |   1    |
| 0 | 1 |  0  | 1 |   1    |
| 0 | 1 |  1  | 0 |   1    |
| 1 | 0 |  0  | 1 |   0    |
| 1 | 0 |  1  | 0 |   0    |
| 1 | 1 |  0  | 0 |   0    |
| 1 | 1 |  1  | 1 |   1    |

d = a^b^bin
borrow = (~a&b) | (bin&~a) | (bin&b) 
*/
module full_subtractor(input a, b, bin, output d, borrow);
	assign d = a^b^bin;
	assign borrow = (~a&b) | (bin&~a) | (bin&b);
endmodule
