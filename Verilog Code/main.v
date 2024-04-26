`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2024 20:52:11
// Design Name: 
// Module Name: main
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


module main(input [11:0]A, input[11:0]B, output wire [3:0]unidades, output wire [3:0]decenas, wire [3:0]centenas, output [11:0]Y
    );
   wire [3:0]un1;
   wire [3:0]un2;
   wire [3:0]dec1;
   wire [3:0]dec2;
   wire [3:0]dec3;
   wire [3:0]cen1; 
   wire [3:0]cen2;
   wire [3:0]cen3;
   wire compun;
   wire compdec;
   wire compcen;
   wire [3:0]sal2;
   wire [3:0]sal4;
   
   
   //unidades
   restador resun1 (A[3:0], B[3:0], un1[3:0]);
   restador resun2 (un1[3:0], 4'B0110, un2[3:0]);
   comparador comp1 (A[3:0], B[3:0], compun);
   mux muxun   (compun, un1, un2, unidades);
   

   //decenas
   restador resdec1 (A[7:4], B[7:4], dec1);
   restador resdec2 (dec1,4'B0110 , dec2);
   comparador comp2 (A[7:4], B[7:4], compdec);
   mux muxdec1 (compdec,dec1, dec2, sal2);
   restador resdec3 (sal2, 4'b0001, dec3);
   mux muxdec2 (compun, sal2,dec3, decenas);
   
  
   //centenas
   restador rescen1 (A[11:8], B[11:8], cen1);
   restador rescen2 (cen1,4'B0110 , cen2);
   comparador comp3 (A[11:8], B[11:8], compcen);
   mux muxcen1 (compcen, cen1, cen2,  sal4);
   restador rescen3 (sal4,4'b0001, cen3);
   mux muxcen2 (compdec, sal4, cen3, centenas);
   
   assign Y[3:0] = unidades; 
   assign Y[7:4] = decenas; 
   assign Y[11:8] = centenas; 
   
   
 //  
   //

  // 
  // 
 // 
   

endmodule
