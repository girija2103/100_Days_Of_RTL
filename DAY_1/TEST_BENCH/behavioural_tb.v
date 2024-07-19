//test bench behavioural -> NOR

module tb();

reg A,B;
wire Y;
integer i ;
//monitor 
initial
$monitor ($time," A:%b || B=%b || Y=%b " , A,B,Y);

//instantiation 

behavioural b1(.a(A),.b(B),.y(Y));

//stimulus generation 

initial
begin

for(i=0;i<4;i++)
begin
{A,B}=i;
#10;
end
  

end

initial
#50 $finish ;

endmodule

