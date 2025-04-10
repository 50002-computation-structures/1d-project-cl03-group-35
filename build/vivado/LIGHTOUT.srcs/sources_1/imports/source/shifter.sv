/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module shifter (
        input wire [31:0] a,
        input wire [31:0] b,
        input wire [5:0] alufn,
        output reg [31:0] shift
    );
    logic [31:0] R_3986b07f_i;
    logic [31:0] RR_3986b07f_i;
    logic [31:0] R_0311440f_i;
    logic [31:0] RR_0311440f_i;
    localparam _MP_SHIFT_805720882 = 5'h10;
    logic [31:0] M_left_shifter_16_a;
    logic M_left_shifter_16_shift;
    logic M_left_shifter_16_pad;
    logic [31:0] M_left_shifter_16_out;
    
    x_bit_left_shifter #(
        .SHIFT(_MP_SHIFT_805720882)
    ) left_shifter_16 (
        .a(M_left_shifter_16_a),
        .shift(M_left_shifter_16_shift),
        .pad(M_left_shifter_16_pad),
        .out(M_left_shifter_16_out)
    );
    
    
    localparam _MP_SHIFT_1374444496 = 4'h8;
    logic [31:0] M_left_shifter_8_a;
    logic M_left_shifter_8_shift;
    logic M_left_shifter_8_pad;
    logic [31:0] M_left_shifter_8_out;
    
    x_bit_left_shifter #(
        .SHIFT(_MP_SHIFT_1374444496)
    ) left_shifter_8 (
        .a(M_left_shifter_8_a),
        .shift(M_left_shifter_8_shift),
        .pad(M_left_shifter_8_pad),
        .out(M_left_shifter_8_out)
    );
    
    
    localparam _MP_SHIFT_1098587161 = 3'h4;
    logic [31:0] M_left_shifter_4_a;
    logic M_left_shifter_4_shift;
    logic M_left_shifter_4_pad;
    logic [31:0] M_left_shifter_4_out;
    
    x_bit_left_shifter #(
        .SHIFT(_MP_SHIFT_1098587161)
    ) left_shifter_4 (
        .a(M_left_shifter_4_a),
        .shift(M_left_shifter_4_shift),
        .pad(M_left_shifter_4_pad),
        .out(M_left_shifter_4_out)
    );
    
    
    localparam _MP_SHIFT_1592365818 = 2'h2;
    logic [31:0] M_left_shifter_2_a;
    logic M_left_shifter_2_shift;
    logic M_left_shifter_2_pad;
    logic [31:0] M_left_shifter_2_out;
    
    x_bit_left_shifter #(
        .SHIFT(_MP_SHIFT_1592365818)
    ) left_shifter_2 (
        .a(M_left_shifter_2_a),
        .shift(M_left_shifter_2_shift),
        .pad(M_left_shifter_2_pad),
        .out(M_left_shifter_2_out)
    );
    
    
    localparam _MP_SHIFT_187748344 = 1'h1;
    logic [31:0] M_left_shifter_1_a;
    logic M_left_shifter_1_shift;
    logic M_left_shifter_1_pad;
    logic [31:0] M_left_shifter_1_out;
    
    x_bit_left_shifter #(
        .SHIFT(_MP_SHIFT_187748344)
    ) left_shifter_1 (
        .a(M_left_shifter_1_a),
        .shift(M_left_shifter_1_shift),
        .pad(M_left_shifter_1_pad),
        .out(M_left_shifter_1_out)
    );
    
    
    localparam _MP_SIZE_143493101 = 6'h20;
    logic [31:0] M_ra_in;
    logic [31:0] M_ra_reversed;
    
    bit_reverse #(
        .SIZE(_MP_SIZE_143493101)
    ) ra (
        .in(M_ra_in),
        .reversed(M_ra_reversed)
    );
    
    
    localparam _MP_SIZE_1386576951 = 6'h20;
    logic [31:0] M_shr_in;
    logic [31:0] M_shr_reversed;
    
    bit_reverse #(
        .SIZE(_MP_SIZE_1386576951)
    ) shr (
        .in(M_shr_in),
        .reversed(M_shr_reversed)
    );
    
    
    logic [31:0] M_inp_s0;
    logic [31:0][1:0] M_inp_in;
    logic [31:0] M_inp_out;
    
    genvar idx_0_1126245405;
    
    generate
        for (idx_0_1126245405 = 0; idx_0_1126245405 < 32; idx_0_1126245405 = idx_0_1126245405 + 1) begin: forLoop_idx_0_1126245405
            mux_2 inp (
                .s0(M_inp_s0[idx_0_1126245405]),
                .in(M_inp_in[idx_0_1126245405]),
                .out(M_inp_out[idx_0_1126245405])
            );
        end
    endgenerate
    
    
    logic M_pad_s0;
    logic [1:0] M_pad_in;
    logic M_pad_out;
    
    mux_2 pad (
        .s0(M_pad_s0),
        .in(M_pad_in),
        .out(M_pad_out)
    );
    
    
    logic [31:0] M_shift_out_s0;
    logic [31:0][1:0] M_shift_out_in;
    logic [31:0] M_shift_out_out;
    
    genvar idx_0_730404948;
    
    generate
        for (idx_0_730404948 = 0; idx_0_730404948 < 32; idx_0_730404948 = idx_0_730404948 + 1) begin: forLoop_idx_0_730404948
            mux_2 shift_out (
                .s0(M_shift_out_s0[idx_0_730404948]),
                .in(M_shift_out_in[idx_0_730404948]),
                .out(M_shift_out_out[idx_0_730404948])
            );
        end
    endgenerate
    
    
    always @* begin
        M_ra_in = a;
        for (RR_3986b07f_i = 0; RR_3986b07f_i < 6'h20; RR_3986b07f_i = RR_3986b07f_i + 1) begin
      R_3986b07f_i = (0) + RR_3986b07f_i * (1);
            M_inp_s0[R_3986b07f_i] = alufn[1'h0];
            M_inp_in[R_3986b07f_i][1'h0] = a[R_3986b07f_i];
            M_inp_in[R_3986b07f_i][1'h1] = M_ra_reversed[R_3986b07f_i];
        end
        M_pad_s0 = alufn[1'h1];
        M_pad_in[1'h0] = 1'h0;
        M_pad_in[1'h1] = a[5'h1f];
        M_left_shifter_16_pad = M_pad_out;
        M_left_shifter_16_a = M_inp_out;
        M_left_shifter_16_shift = b[3'h4];
        M_left_shifter_8_pad = M_pad_out;
        M_left_shifter_8_a = M_left_shifter_16_out;
        M_left_shifter_8_shift = b[2'h3];
        M_left_shifter_4_pad = M_pad_out;
        M_left_shifter_4_a = M_left_shifter_8_out;
        M_left_shifter_4_shift = b[2'h2];
        M_left_shifter_2_pad = M_pad_out;
        M_left_shifter_2_a = M_left_shifter_4_out;
        M_left_shifter_2_shift = b[1'h1];
        M_left_shifter_1_pad = M_pad_out;
        M_left_shifter_1_a = M_left_shifter_2_out;
        M_left_shifter_1_shift = b[1'h0];
        M_shr_in = M_left_shifter_1_out;
        for (RR_0311440f_i = 0; RR_0311440f_i < 6'h20; RR_0311440f_i = RR_0311440f_i + 1) begin
      R_0311440f_i = (0) + RR_0311440f_i * (1);
            M_shift_out_s0[R_0311440f_i] = alufn[1'h0];
            M_shift_out_in[R_0311440f_i][1'h0] = M_left_shifter_1_out[R_0311440f_i];
            M_shift_out_in[R_0311440f_i][1'h1] = M_shr_reversed[R_0311440f_i];
        end
        shift = M_shift_out_out;
    end
    
    
endmodule