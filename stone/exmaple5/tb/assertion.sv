
module assertion( input clk       ,
                 input rst_n     ,
				 input enable_in ,
				 input enable_out
);

//no error, there no display in waveform
//if error, red in waveform
property enable_prop1( in1, in2 );

  @(posedge clk ) disable iff (!rst_n)
  ( in1 == 1'b1) |-> ##2 (in2 == 1'b1 );

endproperty

check_level1: assert property( enable_prop1(  enable_in,   enable_out ) );
check_level0: assert property( enable_prop1( ~enable_in,  ~enable_out ) );

//logic ena_d1,ena_d2;
//
//always@(posedge clk) begin
//   ena_d1 <= enable_in;
//   ena_d2 <= ena_d1;
//end
//
//always@(posedge clk ) begin: assert_eqaul
//   if( rst_n == 1 ) begin
//     assert( ena_d2 == enable_out);
//   end
//end 
//


endmodule
