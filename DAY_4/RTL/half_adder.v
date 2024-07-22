module half_adder (sum,carry,x,y);

input x,y;
output sum,carry;

assign sum = x ^ y ;
assign carry = x & y;

endmodule
