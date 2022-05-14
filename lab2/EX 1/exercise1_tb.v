`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2022 01:37:29 PM
// Design Name: 
// Module Name: exercise1_tb
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


module exercise1_tb;
 
  reg [3:0] IN;
  wire [3:0] OUT;
   
  exercise1 exercise1_inst
    (
     .in(IN),
     .out(OUT)
     );
 
  initial
    begin
        IN = 4'b0011;
       #10; IN = 4'b0001;
       #10; IN = 4'b0000;
       #10; IN = 4'b1111; 
       #10;
    end 
 
endmodule