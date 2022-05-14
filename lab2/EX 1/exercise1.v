`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2022 10:30:00 AM
// Design Name: 
// Module Name: exercise1
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


module exercise1(in, out);
    input [3:0] in;
    output [3:0] out;
    assign out[0] = ^~in;
    assign out[1] = ^in && !(in[0]&in[1] | in[2]&in[1] | in[3]&in[2]);
    assign out[2] = ~|in;
    assign out[3] = &in;
    
endmodule
