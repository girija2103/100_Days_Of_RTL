//full subtractor using half subtractor
module full_subtractor(a,b,bin,d,bout);

input a,b,bin;
output d,bout ;
wire w1,w2,w3;

//half subtractor instantiation 
half_subtractor h1(.x(a),.y(b),.diff(w1),.borrow(w2));

half_subtractor h2(.x(w1),.y(bin),.diff(d),.borrow(w3));

or OR(bout,w2,w3);

endmodule
