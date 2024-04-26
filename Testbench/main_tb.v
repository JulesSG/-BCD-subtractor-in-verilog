`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2024 21:58:28
// Design Name: 
// Module Name: main_tb
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


module main_tb;
  
    
    reg [11:0]A;
    reg [11:0]B;
    wire [3:0]unidades;
    wire [3:0]decenas;
    wire [3:0]centenas;
    wire [11:0]Y;

    main tb1(
    .A(A),
    .B(B),
    .unidades(unidades),
    .decenas(decenas),
    .centenas(centenas),
    .Y(Y)
    ); 

    initial
        begin
    A = 12'b100110011001;
    B = 12'b000000000000;
    
    end

    always #5 A=A-1;
    always #5 B=B+1;


endmodule
