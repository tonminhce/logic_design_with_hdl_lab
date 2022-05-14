`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2022 04:46:46 PM
// Design Name: 
// Module Name: bin2led7
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


module bin2led7(
    input enable,
    input [3:0] bin_in,
    output reg [6:0] led_out
    );

    always @(*) begin
    if (enable) begin
      case (bin_in)
       4'b0000 : begin led_out = 7'b0000001; end
       4'b0001 : begin led_out = 7'b1001111; end
       4'b0010 : begin led_out = 7'b0010010; end
       4'b0011 : begin led_out = 7'b0000110; end
       4'b0100 : begin led_out = 7'b1001100; end
       4'b0101 : begin led_out = 7'b0100100; end
       4'b0110 : begin led_out = 7'b0100000; end
       4'b0111 : begin led_out = 7'b0001111; end
       4'b1000 : begin led_out = 7'b0000000; end
       4'b1001 : begin led_out = 7'b0000100; end
       default : begin led_out = 7'b1111111; end
      endcase
      end
      else led_out =  7'b1111111;
     end
endmodule

