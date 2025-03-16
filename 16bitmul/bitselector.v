module bitselector (
    input  bit [15:0] b,
    input  bit [ 3:0] sel,
    output bit        bn
);

  always_comb begin
    case (sel)
      4'b0000: bn = b[0];
      4'b0001: bn = b[1];
      4'b0010: bn = b[2];
      4'b0011: bn = b[3];
      4'b0100: bn = b[4];
      4'b0101: bn = b[5];
      4'b0110: bn = b[6];
      4'b0111: bn = b[7];
      4'b1000: bn = b[8];
      4'b1001: bn = b[9];
      4'b1010: bn = b[10];
      4'b1011: bn = b[11];
      4'b1100: bn = b[12];
      4'b1101: bn = b[13];
      4'b1110: bn = b[14];
      4'b1111: bn = b[15];
      default: bn = 1'b0;
    endcase
  end

endmodule
