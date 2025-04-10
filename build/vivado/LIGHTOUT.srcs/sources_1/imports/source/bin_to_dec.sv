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
    logic [31:0] R_41f5b2a6_j;
    logic [31:0] RR_41f5b2a6_j;
    logic [31:0] R_46de8d11_i;
    logic [31:0] RR_46de8d11_i;
    logic [($bits(value))-1:0] L_2ac22194_remainder;
    logic L_2ac22194_blank;
    logic [($bits(value))-1:0] L_0f733df1_scale;
    logic [($bits(value))-1:0] L_06777dc5_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_2ac22194_remainder = value;
        L_2ac22194_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_41f5b2a6_j = 0; RR_41f5b2a6_j < DIGITS; RR_41f5b2a6_j = RR_41f5b2a6_j + 1) begin
        R_41f5b2a6_j = (DIGITS - 1'h1) + RR_41f5b2a6_j * (-2'sh1);
                L_0f733df1_scale = (64'(4'ha) ** (R_41f5b2a6_j));
                if (L_2ac22194_remainder < L_0f733df1_scale) begin
                    if (R_41f5b2a6_j != 1'h0 && L_2ac22194_blank) begin
                        digits[R_41f5b2a6_j] = 4'ha;
                    end else begin
                        digits[R_41f5b2a6_j] = 1'h0;
                    end
                end else begin
                    L_2ac22194_blank = 1'h0;
                    L_06777dc5_sub_value = 1'h0;
                    for (RR_46de8d11_i = 0; RR_46de8d11_i < 4'h9; RR_46de8d11_i = RR_46de8d11_i + 1) begin
            R_46de8d11_i = (4'h9) + RR_46de8d11_i * (-2'sh1);
                        if (L_2ac22194_remainder < (R_46de8d11_i + 1'h1) * L_0f733df1_scale) begin
                            digits[R_41f5b2a6_j] = R_46de8d11_i;
                            L_06777dc5_sub_value = R_46de8d11_i * L_0f733df1_scale;
                        end
                    end
                    L_2ac22194_remainder = L_2ac22194_remainder - L_06777dc5_sub_value;
                end
            end
        end
    end
    
    
endmodule