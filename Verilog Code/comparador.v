`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2024 20:05:15
// Design Name: 
// Module Name: comparador
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module comparador(input[3:0]A, input [3:0]B, output menor
    );
    
    assign menor = (A<B) ?1'B1:1'B0;
    
endmodule
