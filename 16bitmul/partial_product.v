module partial_product (
  input  bit [15:0] a,  
  input  bit        b,   
  output bit [15:0] pp   
);

  always_comb begin
    pp[0]  = a[0]  & b;
    pp[1]  = a[1]  & b;
    pp[2]  = a[2]  & b;
    pp[3]  = a[3]  & b;
    pp[4]  = a[4]  & b;
    pp[5]  = a[5]  & b;
    pp[6]  = a[6]  & b;
    pp[7]  = a[7]  & b;
    pp[8]  = a[8]  & b;
    pp[9]  = a[9]  & b;
    pp[10] = a[10] & b;
    pp[11] = a[11] & b;
    pp[12] = a[12] & b;
    pp[13] = a[13] & b;
    pp[14] = a[14] & b;
    pp[15] = a[15] & b;
  end

endmodule
