`include "uvm_pkg.sv"  
module simtop();

  import uvm_pkg::*;
  `include "uvm_macros.svh"

  logic clk,rst_n; 
 
  tx_if tx_sigs0(clk, rst_n);
  rx_if rx_sigs0(clk, rst_n);

  initial begin
    uvm_config_db#(virtual tx_if)::set(null,"uvm_test_top.env0.tx_agent0.drv","tx_if", tx_sigs0);
    uvm_config_db#(virtual rx_if)::set(null,"uvm_test_top.env0.rx_agent0.mon","rx_if", rx_sigs0);
 

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
  
  always #10 clk = ~clk;

  flipflop duv(
    .clk         (clk                ),          
    .rst_n       (rst_n              ),
	.din         (tx_sigs0.dout      ),
	.enable_in   (tx_sigs0.enable_out),
	.dout        (rx_sigs0.din       ),
	.enable_out  (rx_sigs0.enable_in )
  );

initial	begin
	 $fsdbDumpfile("simtop.fsdb");
	 $fsdbDumpvars;
	 $fsdbDumpSVA; // for assertion
end

cov_port cov_port0( rx_sigs0 );

assertion assert0( clk, rst_n, duv.enable_in, duv.enable_out );

endmodule

