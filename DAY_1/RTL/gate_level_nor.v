//gate level nor implemtation 

module gate_level_nor(a,b,y);

input a,b;
output y;

nor(y,a,b); // nor is a built in primitive gate 
endmodule

