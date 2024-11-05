interface axi_wr_if(input clk, input rst_n);

  //ar
  //input   wire  [AXI_ID_WIDTH-1:0]    axi_arid_i;
logic [32-1:0]  s_axi_awaddr;
logic           s_axi_awvalid;
logic           s_axi_awready;
logic [32-1:0]  s_axi_wdata;
logic [3:0]     s_axi_wstrb;
logic [2-1:0]   s_axi_bresp;
logic           s_axi_bvalid;
logic           s_axi_bready;
logic           s_axi_wvalid;
logic           s_axi_wready;

       clocking drv_cb @(posedge clk);
         default input #1 output #1;
//aw
//input   
         output   s_axi_awaddr;
         output   s_axi_awvalid;
         input    s_axi_awready;
         //w
         output   s_axi_wdata;
         output   s_axi_wstrb;
         output   s_axi_wvalid;
         input    s_axi_wready;
         //b
         input  s_axi_bresp;
         input  s_axi_bvalid;
         output   s_axi_bready;
     
       endclocking
             
       clocking mon_cb @(posedge clk);
       default input #1 output #1;
       input s_axi_awaddr;
       input s_axi_awvalid;
       input s_axi_awready;
       input s_axi_wdata;
       input s_axi_wstrb;
       input s_axi_bresp;
       input s_axi_bvalid;
       input s_axi_bready;
       input s_axi_wvalid;
       input s_axi_wready;
     endclocking

      modport rx_driver(clocking drv_cb);

endinterface: axi_wr_if

