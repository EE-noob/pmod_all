`include "uvm_pkg.sv"  
module simtop();

  import uvm_pkg::*;
  `include "uvm_macros.svh"

  localparam clk_period = 20;

  logic clk,rst_n; 
 
  wire dut_rx;
  wire dut_tx;

  uart_tx_if uart_tx_sigs0(clk, rst_n);//sigs0 表示的是信号（signals）的意思。
  uart_rx_if uart_rx_sigs0(clk, rst_n);
  axi_rd_if axi_rd_if_sigs0(clk, rst_n);
  axi_wr_if axi_wr_if_sigs0(clk, rst_n);

  initial begin//uvm的if与硬件duv里面if连接 
    uvm_config_db#(virtual uart_tx_if)::set(null,"uvm_test_top.env0.uart_tx_agent0.drv","uart_tx_if", uart_tx_sigs0);
    uvm_config_db#(virtual uart_rx_if)::set(null,"uvm_test_top.env0.uart_rx_agent0.mon","uart_rx_if", uart_rx_sigs0);
    uvm_config_db#(virtual axi_rd_if)::set(null,"uvm_test_top.env0.axi_rx_agent0.mon","axi_rd_if", axi_rd_if_sigs0);
    uvm_config_db#(virtual axi_wr_if)::set(null,"uvm_test_top.env0.axi_tx_agent0.drv","axi_wr_if", axi_wr_if_sigs0);

    `uvm_info("simtop","------uvm run test start--------",UVM_LOW);
    run_test();
    #100;
  end

  initial begin
     clk   = 0; 
	   rst_n = 0;
     #100;
	 rst_n = 1;
  end
  
  always #(clk_period/2) clk = ~clk;

  //instance>>>

  axi2uart_top  axi2uart_top_inst (
    .clk(clk),
    .rst_n(rst_n),
    .uart_rx(dut_rx),
    .uart_tx(dut_tx),

    .uart_irq(axi_rd_if_sigs0.uart_irq),
    .s_axi_araddr(axi_rd_if_sigs0.s_axi_araddr),
    .s_axi_arvalid(axi_rd_if_sigs0.s_axi_arvalid),
    .s_axi_arready(axi_rd_if_sigs0.s_axi_arready),
    .s_axi_rdata(axi_rd_if_sigs0.s_axi_rdata),
    .s_axi_rresp(axi_rd_if_sigs0.s_axi_rresp),
    .s_axi_rvalid(axi_rd_if_sigs0.s_axi_rvalid),
    .s_axi_rready(axi_rd_if_sigs0.s_axi_rready)
    
    ,
    
    .s_axi_awaddr(axi_wr_if_sigs0.s_axi_awaddr),
    .s_axi_awvalid(axi_wr_if_sigs0.s_axi_awvalid),
    .s_axi_awready(axi_wr_if_sigs0.s_axi_awready),
    .s_axi_wdata(axi_wr_if_sigs0.s_axi_wdata),
    .s_axi_wstrb(axi_wr_if_sigs0.s_axi_wstrb),
    .s_axi_wvalid(axi_wr_if_sigs0.s_axi_wvalid),
    .s_axi_wready(axi_wr_if_sigs0.s_axi_wready),
    .s_axi_bresp(axi_wr_if_sigs0.s_axi_bresp),
    .s_axi_bvalid(axi_wr_if_sigs0.s_axi_bvalid),
    .s_axi_bready(axi_wr_if_sigs0.s_axi_bready)
  );

  uart_transmitter 
  uart_tx_simtop (
    .clk_i(clk),
    .rstn_i(rst_n),

    .en_i(uart_tx_sigs0.en_i),
    .stop_bits_i(uart_tx_sigs0.stop_bits_i),
    .parity_bit_i(uart_tx_sigs0.parity_bit_i),
    .parity_bit_mode_i(uart_tx_sigs0.parity_bit_mode_i),
    .baud_div_i(uart_tx_sigs0.baud_div_i),

    .tx_o(dut_rx),

    .tx_data_i(uart_tx_sigs0.tx_data_i),
    .tx_send_i(uart_tx_sigs0.tx_send_i),
    .tx_ready_o(uart_tx_sigs0.tx_ready_o),
    .busy_o(uart_tx_sigs0.busy_o)
  );

  uart_receiver 
  uart_rx_simtop (
    .clk_i(clk),
    .rstn_i(rst_n),

    .en_i(uart_rx_sigs0.en_i),
    .stop_bits_i(uart_rx_sigs0.stop_bits_i),
    .parity_bit_i(uart_rx_sigs0.parity_bit_i),
    .baud_div_i(uart_rx_sigs0.baud_div_i),

    .rx_i(dut_tx),

    .rx_data_o(uart_rx_sigs0.rx_data_o),
    .rx_valid_o(uart_rx_sigs0.rx_valid_o)
  );
  //instance<<<
//dump、timeout、finish>>>
//fsdb
initial
begin
//if($test$plusargs("DUMP_FSDB"))
begin
$fsdbDumpfile("testname.fsdb");  //记录波形，波形名字testname.fsdb
$fsdbDumpvars("+all");  //+all参数，dump SV中的struct结构体
$fsdbDumpSVA();   //将assertion的结果存在fsdb中
$fsdbDumpMDA();  //dump memory arrays
//0: 当前级及其下面所有层级，如top.A, top.A.a，所有在top下面的多维数组均会被dump
//1: 仅仅dump当前组，也就是说，只dump top这一层的多维数组。
end
end

initial begin
    #(1e6*clk_period);
    $display ("!!!!!!ERROR Timeout !!!!!!!! at time %t", $time);
    
    $finish;
  end

//<<<
// cov_port cov_port0( rx_sigs0 );

// assertion assert0( clk, rst_n, duv.enable_in, duv.enable_out );

endmodule

