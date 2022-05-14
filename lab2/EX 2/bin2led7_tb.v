`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2022 04:53:17 PM
// Design Name: 
// Module Name: bin2led7_tb
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


module bin2led7_tb;
  reg ENABLE;
  reg [3:0] IN;
  wire [6:0] OUT;
   
  bin2led7 bin2led7_inst
    (
     .enable(ENABLE),
     .bin_in(IN),
     .led_out(OUT)
     );
 
  initial
    begin
       ENABLE = 1 ; IN = 4'b0000;
       #10; ENABLE = 1 ; IN = 4'b0001;
       #10; ENABLE = 1 ; IN = 4'b0010;
       #10; ENABLE = 1 ; IN = 4'b0011; 
       #10; ENABLE = 1 ; IN = 4'b0100;
       #10; ENABLE = 1 ; IN = 4'b0101;
       #10; ENABLE = 1 ; IN = 4'b0110;
       #10; ENABLE = 1 ; IN = 4'b0111;
       #10; ENABLE = 1 ; IN = 4'b1000;
       #10; ENABLE = 1 ; IN = 4'b1001;
       #10; ENABLE = 0;
       #10;
       
    end 
 
endmodule
