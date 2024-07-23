module test_bench;

reg A,B,BIN;
wire D,BOUT; // difference and borrow out 

//initialisation
initial 
{A,B,BIN} =3'b0;

//instantiation 
full_subtractor fs1(.a(A),.b(B),.bin(BIN),.d(D),.bout(BOUT));

//stimulus generation 
initial 
begin 
integer i;
for(i=0;i<8;i++)
begin 
{A,B,BIN}=i; #10;
end
end

//monitor 
initial 
$monitor($time," A:%b || B:%b || BIN :%b || D:%b || BOUT :%b ",A,B,BIN,D,BOUT);
endmodule 

