`timescale 1ns / 1ps

module testbench_PLA;
    // Input
    reg [31 : 0] x;
    initial x <= 0;
    // Outputs
    wire [31 : 0] out_a = DUT.LUT.out_a;
    wire [31 : 0] out_b = DUT.LUT.out_b;
    wire [5 : 0] addr = DUT.addr;
    wire signed [31 : 0] mult_out = DUT.mult_out;
    wire signed [31 : 0] answer = DUT.answer;
    // Instantiate DUT
    top DUT();
    
    always #6.9 x <= x + 32'h00a00000;
    assign DUT.x = x;
    
endmodule
