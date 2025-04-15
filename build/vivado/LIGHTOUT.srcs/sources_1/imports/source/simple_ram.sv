/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module simple_ram (
        input wire clk,
        input wire rst,
        input wire [4:0] ra1,
        input wire [4:0] ra2,
        input wire [4:0] rc,
        output reg [31:0] rd1,
        output reg [31:0] rd2,
        output reg z,
        output reg [15:0] button_led,
        output reg [31:0] level_select,
        output reg [31:0] count_min,
        output reg [31:0] rom_sel,
        input wire [31:0] write_data,
        input wire write_enable
    );
    logic [31:0][31:0] D_reg_d, D_reg_q = 0;
    always @* begin
        D_reg_d = D_reg_q;
        
        rd1 = D_reg_q[ra1];
        rd2 = D_reg_q[ra2];
        button_led = D_reg_q[3'h4][4'hf:1'h0];
        level_select = D_reg_q[3'h7];
        count_min = D_reg_q[3'h5];
        rom_sel = D_reg_q[4'hb];
        z = D_reg_q[1'h1];
        if (write_enable) begin
            D_reg_d[rc] = write_data;
        end
    end
    
    
    always @(posedge (clk)) begin
        if ((rst) == 1'b1) begin
            D_reg_q <= 0;
        end else begin
            D_reg_q <= D_reg_d;
        end
    end
endmodule