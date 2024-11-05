interface tx_if(input clk, input rst_n);

        
    // 定义输入信号
logic uart_rx;
logic [32-1:0] s_axi_araddr;
logic s_axi_arvalid;
logic s_axi_rready;
logic [32-1:0] s_axi_awaddr;
logic s_axi_awvalid;
logic [32-1:0] s_axi_wdata;
logic [4-1:0] s_axi_wstrb;
logic s_axi_wvalid;
logic s_axi_bready;

// 定义 clocking block
clocking drv_cb @(posedge clk);
    default input #1 output #1;
    
    input uart_rx;
    input s_axi_araddr;
    input s_axi_arvalid;
    input s_axi_rready;
    input s_axi_awaddr;
    input s_axi_awvalid;
    input s_axi_wdata;
    input s_axi_wstrb;
    input s_axi_wvalid;
    input s_axi_bready;
endclocking

             
      modport tx_driver(clocking drv_cb);

endinterface: tx_if

