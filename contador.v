module Contador (
    input  wire clk,
    input  wire rst_n,

    input  wire acrescer,
    input  wire decrecer,

    output reg [7:0] saida
);

always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            saida <= 8'h6A;
        end else begin
            if (acrescer & ~decrecer)
                saida <= saida + 1;
            else if (~acrescer & decrecer)
                saida <= saida - 1;
            else
                saida <= saida;
        end
    end

endmodule
