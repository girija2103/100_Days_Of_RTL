//test bench : switch level implemetation

module switch_level_tb();

reg A,B;
wire Y;

integer i ;
//instantiation 
switch_level nor1(.a(A),.b(B),.y(Y));

//initialisation 
initial 
{A,B} =2'b00;

//stimulus generation 
initial 
begin 

for (i=0;i<4;i++)
begin
  {A,B} =i ; #10 ; 
  $display ($time , " A:%b || B:%b || Y:%b ",A,B,Y);
end
end

//simulation completion 
initial
#50 $finish ;


endmodule 

