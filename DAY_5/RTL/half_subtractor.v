module half_subtractor(diff,borrow,x,y);

input x,y;
output diff,borrow;

assign diff = x ^ y ; //difference 
assign borrow = ~x & y ; //borrow
endmodule
