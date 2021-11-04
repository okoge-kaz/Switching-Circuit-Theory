`include "myexor.v"

module myexor_test();
    reg in1,in2;
    wire out;
    my_exor exor1(in1, in2, out);

    initial begin
       $monitor($stime, ": in1=%b, in2=%b-->out=%b\n",
                in1, in2, out);
       $dumpfile("myexor_test.vcd");
       $dumpvars(0, myexor_test);

          in1 = 0; 
       #1 in2 = 0;
       #5 in1 = 1; in2 = 0;
       #5 in1 = 0; in2 = 1;
       #5 in1 = 1; in2 = 1;
       #5 $finish;
    end
endmodule
