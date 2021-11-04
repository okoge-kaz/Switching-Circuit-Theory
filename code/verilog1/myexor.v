module my_exor(x, y, F);
    input  x, y;
    output F;
    wire   nx, ny, w1, w2;

    assign nx = ~x;
    assign ny = ~y;
    assign w1 = x & ny;
    assign w2 = nx & y;
    assign F = w1 | w2; 
endmodule
