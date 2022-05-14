`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2022 04:45:27 AM
// Design Name: 
// Module Name: change_string
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


module change_string(vqa, but, led);
input vqa;
input [3:0]but;
output reg [3:0] led = 4'b0011;
wire enb;
parameter b0 = 4'b0001, b1 = 4'b0010, b2 = 4'b0100, b3 = 4'b1000;
wire vqa;
chia_tan abc(clk,vqa);
reg [3:0] st, nx_st;
reg a = 0;
always @(posedge vqa)
st <= nx_st;

always @(posedge clk)
if (enb ) begin
begin
case(but)
b0: begin nx_st <= b0;
    a <= !a;
end
b1: 
begin
nx_st <= b1;
a <= !a;
end
b2: 
begin
nx_st <= b2;
a <= !a;
end
b3: 
begin
nx_st <= b3;
a <= !a;
end
default: 
begin
nx_st <= b0;
a <= !a;
end
endcase
end
end
always @(a, st)
case (st)
b0: 
begin
led <= 4'b0011;

end
b1: begin
led[0] <= led[3];
led[1] <= led[0];
led[2] <= led[1];
led[3] <= led[2];

end
b2: begin
led[0] <= led[1];
led[1] <= led[2];
led[2] <= led[3];
led[3] <= led[0];

end
b3: begin
led <= led;
end

endcase
endmodule
