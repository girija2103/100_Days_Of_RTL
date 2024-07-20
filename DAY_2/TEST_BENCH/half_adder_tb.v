//TEST BENCH
module half_adder_tb;

reg A,B; //input 
wire S,C;//output 
integer i ;
//initialisation 
initial 
{A,B} =2'b00;

//instantiation 
half_adder ha1(.a(A),.b(B),.c(C),.s(S));

//stimulus generation 
initial 
begin 
for(i =0;i<4;i++)
begin 
{A,B}=i;#10;
$display($time , " A:%b || B:%b || S:%b || C:%b",A,B,S,C);

end

end


endmodule

