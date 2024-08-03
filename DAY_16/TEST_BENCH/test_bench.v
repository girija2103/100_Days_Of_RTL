// test_bench 
module testbench;

reg I0, I1, I2, I3;
reg S0, S1;
wire Y;

// instantiation 
mux_4_1 m1 (.a0(I0), .a1(I1), .a2(I2), .a3(I3), .s0(S0), .s1(S1), .y(Y));

// initialization 
initial begin
    {S1,S0,I0, I1, I2, I3} = 6'b0;
end

// stimulus generation 
initial begin 
    integer i;
    for (i = 0; i < 2**6; i = i + 1) begin 
        {S1, S0, I3, I2, I1, I0} = i;
        #10;
    end
end

// monitor
initial 
    $monitor($time, " S1:%b || S0:%b || I3:%b || I2:%b || I1:%b || I0:%b || Y:%b ", S1, S0, I3, I2, I1, I0, Y);

endmodule

