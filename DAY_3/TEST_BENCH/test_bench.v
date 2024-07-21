
//Test Bench
module test_bench ;
reg A,B;
wire DIFF,BRW;
integer i ;
//initialisation 
initial 
{A,B}=2'b00;

//instantiation 
half_subtractor hs1(.a(A),.b(B),.diff(DIFF),.borrow(BRW));


//stimulus genertaion 
initial 
begin 
for(i=0;i<4;i++)
begin 
{A,B}=i;#10 ;
$display($time," A:%b || B :%b || DIFF :%b || BORROW :%b ",A,B,DIFF,BRW);


end
end
endmodule

