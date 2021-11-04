module as1(x, F);
  input [3:0] x;
  output F;
  wire nx1, nx3, nx4, w1, w2;

  assign nx1 = ~x[0];
  assign nx3 = ~x[2];
  assign nx4 = ~x[3];
  assign w1 = x[0] & x[1] & nx4;
  assign w2 = nx1 & nx3;
  assign F = w1 | w2;
endmodule