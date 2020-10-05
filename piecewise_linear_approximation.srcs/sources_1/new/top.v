`timescale 1ns / 1ps

module top
(
    
);
    wire [5 : 0] addr;
    
    segment_decoder dec( .addr(addr) );
    rom_LUT LUT( .addr(addr) );
    
endmodule
