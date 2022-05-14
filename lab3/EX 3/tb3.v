`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2022 05:19:57 AM
// Design Name: 
// Module Name: tb3
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


module tb3;
reg clk;
reg [3:0]but;
wire [3:0] led;

change_string abc (clk, but, led);
initial begin
  // Initialize Inputs
  clk = 0;
  forever #1 clk = ~clk;
 end
initial begin
#10 but = 4'b0010;
#120 but = 4'b1000;
#150 but = 4'b0001;
#200 but = 4'b0100;
end
endmodule
