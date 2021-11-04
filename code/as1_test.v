`include "as1.v"

module as1_test();
    reg [3:0] in;
    wire out;

    as1 circut(in, out);

    initial begin
        $monitor($stime, ": in=%b --> out=%b\n"
        ,in, out);
        $dumpfile("as1.vcd");
        $dumpvars(0, as1_test);

        in = 4'b0000;
        #5 in = 4'b0000;
        #5 in = 4'b0001;
        #5 in = 4'b0010;
        #5 in = 4'b0011;
        #5 in = 4'b0100;
        #5 in = 4'b0101;
        #5 in = 4'b0110;
        #5 in = 4'b0111;
        #5 in = 4'b1000;
        #5 in = 4'b1001;
        #5 in = 4'b1010;
        #5 in = 4'b1011;
        #5 in = 4'b1100;
        #5 in = 4'b1101;
        #5 in = 4'b1110;
        #5 in = 4'b1111;
        #5  $finish;
    end
endmodule