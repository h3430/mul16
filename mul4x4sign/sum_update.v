module sum_update (
  input bit [7:0] old_sum,
  input bit [3:0] adder_sum,
  input bit carry,
  input bit [1:0] clk1,
  output bit [7:0] new_sum
  );

  always_comb begin
    case (clk1)
      2'd0: begin
        new_sum = {
          old_sum[7:4], adder_sum
          };
        end
        2'd1: begin
          new_sum = {
            old_sum[7:6], (old_sum[5] + carry), adder_sum, old_sum[0]};
          end
      2'd2: begin
        new_sum = {old_sum[7], (old_sum[6]+carry), adder_sum, old_sum[1:0]};
      end
      2'd3: begin
        new_sum = {
          (old_sum[7]+carry),
          adder_sum,
          old_sum[2:0]
          };
        end
        default: new_sum = old_sum;
      endcase
    end
    endmodule
