`timescale 1ns / 1ps

module testbench_PLA;
    // Input
    reg [5 : 0] addr;
    initial addr = 0;
    // Outputs
    wire [31 : 0] out_a = DUT.LUT.out_a;
    wire [31 : 0] out_b = DUT.LUT.out_b;
    // Instantiate DUT
    top DUT();
    
    always #15.6
        if(addr < 63) addr <= addr + 1;
        else addr <= 63;
    
    assign DUT.LUT.addr = addr;
endmodule
