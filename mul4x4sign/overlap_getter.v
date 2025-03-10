module overlap_getter (
    input  bit [7:0] sum_old,
    input  bit [1:0] clk1,
    output bit [3:0] sum_old_part
);
  always_comb begin
    case (clk1)
      2'd0: begin
        sum_old_part = sum_old[3:0];
      end
      2'd1: begin
        sum_old_part = sum_old[4:1];
      end
      2'd2: begin
        sum_old_part = sum_old[5:2];
      end
      2'd3: begin
        sum_old_part = sum_old[6:3];
      end
      default: begin
        sum_old_part = 4'd0;
      end
    endcase
  end

endmodule
