//TESTBENCH
module test_bench ;
reg [3:0] Y;
wire [1:0] A;

//instanstiation
encoder e1(.y(Y),.a(A));

//initialisation
initial 
Y=4'b0;


//stimulus generattion 
initial 
begin 
integer i ;
for(i =0;i<16;i++)
begin 

Y=i ; #10 ;
$display($time," Y:%b || A:%b ",Y,A);
end
end
endmodule 

