
module test_bench ;

reg A,B;
wire AeqB,AgrB,AlsB;

//instantiation 
mag_comparator m1(A,B,AeqB,AgrB,AlsB);

//initialisation 
initial 
{A,B}=2'b0;

//stimulus generation 
initial 
begin 
integer i ;

for(i=0;i<4;i++)
begin 
{A,B}=i;
#10 ;

end
end

//monitor 
initial 
$monitor ($time," A:%b || B:%b || A==B :%b || A>B : %b || A<B: %b ",A,B , AeqB, AgrB,AlsB);
endmodule
