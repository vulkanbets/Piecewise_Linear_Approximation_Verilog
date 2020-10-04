`timescale 1ns / 1ps

module rom_LUT
(
    input [5 : 0] addr,
    output [31 : 0] out_a,
    output [31 : 0] out_b
);
    
    reg [63 : 0] rom[ 0 : 63];
    
    initial $readmemb("output_PLA.mem", rom);
    
    assign out_a = rom[addr][63 : 32];
    assign out_b = rom[addr][31 : 0];
    
endmodule
