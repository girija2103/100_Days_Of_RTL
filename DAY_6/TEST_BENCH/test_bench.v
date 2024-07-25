module test_bench;
reg [2:0] IN;
reg EN;

wire [7:0] D;

//instantiation 
decoder_3_to_8 d1(.in(IN),.en(EN),.d(D));

//initialiastion 
initial 
begin 
integer i ;
IN=3'b0;
EN=1'b0;
#10 ;


EN =1'b1;
for(i =0;i<8;i++)
begin 
IN =i; #10 ;
end

end

//display 
initial
$monitor($time , " IN :%b || EN:%b || D:%b ",IN,EN,D);


endmodule
