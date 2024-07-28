module mux(a,y,s);
input [1:0] a ; //input 

input s ;//select line

output y;
reg y;

always @( a or s)
begin 
case (s)
1'b0: y= a[0];
1'b1 : y = a[1];
default : y= 1'bz;
endcase

end

endmodule
