//behavioural nor RTL


module behavioural(y,a,b);
input a,b;
output y;
reg y;


//in behavioural model "Always block and Case statements" will be used

always @(a or b)
begin

if(a == 1'b0 & b == 1'b0)
y=1'b1;
else 
y=1'b0;


end
endmodule

