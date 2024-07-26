//DECIMAL to BCD ENCODER 
module bcd_encoder (y,a);
input [9:0] y;
output [3:0] a;

reg [3:0] a;

always @ (y)
begin 
case (y)

10'd1 : a= 4'b0 ;
10'd2 : a=4'd1;
10'd4 : a=4'd2;
10'd8 : a=4'd3;
10'd16: a= 4'd4;
10'd32: a= 4'd5;
10'd64 : a=4'd6;
10'd128: a=4'd7;
10'd256: a=4'd8 ;
10'd512 :a=4'd9;
default : a = 4'b0;
endcase

end

endmodule
