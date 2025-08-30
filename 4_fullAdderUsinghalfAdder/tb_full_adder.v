module tb_full_adder;
    reg A, B, Cin;      
    wire Sum, C_out;    

    full_adder uut (
        .a(A),
        .b(B),
        .cin(Cin),
        .sum(Sum),
        .cout(C_out)
    );

    initial begin

        $dumpfile("waveform.vcd");
        $dumpvars(0, tb_full_adder);
        // Đảm bảo rằng mọi tín hiệu được in ra khi có sự thay đổi
        $monitor("A = %b, B = %b, Cin = %b, Sum = %b, Carry = %b", A, B, Cin, Sum, C_out);

        // Kiểm tra tất cả các kết hợp giá trị của A, B, Cin
        A = 0; B = 0; Cin = 0; #10;  // Test 000
        A = 0; B = 0; Cin = 1; #10;  // Test 001
        A = 0; B = 1; Cin = 0; #10;  // Test 010
        A = 0; B = 1; Cin = 1; #10;  // Test 011
        A = 1; B = 0; Cin = 0; #10;  // Test 100
        A = 1; B = 0; Cin = 1; #10;  // Test 101
        A = 1; B = 1; Cin = 0; #10;  // Test 110
        A = 1; B = 1; Cin = 1; #10;  // Test 111

        $finish;  // Kết thúc mô phỏng
    end
endmodule
