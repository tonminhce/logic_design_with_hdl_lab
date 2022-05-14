`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2022 04:10:23 AM
// Design Name: 
// Module Name: tb1_c
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


module tb1_c;
reg clock_in, rst;
 // Outputs
wire [2:0]light_a, light_b;
 // Instantiate the Unit Under Test (UUT)
 // Test the clock divider in Verilog
cross_traffic_light abc(clock_in, rst, light_a, light_b );
 initial begin
  // Initialize Inputs
  clock_in = 0;
  forever #1 clock_in = ~clock_in;
 end
 initial begin
 rst = 0;
 #90 rst = 1;
 #1 rst = 0;
 end
endmodule
