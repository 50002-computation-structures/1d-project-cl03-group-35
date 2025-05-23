/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module csa_adder (
        input wire [31:0] a,
        input wire [31:0] b,
        input wire [5:0] alufn,
        output reg [31:0] out,
        output reg z,
        output reg v,
        output reg n
    );
    logic [31:0] M_csa_a;
    logic [31:0] M_csa_b;
    logic M_csa_cin;
    logic [31:0] M_csa_s;
    logic M_csa_cout;
    
    csa csa (
        .a(M_csa_a),
        .b(M_csa_b),
        .cin(M_csa_cin),
        .s(M_csa_s),
        .cout(M_csa_cout)
    );
    
    
    logic [31:0] xb;
    always @* begin
        M_csa_a = a;
        xb = b ^ {6'h20{alufn[1'h0]}};
        M_csa_b = xb;
        M_csa_cin = alufn[1'h0];
        out = M_csa_s;
        z = ~(|M_csa_s);
        v = (((alufn[1'h0] ^ a[5'h1f]) & a[5'h1f]) & ~M_csa_s[5'h1f]) | ((~(alufn[1'h0] ^ b[5'h1f]) & ~a[5'h1f]) & M_csa_s[5'h1f]);
        n = M_csa_s[5'h1f];
    end
    
    
endmodule