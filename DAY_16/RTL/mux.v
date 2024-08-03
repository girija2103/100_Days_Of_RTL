module mux_4_1(a0, a1, a2, a3, s0, s1, y);

input a0, a1, a2, a3;
input s0, s1;
output wor y;
wire w1, w2, w3, w4;

// instantiation 
decoder_2_4 d1 (.i0(s0), .i1(s1), .y0(w1), .y1(w2), .y2(w3), .y3(w4));

// buffer 
bufif1 b1 (y, w1, a0);
bufif1 b2 (y, w2, a1);
bufif1 b3 (y, w3, a2);
bufif1 b4 (y, w4, a3);

endmodule
