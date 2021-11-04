module FA(c_out, s, x, y, c_in);
   input  x, y, c_in;
   output c_out, s;

   assign s = ~c_in & ~x & y | ~c_in & x & ~y | c_in & ~x & ~y | c_in & x &y;
   assign c_out = c_in & y | c_in & x | x & y;
endmodule


module FA3bit(c3, x, y, s, c0);
   input [2:0] x, y;
   input c0;
   output [2:0] s;
   output c3;
   wire   c1, c2;
   
   FA FA1(c1, s[0], x[0], y[0], c0);
   FA FA2(c2, s[1], x[1], y[1], c1);
   FA FA3(c3, s[2], x[2], y[2], c2);
endmodule   
