`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 08:38:25 AM
// Design Name: 
// Module Name: posedge_detection_tb
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


module posedge_detection_tb;
  reg CLK;
  reg RST;
  reg DATA;
  wire RISING;
   
  posedge_detection posedge_detection_inst
    (
     .clk(CLK),
     .rst_n(RST),
     .i_data_in(DATA),
     .o_rising_edge(RISING)
     );
 initial   begin
 CLK = 0;
 forever #5 CLK = ~CLK;
 end
 
  initial
    begin
        RST = 1 ; DATA = 0;
       #13; RST = 1 ; DATA = 1;
       #13; RST = 1 ; DATA = 0;
       #13; RST = 1 ; DATA = 1;
       #13;
       
    end 
 
endmodule
