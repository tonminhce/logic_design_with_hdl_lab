`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 08:36:53 AM
// Design Name: 
// Module Name: posedge_detection
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


module posedge_detection(
    input clk,
    input rst_n,
    input i_data_in,
    output reg o_rising_edge       
);

reg r_data_in0;

always@(posedge clk or negedge rst_n) begin
  if(!rst_n)
  r_data_in0 <= 0;
  else begin
   r_data_in0 <= i_data_in;
   if({r_data_in0,i_data_in} == 2'b01)
   o_rising_edge <= 1;
   else 
   o_rising_edge <= 0;  
        
 end

end
endmodule 