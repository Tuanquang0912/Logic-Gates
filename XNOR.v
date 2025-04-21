`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2025 01:37:58 PM
// Design Name: 
// Module Name: XNOR
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


module XNOR(
    input a,
    input b,
    output out
    );

    wire NOTa_out, NOTb_out;
    wire AND1_out, AND2_out;
    wire OR_out;

    //Instantiate NOTa gate
    NOT u1 (
        .a(a),
        .out(NOTa_out)
    );
    //Instantiate NOTb gate
    NOT u2 (
        .a(b),
        .out(NOTb_out)
    );
    //Instantiate AND1 gate
    AND u3 (
        .a(a),
        .b(b),
        .out(AND1_out)
    );
    //Instantiate AND2 gate
    AND u4 (
        .a(NOTa_out),
        .b(NOTb_out),
        .out(AND2_out)
    );
    //Instantiate OR gate
    OR u5 (
        .a(AND1_out),
        .b(AND2_out),
        .out(out)
    );

endmodule
