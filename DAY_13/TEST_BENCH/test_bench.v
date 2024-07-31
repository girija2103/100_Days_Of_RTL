module test_bench ;

reg [3:0] A , B ;

wire [3:0] S;
wire CARRY ; 

//instantiation 
ripple_carry_adder r1(.a(A),.b(B),.cout(CARRY),.s(S));

//intiliasation 
initial 
{A,B} = 8'b0 ;

//stimulus generation 
initial 
begin 
integer i ;
for(i=0;i<2**(8);i++)
begin 
{A,B} = i ;
#10 ;
end
end

//monitor 
initial
$monitor($time," A: %b|| B:%b || S:%b || C:%b ",A,B,S,CARRY);
endmodule

