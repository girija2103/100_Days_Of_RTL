//data flow nor RTL

module data_flow(A,B,Y);
output Y;
input A,B;

assign Y = ~(A|B);

endmodule
