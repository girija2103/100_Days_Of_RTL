module test_bench ;

reg [7:0] Y;
reg  EN;
wire [2:0] A;


//instantiation 
priority_encoder e1(.y(Y),.en(EN),.a(A));


//intialisation 
initial 
begin 

Y=8'b0;
EN=1'b0;

end

//stimulus generation 
initial 
begin 

integer i ;

EN=1'b0; Y=8'b1; #10 ;
EN=1'b1;
for(i=0;i<2**(8);i++)
begin 

Y= i ; #10 ;
end

end

//monitor 
initial 
$monitor($time," Y:%b || EN:%b || A:%b ",Y,EN , A);
endmodule
