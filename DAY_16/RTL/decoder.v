module decoder_2_4 (i0, i1, y0, y1, y2, y3);

input i0, i1;
output y0, y1, y2, y3;

assign y0 = ~i0 & ~i1;
assign y1 = i0 & ~i1;
assign y2 = ~i0 & i1;
assign y3 = i0 & i1;

endmodule

