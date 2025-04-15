/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module button_conditioner_matrix #(
        parameter CLK_FREQ = 24'h989680,
        parameter MIN_DELAY = 5'h1e,
        parameter NUM_SYNC = 2'h2
    ) (
        input wire clk,
        input wire in,
        output reg out
    );
    localparam _MP_DEPTH_546112449 = 2'h2;
    logic M_sync_in;
    logic M_sync_out;
    
    pipeline #(
        .DEPTH(_MP_DEPTH_546112449)
    ) sync (
        .clk(clk),
        .in(M_sync_in),
        .out(M_sync_out)
    );
    
    
    logic [20:0] D_ctr_d, D_ctr_q = 0;
    logic [22:0] D_ctr2_d, D_ctr2_q = 0;
    logic [0:0] D_on_d, D_on_q = 0;
    always @* begin
        D_on_d = D_on_q;
        D_ctr2_d = D_ctr2_q;
        D_ctr_d = D_ctr_q;
        
        M_sync_in = in;
        out = D_on_q;
        if (D_on_q == 1'h0) begin
            D_on_d = (&D_ctr_q);
            D_ctr2_d = 24'hffffff;
        end
        if (D_on_q == 1'h1) begin
            D_ctr2_d = D_ctr2_q - 1'h1;
            if (in) begin
                D_ctr2_d = 24'hffffff;
            end
            if (D_ctr2_q <= 1'h0) begin
                D_on_d = 1'h0;
            end
        end
        if (!(&D_ctr_q)) begin
            D_ctr_d = D_ctr_q + 1'h1;
        end
        if (!M_sync_out) begin
            D_ctr_d = 1'h0;
        end
    end
    
    
    always @(posedge (clk)) begin
        D_ctr_q <= D_ctr_d;
        D_ctr2_q <= D_ctr2_d;
        D_on_q <= D_on_d;
        
    end
endmodule