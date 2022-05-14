`timescale 1ns / 1ps
module cross_traffic_light(clk, rst, light_a, light_b);
input clk, rst;
output [2:0] light_a, light_b;
wire clk_out;
chia_tan abc(clk, clk_out);
parameter red_green = 0, red_yellow =1, green_red = 2, yellow_red = 3;
parameter red = 3'b100, green = 3'b001, yellow = 3'b101;
reg [2:0]count = 0;
reg [1:0]st = red_green;
always @(posedge clk_out, posedge rst)
begin
if(rst == 1)
begin
count <= 0;
st <= red_green;
end
else
case(st)
red_green:
begin
count <= (count < 5)? count + 1: 0;
st <= (count < 5)? red_green: red_yellow; 
end
red_yellow:
begin
count <= (count < 3)? count + 1: 0;
st <= (count < 3)? red_yellow: green_red; 
end
green_red:
begin
count <= (count < 5)? count + 1: 0;
st <= (count < 5)? green_red: yellow_red; 
end
yellow_red:
begin
count <= (count < 3)? count + 1: 0;
st <= (count < 3)? yellow_red: red_green; 
end
endcase
end
assign light_a =    (st == red_green || st == red_yellow)? red:
                    (st == green_red)? green : yellow;
assign light_b =    (st == green_red || st == yellow_red)? red:
                    (st == red_green)? green : yellow;

endmodule
