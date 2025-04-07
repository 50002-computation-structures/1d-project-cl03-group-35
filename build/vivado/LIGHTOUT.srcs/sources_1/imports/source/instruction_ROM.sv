/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module instruction_ROM (
        input wire [31:0] address,
        output reg [31:0] out
    );
    localparam logic [56:0][31:0] INSTRUCTIONS = {{32'ha94af800, 32'ha94af000, 32'ha94ae000, 32'ha94ad800, 32'ha94ad000, 32'ha94ac800, 32'ha94ac000, 32'ha94ab800, 32'ha94ab000, 32'ha94aa800, 32'ha94aa000, 32'ha94a9800, 32'ha94a9000, 32'ha94a8800, 32'ha94a8000, 32'ha94a7800, 32'h814a2800, 32'hc0a5dfd3, 32'hc0a51248, 32'hc0a53c82, 32'hc0840001, 32'hc3ff101b, 32'hc3de2027, 32'hc39c404e, 32'hc37b808d, 32'hc35a01b1, 32'hc3390272, 32'hc31804e4, 32'hc2f708d8, 32'hc2d61b10, 32'hc2b52720, 32'hc2944e40, 32'hc2738d80, 32'hc252b101, 32'hc2317202, 32'hc210e404, 32'hc1efd808, 32'hed000011, 32'hc3ff0013, 32'hc3de0027, 32'hc39c004e, 32'hc37b008c, 32'hc35a0131, 32'hc3390272, 32'hc31804e4, 32'hc2f708c8, 32'hc2d61310, 32'hc2b52720, 32'hc2944e40, 32'hc2738c80, 32'hc2523100, 32'hc2317200, 32'hc210e400, 32'hc1efc800, 32'h74800002, 32'he8000001, 32'h0}};
    localparam NUM_OF_INSTRUCTIONS = 6'h39;
    always @* begin
        if (address < 6'h39) begin
            out = INSTRUCTIONS[address];
        end else begin
            out = 1'h0;
        end
    end
    
    
endmodule