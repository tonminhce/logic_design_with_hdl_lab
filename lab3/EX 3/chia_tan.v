module chia_tan (clk_in, clk_out);
input clk_in;
output clk_out;
reg [27:0]countt = 0;
parameter divisor = 125000000;
always @(posedge clk_in)
begin
countt = countt + 1;
if(countt >= (divisor))
    countt = 0;
else countt = countt;
end
assign clk_out = (countt <= divisor/2) ? 0: 1;
endmodule