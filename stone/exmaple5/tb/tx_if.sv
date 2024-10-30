interface tx_if(input clk, input rst_n);

        
       logic   [7:0] dout;
       logic   enable_out;

       clocking drv_cb @(posedge clk);
         default input #1 output #1;
         output  dout      ;
	     output  enable_out;
       endclocking
             
      modport tx_driver(clocking drv_cb);

endinterface: tx_if

