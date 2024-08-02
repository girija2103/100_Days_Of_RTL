module mag_comparator(a,b,aeqb,agrb,alsb);

input a,b;
output aeqb,agrb,alsb;

assign aeqb = ~( a ^ b ); 
assign agrb = a & (~b );
assign alsb = ~a & (b);

endmodule
