module overlap_extractor_16x16 (
    input  bit [31:0] acc,       
    input  bit [3:0]  clk1,     
    output bit [15:0] acc_part  
);

  always_comb begin
    case (clk1)
      4'd0:  acc_part = acc[15:0];   
      4'd1:  acc_part = acc[16:1];   
      4'd2:  acc_part = acc[17:2];   
      4'd3:  acc_part = acc[18:3];   
      4'd4:  acc_part = acc[19:4];   
      4'd5:  acc_part = acc[20:5];   
      4'd6:  acc_part = acc[21:6];   
      4'd7:  acc_part = acc[22:7];   
      4'd8:  acc_part = acc[23:8];   
      4'd9:  acc_part = acc[24:9];   
      4'd10: acc_part = acc[25:10];  
      4'd11: acc_part = acc[26:11];  
      4'd12: acc_part = acc[27:12];  
      4'd13: acc_part = acc[28:13];  
      4'd14: acc_part = acc[29:14];  
      4'd15: acc_part = acc[30:15];  
      default: acc_part = 16'b0;
    endcase
  end

endmodule

