`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 05:36:57 PM
// Design Name: 
// Module Name: led_rgb_tb
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


module led_rgb_tb;
  reg SW0;
  reg SW1;
  reg [3:0] IN;
  wire [5:0] OUT;
   
  led_rgb led_rgb_inst
    (
     .sw0(SW0),
     .sw1(SW1),
     .in(IN),
     .out(OUT)
     );
 
  initial
    begin
       SW0 = 1 ; SW1 = 1 ; IN = 4'b0000;
       #10; SW0 = 1 ; SW1 = 1 ; IN = 4'b0001;
       #10; SW0 = 1 ; SW1 = 1 ; IN = 4'b0010; 
       #10; SW0 = 1 ; SW1 = 1 ; IN = 4'b0100;
       #10; SW0 = 1 ; SW1 = 1 ; IN = 4'b1000;
       
       #10; SW0 = 1 ; SW1 = 0 ; IN = 4'b0000;
       #10; SW0 = 1 ; SW1 = 0 ; IN = 4'b0001;
       #10; SW0 = 1 ; SW1 = 0 ; IN = 4'b0010;
       #10; SW0 = 1 ; SW1 = 0 ; IN = 4'b0100;
       #10; SW0 = 1 ; SW1 = 0 ; IN = 4'b1000;
       
       #10; SW0 = 0 ; SW1 = 1 ; IN = 4'b0000;
       #10; SW0 = 0 ; SW1 = 1 ; IN = 4'b0001;
       #10; SW0 = 0 ; SW1 = 1 ; IN = 4'b0010; 
       #10; SW0 = 0 ; SW1 = 1 ; IN = 4'b0100;
       #10; SW0 = 0 ; SW1 = 1 ; IN = 4'b1000;
       
       #10; SW0 = 0 ; SW1 = 0 ; IN = 4'b0000;
       #10; SW0 = 0 ; SW1 = 0 ; IN = 4'b0001;
       #10; SW0 = 0 ; SW1 = 0 ; IN = 4'b0010; 
       #10; SW0 = 0 ; SW1 = 0 ; IN = 4'b0100;
       #10; SW0 = 0 ; SW1 = 0 ; IN = 4'b1000;
       #10; SW0 = 0 ; SW1 = 0 ; IN = 4'b0011;
       #10; SW0 = 0 ; SW1 = 0 ; IN = 4'b0110;
       #10; SW0 = 0 ; SW1 = 0 ; IN = 4'b0101;
       
       #10;
       
    end 
 
endmodule

