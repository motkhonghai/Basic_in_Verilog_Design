module tb_full_subtractor;

    reg a, b, bin;
    wire d, borrow;

    full_subtractor uut (
        .a(a),
        .b(b),
        .bin(bin),
        .d(d),
        .borrow(borrow)
    );

    initial begin
        	
	$dumpfile("wave_form.vcd");
	$dumpvars(0, tb_full_subtractor);	

	$display("A B Bin | D Borrow");
        $display("-------|----------");
        for (integer i = 0; i < 8; i = i + 1) begin
            {a, b, bin} = i[2:0];
            #1; // delay nhỏ để cập nhật output
            $display("%b %b  %b  | %b   %b", a, b, bin, d, borrow);
        end
        $finish;
    end

endmodule

