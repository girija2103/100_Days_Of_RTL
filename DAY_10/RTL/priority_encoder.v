//RTL
module priority_encoder(y,a);
input [3:0] y;
output [1:0]a;


reg [1:0] a ;

always @ ( y)
begin

if(y[3]==1) a=2'b11;
else if (y[2]==1) a=2'b10 ;

else if (y[1]==1) a =2'b01;
else if (y[0] ==1 ) a = 2'b00;

else a=2'bxx;
end

endmodule
