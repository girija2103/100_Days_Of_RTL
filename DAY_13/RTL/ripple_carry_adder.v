module ripple_carry_adder(a,b,cout,s);

input [3:0] a , b;
output cout ;
output [3:0] s;

wire c1,c2,c3;
half_adder h0(a[0],b[0],c1,s[0]);
full_adder f1 (a[1],b[1],c1,s[1],c2);
full_adder f2 (a[2],b[2],c2,s[2],c3);
full_adder f3(a[3],b[3],c3,s[3],cout);

endmodule
