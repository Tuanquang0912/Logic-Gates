`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2025 11:39:10 AM
// Design Name: 
// Module Name: XOR
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


module XOR(
    input a,
    input b,
    output out
    );
    wire NOT_a,NOT_b;
    wire AND1_out,AND2_out;
    wire OR_out;

    //Instantiate NOTa gate
    NOT u1 (
        .a(a),
        .out(NOT_a)
    );
    //Instantiate NOTb gate
    NOT u2 (
        .a(b),
        .out(NOT_b)
    );

    //Instantiate AND1 gate
    AND u3 (
        .a(a),
        .b(NOT_b),
        .out(AND1_out)
    );

    //Instantiate AND2 gate
    AND u4 (
        .a(NOT_a),
        .b(b),
        .out(AND2_out)
    ); 

    //Instantiate OR gate
    OR u5 (
        .a(AND1_out),
        .b(AND2_out),
        .out(out)
    );

endmodule
