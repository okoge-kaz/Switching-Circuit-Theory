module as1 (
  x1, x2, x3, x4, F
);
  input x1, x2, x3, x4;
  output F;
  wire nx1, nx3, nx4;

  assign nx1 = ~x1;
  assign nx3 = ~x3;
  assign nx4 = ~x4;
  assign w1 = x1 & x2 & nx4;
  assign w2 = w2 & nx1 & nx3;
  assign F = w1 | w2;
endmodule