`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2025 11:27:48 AM
// Design Name: 
// Module Name: NOR
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


module NOR(
    input a,
    input b,
    output out
    );

    wire OR_out;

    //Instantiate OR gate
    OR u3 (
        .a(a),
        .b(b),
        .out(OR_out)
    );

    //Instantiate NOT gate
    NOT u4 (
        .a(OR_out),
        .out(out)
    );
endmodule
