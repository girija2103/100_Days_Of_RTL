module decoder_3_to_8 (in,en,d);
input [2:0] in ;
input en;
output [7:0] d;

reg [7:0] d;

always @(in or en)
if(en)
begin 
case (in)
3'b000 : d = 8'd1;
3'b001 : d = 8'd2;
3'b010 : d = 8'd4;
3'b011 : d = 8'd8;
3'b100 : d = 8'd16;
3'b101 : d = 8'd32;
3'b110 : d = 8'd64;
3'b111 : d = 8'd128;
default : d = 8'b0;
endcase
end
else 
d = 8'b0;

endmodule
