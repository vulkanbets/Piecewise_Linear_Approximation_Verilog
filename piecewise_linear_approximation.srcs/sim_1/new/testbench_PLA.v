`timescale 1ns / 1ps

module testbench_PLA;
    // Input
    // Outputs
    wire [31 : 0] out_a = DUT.LUT.out_a;
    wire [31 : 0] out_b = DUT.LUT.out_b;
    // Instantiate DUT
    top DUT();
    
endmodule
