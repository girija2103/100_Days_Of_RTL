module testbench ;

reg A,B,CIN;
wire S,COUT;

//instantiation 
full_adder f1(.s(S),.a(A),.b(B),.cin(CIN),.cout(COUT));


//initialisation 
initial 
{A,B,CIN}=3'b0;


initial 
begin 
integer i ;
for(i=0;i<8;i++)
begin 
{A,B,CIN}=i; #10;
end
end

//monitor
initial 
$monitor($time," A:%b || B :%b || CIN:%b || SUM :%b || COUT:%b ", A,B,CIN,S,COUT);




endmodule 
