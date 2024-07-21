//RTL : Half subtractor
module half_subtractor(diff,borrow,a,b);

output diff,borrow;
input a,b;

assign diff = a ^ b;
assign borrow = ~a & b;
endmodule
