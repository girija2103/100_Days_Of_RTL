//data flow Test Bench
module data_flow_tb();

reg A,B;
wire Y;
integer i ;
//instantiation 
data_flow nor1(.A(A),.B(B),.Y(Y));

//initialisation -> value assignment
initial
begin
{A,B}=2'b00;
end 

//stimulus generation
initial 
begin 

for(i=0;i<4;i++)
begin 
  {A,B}=i; //assignment of values to A , B
  #10;//10ns will be applied between the generation of a new input 
  $display($time,"  A:%b , B:%b , Y=%b ", A,B,Y);
 
end

end

// simulation completion after #x time units
initial 
#50 $finish ;//after 50ns , the stimulation is completed
endmodule

