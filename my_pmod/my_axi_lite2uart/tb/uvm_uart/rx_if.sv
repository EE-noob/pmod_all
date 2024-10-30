interface rx_if(input clk, input rst_n);

        
       logic   [7:0] din;
       logic   enable_in;

       clocking drv_cb @(posedge clk);
         default input #1 output #1;
         input  din      ;
	     input  enable_in;
       endclocking
             
      modport rx_driver(clocking drv_cb);

endinterface: rx_if

