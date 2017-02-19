`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2016 07:04:42 PM
// Design Name: 
// Module Name: testLED
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

module LEDtest (clk,sw,led);

// ===========================================================================
// 						Definir Input e Outputs do modulo
// ===========================================================================
			input clk;				// Master clock da FPGA/SoC
			input [3:0] sw;		    // Entradas do modulo, chaves da placa
			output [3:0] led;	    // Saida do Modulo, 04 LEDs
 
// -----------------------------------------------------

reg [3:0] leddata;

always@(posedge clk)
begin

      leddata=sw;

end
assign led[3:0] = leddata[3:0]; 
endmodule  // declaracao de fim de modulo
