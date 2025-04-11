/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module rca #(
        parameter SIZE = 6'h20
    ) (
        input wire [31:0] a,
        input wire [31:0] b,
        input wire ci,
        output reg [31:0] s,
        output reg cout
    );
    logic [31:0] R_25e4b708_i;
    logic [31:0] RR_25e4b708_i;
    logic [31:0] M_fa_a;
    logic [31:0] M_fa_b;
    logic [31:0] M_fa_cin;
    logic [31:0] M_fa_s;
    logic [31:0] M_fa_cout;
    
    genvar idx_0_1940181227;
    
    generate
        for (idx_0_1940181227 = 0; idx_0_1940181227 < 32; idx_0_1940181227 = idx_0_1940181227 + 1) begin: forLoop_idx_0_1940181227
            fa fa (
                .a(M_fa_a[idx_0_1940181227]),
                .b(M_fa_b[idx_0_1940181227]),
                .cin(M_fa_cin[idx_0_1940181227]),
                .s(M_fa_s[idx_0_1940181227]),
                .cout(M_fa_cout[idx_0_1940181227])
            );
        end
    endgenerate
    
    
    always @* begin
        M_fa_a = a;
        M_fa_b = b;
        M_fa_cin = 1'h0;
        for (RR_25e4b708_i = 0; RR_25e4b708_i < 6'h20; RR_25e4b708_i = RR_25e4b708_i + 1) begin
      R_25e4b708_i = (0) + RR_25e4b708_i * (1);
            if (R_25e4b708_i == 1'h0) begin
                M_fa_cin[1'h0] = ci;
            end else begin
                M_fa_cin[R_25e4b708_i] = M_fa_cout[R_25e4b708_i - 1'h1];
            end
        end
        s = M_fa_s;
        cout = M_fa_cout[SIZE - 1'h1];
    end
    
    
endmodule