/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module adder (
        input wire [31:0] a,
        input wire [31:0] b,
        input wire [5:0] alufn,
        output reg [31:0] out,
        output reg z,
        output reg v,
        output reg n
    );
    localparam _MP_SIZE_112521463 = 6'h20;
    logic [31:0] M_rca_a;
    logic [31:0] M_rca_b;
    logic M_rca_ci;
    logic [31:0] M_rca_s;
    logic M_rca_cout;
    
    rca #(
        .SIZE(_MP_SIZE_112521463)
    ) rca (
        .a(M_rca_a),
        .b(M_rca_b),
        .ci(M_rca_ci),
        .s(M_rca_s),
        .cout(M_rca_cout)
    );
    
    
    logic [31:0] xb;
    always @* begin
        M_rca_a = a;
        xb = b ^ {6'h20{alufn[1'h0]}};
        M_rca_b = xb;
        M_rca_ci = alufn[1'h0];
        out = M_rca_s;
        z = ~(|M_rca_s);
        v = (((alufn[1'h0] ^ a[5'h1f]) & a[5'h1f]) & ~M_rca_s[5'h1f]) | ((~(alufn[1'h0] ^ b[5'h1f]) & ~a[5'h1f]) & M_rca_s[5'h1f]);
        n = M_rca_s[5'h1f];
    end
    
    
endmodule