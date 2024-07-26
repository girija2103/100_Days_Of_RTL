//TESTBENCH 
module test_bench ;

reg [9:0] Y;
wire [3:0] A; //input 

//initialisation 
initial 
Y=10'b0 ;

//instantiation 
bcd_encoder b1(.y(Y),.a(A));

//stimulus generation 
initial 
begin 

Y= 10'd1 ; #10;
Y =10'd2 ;#10;
Y=10'd4 ;#10;
Y=10'd8 ;#10;
Y=10'd16;#10;
Y=10'd32;#10;
Y=10'd64 ;#10;
Y=10'd128;#10;
Y=10'd256;#10;
Y=10'd512 ;

end

//monitor 
initial 
$monitor($time,"  Y:%b || A:%b ",Y,A);
endmodule


