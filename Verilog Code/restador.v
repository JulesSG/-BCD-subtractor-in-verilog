`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2024 20:12:23
// Design Name: 
// Module Name: restador
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


module restador(input [3:0]A, input[3:0]B, output reg [3:0]Z
    );
    
    always @ *
    
      Z <= A + (~B + 4'B0001); 
        //Z <= A - B;
      
            
endmodule
