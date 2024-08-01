module test_bench ;

reg CONTROL ;
wire A,B;

reg temp_a,temp_b;

//instantiation 
bidirectional_buffer buff1(CONTROL,A,B);

//initialisation
initial begin 
  { temp_a,temp_b,CONTROL}=3'b0;
  end

always #10 temp_a =~temp_a;
always #20 temp_b = ~temp_b ;
always #40 CONTROL = ~CONTROL ;

assign B = (CONTROL==0)? temp_b : 1'bz;
assign A = (CONTROL==1)? temp_a :1'bz;

//monitor 
initial 
$monitor ($time," A:%b || B:%b || CONTROL :%b ", A,B , CONTROL);


//finish 
initial 
#100 $finish;

endmodule
