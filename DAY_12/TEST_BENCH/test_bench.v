

module test_bench ;


reg [3:0] A;

reg [1:0] S; // select lines

wire Y ; //output 

//instantitiation 
mux_4_1 m1(.y(Y),.a(A),.s(S));



//stimulus generation 
initial 
begin 
integer i ;
A=4'b0; S= 2'bzz; #10 ;
for(i=0;i<2**(6);i++)
begin 

{S,A}=i; #10 ;
end

end

//monitor 
initial 
$monitor ($time," S:%b || A:%b  || Y:%b ",S,A,Y);

endmodule
