module test_bench ;

reg [3:0] A,B ;
reg K ; 

wire [3:0] S;
wire COUT ;


//instantiation 
adder_subtractor as1(A,B,K,S,COUT);

//initialisation 
initial 
{K,A,B} = 9'b0;


//stimulus generation 
initial 
begin 
integer i ;
for(i=0;i<2**(9);i++)
begin 

{K,A,B} = i ;
#10 ;

end


end

//monitor 
initial 
$monitor($time," K:%b || A:%b || B:%b || S:%b || C:%b ",K,A,B,S,COUT);

endmodule
