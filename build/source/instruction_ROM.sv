/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module instruction_ROM (
        input wire [31:0] address,
        output reg [31:0] out
    );
    localparam logic [70:0][31:0] INSTRUCTIONS = {{32'hcc240000, 32'h81673000, 32'hd8270004, 32'hc4e70004, 32'hc0e70001, 32'hc0a50001, 32'hc0a50384, 32'ha884f000, 32'ha884e800, 32'ha884e000, 32'ha884d800, 32'ha884d000, 32'ha884c800, 32'ha884c000, 32'ha884b800, 32'ha884b000, 32'ha884a800, 32'ha884a000, 32'ha8849800, 32'ha8849000, 32'ha8848800, 32'ha8848000, 32'ha8847800, 32'h80801800, 32'hc063dfd3, 32'hc0631248, 32'hc0633c82, 32'hc063dfd3, 32'hc0631248, 32'hc0633c82, 32'hc0e70001, 32'hc96b0000, 32'hd82b0023, 32'hd82b0012, 32'hc16b0001, 32'hc3ded808, 32'hc3bde404, 32'hc39c7202, 32'hc37bb101, 32'hc35a8d80, 32'hc3394e40, 32'hc3182720, 32'hc2f71b10, 32'hc2d608d8, 32'hc2b504e4, 32'hc2940272, 32'hc27301b1, 32'hc252808d, 32'hc231404e, 32'hc2102027, 32'hc1ef101b, 32'hed000011, 32'hc3dec800, 32'hc3bde400, 32'hc39c7200, 32'hc37b3100, 32'hc35a8c80, 32'hc3394e40, 32'hc3182720, 32'hc2f71310, 32'hc2d608c8, 32'hc2b504e4, 32'hc2940272, 32'hc2730131, 32'hc252008c, 32'hc231004e, 32'hc2100027, 32'hc1ef0013, 32'h716b0014, 32'h716b0003, 32'h0}};
    localparam NUM_OF_INSTRUCTIONS = 7'h47;
    always @* begin
        if (address < 7'h47) begin
            out = INSTRUCTIONS[address];
        end else begin
            out = 1'h0;
        end
    end
    
    
endmodule