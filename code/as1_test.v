'include "as1.v"'

module as1_test();
    reg in1, in2, in3 ,in4;
    wire out;
    as1 circut(in1, in2, in3, in4, out);

    initial begin
        $monitor($stime, ": in1=%b, in2=%b, in3=%b, in4=%b-->out=%b\n"
        ,in1, in2, in3, in4, out);
        $dumpfile("as1.vcd");
        $dumvars(0, as1_test);

            in1 = 0;
        #1  in2 = 0;
        #1  in3 = 0;
        #1  in4 = 0;
        #5  in1 = 1; in2 = 0; in3 = 0; in4 = 0;
        #5  in1 = 0; in2 = 1; in3 = 0; in4 = 0;
        #5  in1 = 1; in2 = 1; in3 = 0; in4 = 0;
        #5  in1 = 0; in2 = 0; in3 = 1; in4 = 0;
        #5  in1 = 1; in2 = 0; in3 = 1; in4 = 0;
        #5  in1 = 0; in2 = 1; in3 = 1; in4 = 0;
        #5  in1 = 1; in2 = 1; in3 = 1; in4 = 0;
        #5  in1 = 0; in2 = 0; in3 = 0; in4 = 1;
        #5  in1 = 1; in2 = 0; in3 = 0; in4 = 1;
        #5  in1 = 0; in2 = 1; in3 = 0; in4 = 1;
        #5  in1 = 1; in2 = 1; in3 = 0; in4 = 1;
        #5  in1 = 0; in2 = 0; in3 = 1; in4 = 1;
        #5  in1 = 1; in2 = 0; in3 = 1; in4 = 1;
        #5  in1 = 0; in2 = 1; in3 = 1; in4 = 1;
        #5  in1 = 1; in2 = 1; in3 = 1; in4 = 1;
        #5  $finish
    end
endmodule