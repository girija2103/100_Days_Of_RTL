//switch level implemetation 

module switch_level(a,b,y);
input a,b;
output y;

wire c ;

supply1 vdd; //supply1 is net data type used to model power
supply0 gnd ; //supply0: net data type : used to model gnd


pmos (c,vdd,b); //pmos is already available as a primitive
pmos(y,c,a);

nmos(y,gnd,a);
nmos(y,gnd,b); //nmos is already available as a primitive
endmodule
