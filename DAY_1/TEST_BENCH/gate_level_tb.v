//test bench : gate level 

module gate_level_tb();

reg A,B;
wire Y ;

integer i ;

//instantiation 
gate_level_nor nor1(.a(A),.b(B),.y(Y));

//initialisation 
initial
{A,B}=2'b00 ; //assignment using concatenation 

//stimulus generation 
initial 
begin 
for(i=0;i<4;i++)
begin 
{A,B}=i; #10 //delay between successive input combinations
$display($time , " A:%b || B:%b || Y:%B ",A,B,Y);
end
end

//simulation completion after #x ns 
initial 
#50 $finish ;
endmodule 
