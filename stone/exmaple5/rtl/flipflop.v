
module flipflop( clk,rst_n,din,enable_in,dout,enable_out);
input   clk;
input   rst_n;
input[7:0] din;
input    enable_in;

output[7:0] dout;
output      enable_out;

reg[7:0]  dat0;
reg[7:0]  dat1;
reg       enable0;
reg       enable1;

wire[7:0] dout;
wire      enable_out;

//always@(posedge clk or negedge rst_n )begin
//  if( ~rst_n  ) begin
//     dat0 = 8'd0;
//     dat1 = 8'd0;
//  end
//  else if( enable_in == 1'b1 ) begin
//     dat0 = din;
//     dat1 = dat0;
//  end
//end

//clk   1   2   3   4   5
//din: 10  11  12  13  14
//dat0:    10  11  12  13
//dat1:    10  11  12  13
//阻塞赋值:     =       顺序执行，有先后关系，在前面的先执行，在后面的后执行
//非阻塞赋值：  <=      并行执行，没有先后关系，同时执行
//clk   1   2   3   4   5
//din: 10  11  12  13  14
//dat0: 0  10  11  12  13
//dat1: 0  0   10  11  12

always@(posedge clk or negedge rst_n )begin
  if( ~rst_n  ) begin
     dat0 <= 8'd0;
  end
  else if( enable_in == 1'b1 ) begin
     dat0 <= din;
  end
end

always@(posedge clk or negedge rst_n )begin
  if( ~rst_n  ) 
     dat1 <= 8'd0;
  else
     dat1<= dat0;
end



assign dout = dat1;

always@(posedge clk or negedge rst_n )begin
  if( ~rst_n  ) begin
    enable0 <= 1'b0;
    enable1 <= 1'b0;
  end
  else begin
    enable0 <= enable_in;
    enable1 <= enable0;
  end
end

assign enable_out = enable1;


endmodule

