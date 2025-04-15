/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module instruction_ROM (
        input wire [31:0] address,
        output reg [31:0] out
    );
    localparam logic [95:0][31:0] INSTRUCTIONS = {{32'hc0a0044c, 32'hc0a003e8, 32'hc0a00190, 32'hc0608012, 32'hc0606116, 32'hc0606c2b, 32'hc3c0d808, 32'hc3a0e404, 32'hc3807202, 32'hc360b101, 32'hc3408d80, 32'hc3204e40, 32'hc3002720, 32'hc2e01b10, 32'hc2c008d8, 32'hc2a004e4, 32'hc2800272, 32'hc26001b1, 32'hc240808d, 32'hc220404e, 32'hc2002027, 32'hc1e0101b, 32'hc0a00258, 32'hc0a00320, 32'hc0a00190, 32'hc060edb7, 32'hc060a0fa, 32'hc0602486, 32'hc3c0c800, 32'hc3a0e400, 32'hc3807200, 32'hc3603100, 32'hc3408c80, 32'hc3204e40, 32'hc3002720, 32'hc2e01310, 32'hc2c008c8, 32'hc2a004e4, 32'hc2800272, 32'hc2600131, 32'hc240008c, 32'hc220004e, 32'hc2000027, 32'hc1e00013, 32'hc0a50001, 32'hc0a50064, 32'hc0808000, 32'hc0804000, 32'hc0802000, 32'hc0801000, 32'hc0800800, 32'hc0800400, 32'hc0800200, 32'hc0800100, 32'hc0800080, 32'hc0800040, 32'hc0800020, 32'hc0800010, 32'hc0800008, 32'hc0800004, 32'hc0800002, 32'hc0800001, 32'h8c842800, 32'hc080ffff, 32'ha884f000, 32'ha884e800, 32'ha884e000, 32'ha884d800, 32'ha884d000, 32'ha884c800, 32'ha884c000, 32'ha884b800, 32'ha884b000, 32'ha884a800, 32'ha884a000, 32'ha8849800, 32'ha8849000, 32'ha8848800, 32'ha8848000, 32'ha8847800, 32'hd0240000, 32'hc0a50001, 32'hc16b0003, 32'h80801800, 32'h816b3800, 32'hc0e00000, 32'hd8270002, 32'hc0e70001, 32'hc0200000, 32'hd8220010, 32'hc0420001, 32'hc16b0001, 32'h81660000, 32'hc0c0004a, 32'hc0c00034, 32'h0}};
    localparam NUM_OF_INSTRUCTIONS = 7'h60;
    always @* begin
        if (address < 7'h60) begin
            out = INSTRUCTIONS[address];
        end else begin
            out = 1'h0;
        end
    end
    
    
endmodule