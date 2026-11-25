module tb_four_bit_adder;
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    four_bit_adder uut (A, B, Cin, Sum, Cout);

    initial begin
        $dumpfile("adder.vcd");
        $dumpvars(0, tb_four_bit_adder);
        $monitor("A=%d B=%d Cin=%b -> Sum=%d Cout=%b", A, B, Cin, Sum, Cout);

        A=4'd1;  B=4'd3;  Cin=0; #10;
        A=4'd5;  B=4'd6;  Cin=1; #10;
        A=4'd15; B=4'd15; Cin=1; #10;
        A=4'd0;  B=4'd0;  Cin=0; #10;
        A=4'd15; B=4'd15; Cin=0; #10;
        $finish;
    end
endmodule