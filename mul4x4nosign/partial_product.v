module partial_product (
    input bit [3:0] mul_num,
    input bit mul_bit,
    output bit [3:0] partial_prod
);
  always_comb begin
    partial_prod[0] = mul_num[0] & mul_bit;
    partial_prod[1] = mul_num[1] & mul_bit;
    partial_prod[2] = mul_num[2] & mul_bit;
    partial_prod[3] = mul_num[3] & mul_bit;
  end
endmodule
