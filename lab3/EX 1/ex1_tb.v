`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 10:36:56 AM
// Design Name: 
// Module Name: ex1_tb
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


module ex1_tb;
    reg clk;
    reg rst;
    wire ledB;
    wire ledR;
    
    
    ex1 uut( .clk(clk), .ledB(ledB), .ledR(ledR), .rst(rst));
    
    initial begin 
    clk = 0;
    #5 clk = ~clk;  
    #5 clk = ~clk;  
    #5 clk = ~clk;  
    #5 clk = ~clk;  
    #5 clk = ~clk;  
    #5 clk = ~clk;  
    #5 clk = ~clk;  
    #5 clk = ~clk;  
    #5 clk = ~clk;  
    end
    
    initial begin 
    rst = 1;
    end 
    
endmodule
