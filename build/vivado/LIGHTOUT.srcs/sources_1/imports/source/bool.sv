/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module bool #(
        parameter SIZE = 6'h20
    ) (
        input wire [(SIZE)-1:0] a,
        input wire [(SIZE)-1:0] b,
        input wire [5:0] alufn,
        output reg [(SIZE)-1:0] bool
    );
    logic [31:0] M_mux_4_32_s0;
    logic [31:0] M_mux_4_32_s1;
    logic [31:0][3:0] M_mux_4_32_in;
    logic [31:0] M_mux_4_32_out;
    
    genvar idx_0_1893624459;
    
    generate
        for (idx_0_1893624459 = 0; idx_0_1893624459 < 32; idx_0_1893624459 = idx_0_1893624459 + 1) begin: forLoop_idx_0_1893624459
            mux_4 mux_4_32 (
                .s0(M_mux_4_32_s0[idx_0_1893624459]),
                .s1(M_mux_4_32_s1[idx_0_1893624459]),
                .in(M_mux_4_32_in[idx_0_1893624459]),
                .out(M_mux_4_32_out[idx_0_1893624459])
            );
        end
    endgenerate
    
    
    always @* begin
        bool = 1'h0;
        M_mux_4_32_in = {6'h20{{alufn[2'h3:1'h0]}}};
        M_mux_4_32_s0 = a;
        M_mux_4_32_s1 = b;
        bool = M_mux_4_32_out;
    end
    
    
endmodule