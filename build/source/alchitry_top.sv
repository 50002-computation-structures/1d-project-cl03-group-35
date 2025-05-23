/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module alchitry_top (
        input wire clk,
        input wire rst_n,
        input wire usb_rx,
        output reg usb_tx,
        input wire [3:0] row,
        output reg [3:0] col,
        input wire [1:0] io_button,
        output reg [15:0] led_grid,
        output reg [6:0] io_segment,
        output reg [3:0] seg_selector
    );
    logic rst;
    localparam _MP_STAGES_1215097883 = 3'h4;
    logic M_reset_cond_in;
    logic M_reset_cond_out;
    
    reset_conditioner #(
        .STAGES(_MP_STAGES_1215097883)
    ) reset_cond (
        .clk(clk),
        .in(M_reset_cond_in),
        .out(M_reset_cond_out)
    );
    
    
    localparam logic [3:0][0:0] _MP_RISE_1936862849 = {{1'h1, 1'h1, 1'h1, 1'h1}};
    localparam logic [3:0][0:0] _MP_FALL_1936862849 = {{1'h0, 1'h0, 1'h0, 1'h0}};
    logic [3:0] M_io_button_edge_row_in;
    logic [3:0] M_io_button_edge_row_out;
    
    genvar idx_0_1936862849;
    
    generate
        for (idx_0_1936862849 = 0; idx_0_1936862849 < 4; idx_0_1936862849 = idx_0_1936862849 + 1) begin: forLoop_idx_0_1936862849
            edge_detector #(
                .RISE(_MP_RISE_1936862849[idx_0_1936862849]),
                .FALL(_MP_FALL_1936862849[idx_0_1936862849])
            ) io_button_edge_row (
                .clk(clk),
                .in(M_io_button_edge_row_in[idx_0_1936862849]),
                .out(M_io_button_edge_row_out[idx_0_1936862849])
            );
        end
    endgenerate
    
    
    localparam logic [3:0][23:0] _MP_CLK_FREQ_1862134639 = {{24'h989680, 24'h989680, 24'h989680, 24'h989680}};
    localparam _MP_MIN_DELAY_1862134639 = 5'h1e;
    localparam _MP_NUM_SYNC_1862134639 = 2'h2;
    logic [3:0] M_io_button_cond_row_in;
    logic [3:0] M_io_button_cond_row_out;
    
    genvar idx_0_1862134639;
    
    generate
        for (idx_0_1862134639 = 0; idx_0_1862134639 < 4; idx_0_1862134639 = idx_0_1862134639 + 1) begin: forLoop_idx_0_1862134639
            button_conditioner_matrix #(
                .CLK_FREQ(_MP_CLK_FREQ_1862134639[idx_0_1862134639]),
                .MIN_DELAY(_MP_MIN_DELAY_1862134639),
                .NUM_SYNC(_MP_NUM_SYNC_1862134639)
            ) io_button_cond_row (
                .clk(clk),
                .in(M_io_button_cond_row_in[idx_0_1862134639]),
                .out(M_io_button_cond_row_out[idx_0_1862134639])
            );
        end
    endgenerate
    
    
    localparam logic [0:0][0:0] _MP_RISE_701504182 = {{1'h1}};
    localparam logic [0:0][0:0] _MP_FALL_701504182 = {{1'h0}};
    logic [0:0] M_io_button_edge_start_in;
    logic [0:0] M_io_button_edge_start_out;
    
    genvar idx_0_701504182;
    
    generate
        for (idx_0_701504182 = 0; idx_0_701504182 < 1; idx_0_701504182 = idx_0_701504182 + 1) begin: forLoop_idx_0_701504182
            edge_detector #(
                .RISE(_MP_RISE_701504182[idx_0_701504182]),
                .FALL(_MP_FALL_701504182[idx_0_701504182])
            ) io_button_edge_start (
                .clk(clk),
                .in(M_io_button_edge_start_in[idx_0_701504182]),
                .out(M_io_button_edge_start_out[idx_0_701504182])
            );
        end
    endgenerate
    
    
    localparam logic [0:0][23:0] _MP_CLK_FREQ_1142569757 = {{24'h989680}};
    localparam logic [0:0][9:0] _MP_MIN_DELAY_1142569757 = {{10'h3e8}};
    localparam _MP_NUM_SYNC_1142569757 = 2'h2;
    logic [0:0] M_io_button_cond_start_in;
    logic [0:0] M_io_button_cond_start_out;
    
    genvar idx_0_1142569757;
    
    generate
        for (idx_0_1142569757 = 0; idx_0_1142569757 < 1; idx_0_1142569757 = idx_0_1142569757 + 1) begin: forLoop_idx_0_1142569757
            button_conditioner #(
                .CLK_FREQ(_MP_CLK_FREQ_1142569757[idx_0_1142569757]),
                .MIN_DELAY(_MP_MIN_DELAY_1142569757[idx_0_1142569757]),
                .NUM_SYNC(_MP_NUM_SYNC_1142569757)
            ) io_button_cond_start (
                .clk(clk),
                .in(M_io_button_cond_start_in[idx_0_1142569757]),
                .out(M_io_button_cond_start_out[idx_0_1142569757])
            );
        end
    endgenerate
    
    
    localparam logic [0:0][0:0] _MP_RISE_1123346909 = {{1'h1}};
    localparam logic [0:0][0:0] _MP_FALL_1123346909 = {{1'h0}};
    logic [0:0] M_io_button_edge_select_in;
    logic [0:0] M_io_button_edge_select_out;
    
    genvar idx_0_1123346909;
    
    generate
        for (idx_0_1123346909 = 0; idx_0_1123346909 < 1; idx_0_1123346909 = idx_0_1123346909 + 1) begin: forLoop_idx_0_1123346909
            edge_detector #(
                .RISE(_MP_RISE_1123346909[idx_0_1123346909]),
                .FALL(_MP_FALL_1123346909[idx_0_1123346909])
            ) io_button_edge_select (
                .clk(clk),
                .in(M_io_button_edge_select_in[idx_0_1123346909]),
                .out(M_io_button_edge_select_out[idx_0_1123346909])
            );
        end
    endgenerate
    
    
    localparam logic [0:0][23:0] _MP_CLK_FREQ_721371327 = {{24'h989680}};
    localparam logic [0:0][9:0] _MP_MIN_DELAY_721371327 = {{10'h3e8}};
    localparam _MP_NUM_SYNC_721371327 = 2'h2;
    logic [0:0] M_io_button_cond_select_in;
    logic [0:0] M_io_button_cond_select_out;
    
    genvar idx_0_721371327;
    
    generate
        for (idx_0_721371327 = 0; idx_0_721371327 < 1; idx_0_721371327 = idx_0_721371327 + 1) begin: forLoop_idx_0_721371327
            button_conditioner #(
                .CLK_FREQ(_MP_CLK_FREQ_721371327[idx_0_721371327]),
                .MIN_DELAY(_MP_MIN_DELAY_721371327[idx_0_721371327]),
                .NUM_SYNC(_MP_NUM_SYNC_721371327)
            ) io_button_cond_select (
                .clk(clk),
                .in(M_io_button_cond_select_in[idx_0_721371327]),
                .out(M_io_button_cond_select_out[idx_0_721371327])
            );
        end
    endgenerate
    
    
    logic [0:0] M_cpu_select_button;
    logic [0:0] M_cpu_start_button;
    logic [3:0] M_cpu_row;
    logic [3:0] M_cpu_col;
    logic [15:0] M_cpu_led_grid;
    logic [6:0] M_cpu_io_segment;
    logic [3:0] M_cpu_seg_selector;
    
    manual_tester cpu (
        .rst(rst),
        .clk(clk),
        .select_button(M_cpu_select_button),
        .start_button(M_cpu_start_button),
        .row(M_cpu_row),
        .col(M_cpu_col),
        .led_grid(M_cpu_led_grid),
        .io_segment(M_cpu_io_segment),
        .seg_selector(M_cpu_seg_selector)
    );
    
    
    always @* begin
        M_reset_cond_in = ~rst_n;
        rst = M_reset_cond_out;
        usb_tx = usb_rx;
        M_io_button_cond_row_in = row;
        M_io_button_edge_row_in = M_io_button_cond_row_out;
        M_io_button_cond_start_in = io_button[1'h0];
        M_io_button_edge_start_in = M_io_button_cond_start_out;
        M_io_button_cond_select_in = io_button[1'h1];
        M_io_button_edge_select_in = M_io_button_cond_select_out;
        M_cpu_row = M_io_button_edge_row_out;
        M_cpu_start_button = M_io_button_edge_start_out;
        M_cpu_select_button = M_io_button_edge_select_out;
        col = M_cpu_col;
        led_grid = M_cpu_led_grid;
        seg_selector = M_cpu_seg_selector;
        io_segment = M_cpu_io_segment;
    end
    
    
endmodule