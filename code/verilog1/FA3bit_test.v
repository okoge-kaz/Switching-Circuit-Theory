`include "FA.v"

module FA3bit_test();
   reg [2:0] x, y;
   reg c0;
   wire [2:0] s;
   wire c3;
   
   FA3bit foo(c3, x, y, s, c0);

   initial begin
      $monitor($stime, ": x=%b + y=%b --> s=%b, c3=%b\n",
               x, y, s, c3);
      $dumpfile("FA3bit_test.vcd");
      $dumpvars(0, FA3bit_test);

      c0 = 0; 
      #5 x = 3'b000; y = 3'b001;
      #5 x = 3'b001; y = 3'b001;
      #5 x = 3'b011; y = 3'b010;
      #5 x = 3'b011; y = 3'b011;
      #5 x = 3'b111; y = 3'b111;
      #5 $finish;
   end
endmodule
