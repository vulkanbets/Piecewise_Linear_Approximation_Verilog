`timescale 1ns / 1ps

module top
(
    
);
    wire [31 : 0] x;
    wire [5 : 0] addr;
    wire [31 : 0] a = LUT.out_a;
    wire [31 : 0] b = LUT.out_b;
    wire signed [31 : 0] mult_out;
    wire signed [31 : 0] answer;
    
    segment_decoder dec( .x(x), .addr(addr) );
    rom_LUT LUT( .addr(addr) );
    
    mult_Fixed # ( .WI1(10), .WF1(22), .WI2(10), .WF2(22), .WIO(10), .WFO(22)  )
            multiplier( .in1(x), .in2(a), .out(mult_out) );
            
    add_Fixed # ( .WI1(10), .WF1(22), .WI2(10), .WF2(22), .WIO(10), .WFO(22)  )
            adder( .in1(mult_out), .in2(b), .out(answer) );
    
    
endmodule
