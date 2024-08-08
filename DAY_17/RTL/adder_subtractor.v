module adder_subtractor (a,b,k,s,cout);

input [3:0] a , b ;
input k;
output [3:0]s ;
output  cout ;


wire w1,w2,w3,s4;
wire c0,c1,c2;
assign w1 = b[0] ^ k ;
assign w2 = b[1] ^ k ;
assign w3 = b[2] ^ k ;
assign w4 = b[3] ^ k ;

full_adder f1(a[0],w1,k,s[0],c0);
full_adder f2(a[1],w2,c0,s[1],c1);
full_adder f3(a[2],w3,c1,s[2],c2);
full_adder f4(a[3],w4,c2,s[3],cout);
endmodule
