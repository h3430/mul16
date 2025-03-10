module sign_extender(
  input  bit [7:0] in,
  output bit [7:0] out
);

  always_comb begin
    if (in[7]) begin
      out = in;
    end else if (in[6]) begin
      out = {1'b1, in[6:0]};  
    end else if (in[5]) begin
      out = {2'b11, in[5:0]};  
    end else if (in[4]) begin
      out = {3'b111, in[4:0]};
    end else if (in[3]) begin
      out = {4'b1111, in[3:0]}; 
    end else if (in[2]) begin
      out = {5'b11111, in[2:0]};
    end else if (in[1]) begin
      out = {6'b111111, in[1:0]};
    end else if (in[0]) begin
      out = {7'b1111111, in[0]}; 
    end else begin
      out = 8'b00000000;
    end
  end

endmodule
