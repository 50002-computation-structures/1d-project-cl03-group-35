/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module bin_to_dec #(
        parameter DIGITS = 3'h4,
        parameter LEADING_ZEROS = 1'h0
    ) (
        input wire [($clog2((64'(4'ha) ** (DIGITS))))-1:0] value,
        output reg [(DIGITS)-1:0][3:0] digits
    );
    logic [31:0] R_5b32eea9_j;
    logic [31:0] RR_5b32eea9_j;
    logic [31:0] R_2ad1be3c_i;
    logic [31:0] RR_2ad1be3c_i;
    logic [($bits(value))-1:0] L_34ed6a60_remainder;
    logic L_34ed6a60_blank;
    logic [($bits(value))-1:0] L_44be1c39_scale;
    logic [($bits(value))-1:0] L_0c9c1f49_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_34ed6a60_remainder = value;
        L_34ed6a60_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_5b32eea9_j = 0; RR_5b32eea9_j < DIGITS; RR_5b32eea9_j = RR_5b32eea9_j + 1) begin
        R_5b32eea9_j = (DIGITS - 1'h1) + RR_5b32eea9_j * (-2'sh1);
                L_44be1c39_scale = (64'(4'ha) ** (R_5b32eea9_j));
                if (L_34ed6a60_remainder < L_44be1c39_scale) begin
                    if (R_5b32eea9_j != 1'h0 && L_34ed6a60_blank) begin
                        digits[R_5b32eea9_j] = 4'ha;
                    end else begin
                        digits[R_5b32eea9_j] = 1'h0;
                    end
                end else begin
                    L_34ed6a60_blank = 1'h0;
                    L_0c9c1f49_sub_value = 1'h0;
                    for (RR_2ad1be3c_i = 0; RR_2ad1be3c_i < 4'h9; RR_2ad1be3c_i = RR_2ad1be3c_i + 1) begin
            R_2ad1be3c_i = (4'h9) + RR_2ad1be3c_i * (-2'sh1);
                        if (L_34ed6a60_remainder < (R_2ad1be3c_i + 1'h1) * L_44be1c39_scale) begin
                            digits[R_5b32eea9_j] = R_2ad1be3c_i;
                            L_0c9c1f49_sub_value = R_2ad1be3c_i * L_44be1c39_scale;
                        end
                    end
                    L_34ed6a60_remainder = L_34ed6a60_remainder - L_0c9c1f49_sub_value;
                end
            end
        end
    end
    
    
endmodule