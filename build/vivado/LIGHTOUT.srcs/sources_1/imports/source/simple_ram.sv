/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module simple_ram (
        input wire clk,
        input wire [4:0] ra1,
        input wire [4:0] ra2,
        input wire [4:0] rc,
        output reg [31:0] rd1,
        output reg [31:0] rd2,
        output reg [31:0] reg0,
        output reg [15:0] button_led,
        output reg [31:0] count_display,
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
        button_led = D_reg_q[8'ha];
        count_display = D_reg_q[2'h2];
        count_min = D_reg_q[2'h3];
        rom_sel = D_reg_q[3'h7];
        reg0 = D_reg_q[1'h0];
        if (write_enable) begin
            D_reg_d[rc] = write_data;
        end
    end
    
    
    always @(posedge (clk)) begin
        D_reg_q <= D_reg_d;
        
    end
endmodule