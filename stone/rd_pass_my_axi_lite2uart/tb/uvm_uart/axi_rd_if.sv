interface axi_rd_if(input clk, input rst_n);

  //ar
  //input   wire  [AXI_ID_WIDTH-1:0]    axi_arid_i;
logic [32-1:0]  s_axi_araddr;
logic                       s_axi_arvalid;
logic                       s_axi_rready;
logic                       s_axi_arready;
logic [32-1:0]  s_axi_rdata;
logic [2-1:0]   s_axi_rresp;
logic                       s_axi_rvalid;
logic                       uart_irq;
       clocking drv_cb @(posedge clk);
         default input #1 output #1;
        output s_axi_araddr;
        output s_axi_arvalid;
        output s_axi_rready;

        input s_axi_arready;
        input s_axi_rdata;
        input s_axi_rresp;
        input s_axi_rvalid;
        input uart_irq;
       endclocking
             
       clocking mon_cb @(posedge clk);
       default input #1 output #1;
      input s_axi_araddr;
      input s_axi_arvalid;
      input s_axi_rready;

      input s_axi_arready;
      input s_axi_rdata;
      input s_axi_rresp;
      input s_axi_rvalid;
      input uart_irq;
     endclocking

      modport rx_driver(clocking drv_cb);

endinterface: axi_rd_if

