module accumulator_update_16x16 (
  input  bit [31:0] old_acc,      
  input  bit [15:0] adder_result,  
  input  bit        carry_out,     
  input  bit [3:0]  cycle,         
  output bit [31:0] new_acc       
);

  always_comb begin
    new_acc = old_acc;

    case (cycle)
      4'd0: begin
         new_acc[15:0] = adder_result;
         new_acc[16]   = old_acc[16] + carry_out;
      end
      4'd1: begin
         new_acc[16:1] = adder_result;
         new_acc[17]   = old_acc[17] + carry_out;
      end
      4'd2: begin
         new_acc[17:2] = adder_result;
         new_acc[18]   = old_acc[18] + carry_out;
      end
      4'd3: begin
         new_acc[18:3] = adder_result;
         new_acc[19]   = old_acc[19] + carry_out;
      end
      4'd4: begin
         new_acc[19:4] = adder_result;
         new_acc[20]   = old_acc[20] + carry_out;
      end
      4'd5: begin
         new_acc[20:5] = adder_result;
         new_acc[21]   = old_acc[21] + carry_out;
      end
      4'd6: begin
         new_acc[21:6] = adder_result;
         new_acc[22]   = old_acc[22] + carry_out;
      end
      4'd7: begin
         new_acc[22:7] = adder_result;
         new_acc[23]   = old_acc[23] + carry_out;
      end
      4'd8: begin
         new_acc[23:8] = adder_result;
         new_acc[24]   = old_acc[24] + carry_out;
      end
      4'd9: begin
         new_acc[24:9] = adder_result;
         new_acc[25]   = old_acc[25] + carry_out;
      end
      4'd10: begin
         new_acc[25:10] = adder_result;
         new_acc[26]    = old_acc[26] + carry_out;
      end
      4'd11: begin
         new_acc[26:11] = adder_result;
         new_acc[27]    = old_acc[27] + carry_out;
      end
      4'd12: begin
         new_acc[27:12] = adder_result;
         new_acc[28]    = old_acc[28] + carry_out;
      end
      4'd13: begin
         new_acc[28:13] = adder_result;
         new_acc[29]    = old_acc[29] + carry_out;
      end
      4'd14: begin
         new_acc[29:14] = adder_result;
         new_acc[30]    = old_acc[30] + carry_out;
      end
      4'd15: begin
         new_acc[30:15] = adder_result;
         new_acc[31]    = old_acc[31] + carry_out;
      end
      default: new_acc = old_acc;
    endcase
  end

endmodule
