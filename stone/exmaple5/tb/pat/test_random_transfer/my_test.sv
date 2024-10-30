class my_test extends uvm_test;

  `uvm_component_utils(my_test) 

  tx_sequence tx_seq;
  env env0;

  extern function new(string name="my_test",uvm_component parent=null);
  extern task main_phase(uvm_phase phase);

endclass

function my_test::new(string name="my_test",uvm_component parent=null);
  super.new(name,parent);
  `uvm_info("testcase1","-------testcase1 new----------",UVM_LOW);
  env0   = new("env0",this);
  tx_seq = new("tx_seq");
endfunction

task my_test::main_phase(uvm_phase phase);
  super.main_phase(phase);

 phase.raise_objection(this); //must raise phase
 
 #500ns; // wait for reset end

 //send one transaction to drv
 //tx_seq.set_mode(1,0,1,{8'h55,8'haa,8'h00,8'hff},0 ); //fix mode
 //tx_seq.start(env0.tx_agent0.sqr);
 
 //the corner timming,interval between enable is 1
 tx_seq.set_mode(0,0,0,32'h0,0 ); //random mode
 repeat(1000) begin
    tx_seq.start(env0.tx_agent0.sqr);
 end
 #1us;

 phase.drop_objection(this);

endtask
