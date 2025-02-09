`timescale 1ns / 1ps

module my_add #(
    parameter BITWIDTH = 32
)
(
    input [BITWIDTH-1:0] ain,
    input [BITWIDTH-1:0] bin,
    output [BITWIDTH-1:0] dout,
    output overflow
);

    // concatnate (overflow, dout) & detect overflow
    assign {overflow, dout} = ain + bin;

endmodule
