module sign_extender(
  input  bit [15:0] in,    // 16-bit unsigned input
  output bit [31:0] out,   // 32-bit sign-extended output
  output bit        ext1   // Extra flag, always 1'b0
);

  always_comb begin
    // Default assignment: zero-extend the input and force ext1 to 0.
    out  = {16'b0, in};
    ext1 = 1'b0;
    
    if (in[15]) begin
      // First 1 is at bit 15: sign extend by prepending 16 ones.
      out = {16'b1111111111111111, in};
    end else if (in[14]) begin
      out = {17'b11111111111111111, in[14:0]};
    end else if (in[13]) begin
      out = {18'b111111111111111111, in[13:0]};
    end else if (in[12]) begin
      out = {19'b1111111111111111111, in[12:0]};
    end else if (in[11]) begin
      out = {20'b11111111111111111111, in[11:0]};
    end else if (in[10]) begin
      out = {21'b111111111111111111111, in[10:0]};
    end else if (in[9]) begin
      out = {22'b1111111111111111111111, in[9:0]};
    end else if (in[8]) begin
      out = {23'b11111111111111111111111, in[8:0]};
    end else if (in[7]) begin
      out = {24'b111111111111111111111111, in[7:0]};
    end
    // For in[6] down to in[0], we leave out as-is (zero extended) and ext1 remains 1'b0.
  end

endmodule
