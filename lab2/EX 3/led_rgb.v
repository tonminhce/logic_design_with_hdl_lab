`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 04:15:44 PM
// Design Name: 
// Module Name: leb_rgb
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


module led_rgb(
output reg [5:0] out,  
input [3:0]in,
input sw0, sw1   //sw0=0 : 2-LEDS; sw0=1 : 1-LED; 
 
);

always @(*) begin
	if (sw0) begin    // MODE 1-LED 
	if (sw1) begin  // LED 4 (RIGHT LED)
		case (in)
		 4'b0000 :  out=6'b000000; 
		 4'b0001 :  out=6'b000001; 
		 4'b0010 :  out=6'b000010; 
		 4'b0100 :  out=6'b000100; 
		 4'b1000 :  out=6'b000111; 
		default :  out=6'b000000; 
	endcase
	end
	else begin     // LED 5 (LEFT LED) 
		case (in)
		 4'b0000 :  out=6'b000000 ;
		 4'b0001 :  out=6'b001000 ;
		 4'b0010 :  out=6'b010000 ;
		 4'b0100 :  out=6'b100000 ;
		 4'b1000 :  out=6'b111000 ;
		default :  out=6'b000000 ;
	endcase
	end
	end
	else begin // MODE 2-LEDS
	if (sw1) begin   // COMBINATION COLORS
 		case (in)
		 4'b0000 :  out = 6'b000000 ;
		 4'b0001 :  out = 6'b011011 ;
		 4'b0010 :  out = 6'b110110 ;
		 4'b0100 :  out = 6'b101101 ;
		 4'b1000 :  out = 6'b111111 ;
		default :  out = 6'b000000 ;
	endcase
	end
	else begin   // SINGLE COLORS + MIXED COLORS
		casex (in)
		 4'b0000 :  out=6'b000000 ;
		 4'b0001 :  out=6'b001001 ;
		 4'b0010 :  out=6'b010010 ;
		 4'b0100 :  out=6'b100100 ;
		 4'b0011 :  out = 6'b011011 ;
         4'b0110 :  out = 6'b110110 ;
         4'b0101 :  out = 6'b101101 ;
		 4'b0111 :  out=6'b111111 ;
		 4'b1xxx :  out=6'b111111 ;
		default :  out=6'b000000 ;
	endcase
	end
	end
	end
endmodule