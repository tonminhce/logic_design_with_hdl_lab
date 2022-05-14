`timescale 1ns / 1ps

module ex1(clk , rst, ledB, ledR);
    input clk,rst;
    output reg ledB, ledR;
    reg [27:0] counter = 28'd0;
    parameter div = 28'd125000000;
    
    always @(posedge clk)begin
        counter <= counter + 28'd1;
        if(counter >= (div - 28'd1)) counter <= 28'd0;
        ledB <= (counter < div/2) ? 1 : 0;
        ledR <= (counter < div/2) ? 0 : 1;
    end 
endmodule