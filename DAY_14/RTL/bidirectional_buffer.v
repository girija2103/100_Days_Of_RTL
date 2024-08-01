module bidirectional_buffer(control,a,b);

input control ;
inout a ;
inout b;


bufif1 b_1(b,a,control);
bufif0 a_1(a,b,control);
endmodule
