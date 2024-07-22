module full_adder(s,cout,a,b,cin);

input a,b,cin;
output s,cout;
wire w1,w2,w3;

half_adder h1(.x(a),.y(b),.sum(w1),.carry(w2));
half_adder h2(.x(w1),.y(cin),.sum(s),.carry(w3));

or OR(cout,w2,w3);
endmodule 

