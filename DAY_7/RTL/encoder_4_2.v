//RTL : ENCODER 4 - 2 
module encoder (y,a);

input [3:0] y ;
output [1:0] a;

reg [1:0] a;

always @(y)
begin 
case(y)

4'b0001 : a=2'b00;
4'b0010 : a =2'b01;
4'b0100 : a = 2'b10 ;
4'b1000 : a =2'b11;

default : a =2'b00; //default case
endcase
end

endmodule 
