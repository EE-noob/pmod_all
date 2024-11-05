`include "uvm_pkg.sv"  
module simtop();

  import uvm_pkg::*;
  `include "uvm_macros.svh"

  initial begin
    `uvm_info("simtop","------uvm run test start--------",UVM_LOW);
    run_test();
    #100;
  end





endmodule

