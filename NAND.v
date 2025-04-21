

module NAND(
    input a,
    input b,
    output out
    );
    wire AND_out;
    //Instantiate AND gate
    AND u1 (
        .a (a),
        .b (b),
        .out (AND_out)
    );
    //Instantiate NOT gate
    NOT u2 (
        .a (AND_out),
        .out(out)
    );
    
endmodule
