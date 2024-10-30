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
 
 //-------------burst 2--------------------------//
 //the corner timming,interval between enable is 1
 tx_seq.set_mode(1,1,2,{16'h00,16'h00ff},0 ); //fix mode
 tx_seq.start(env0.tx_agent0.sqr);

 tx_seq.set_mode(1,1,2,{16'h00,16'h55aa},0 ); //fix mode
 tx_seq.start(env0.tx_agent0.sqr);

 //the interval is 4
 tx_seq.set_mode(1,1,2,{16'h00,16'haa55},4 ); //fix mode
 tx_seq.start(env0.tx_agent0.sqr);
 
 tx_seq.set_mode(1,1,2,{16'h00,16'h00ff},4 ); //fix mode
 tx_seq.start(env0.tx_agent0.sqr);

 #200ns;

 //-------------burst 3--------------------------//
 //the corner timming,interval between enable is 1
 tx_seq.set_mode(1,1,3,{8'h00,24'haa00ff},0 ); //fix mode
 tx_seq.start(env0.tx_agent0.sqr);

 tx_seq.set_mode(1,1,3,{16'h00,16'h00ff55},0 ); //fix mode
 tx_seq.start(env0.tx_agent0.sqr);

 //the interval is 4
 tx_seq.set_mode(1,1,3,{8'h00,24'haa00ff},4 ); //fix mode
 tx_seq.start(env0.tx_agent0.sqr);

 tx_seq.set_mode(1,1,3,{16'h00,16'h00ff55},4 ); //fix mode
 tx_seq.start(env0.tx_agent0.sqr);
 #200ns;


 //-------------burst 4--------------------------//
 //the corner timming,interval between enable is 1
 tx_seq.set_mode(1,1,4,{32'h55aa00ff},0 ); //fix mode
 tx_seq.start(env0.tx_agent0.sqr);

 tx_seq.set_mode(1,1,4,{32'hff0055aa},0 ); //fix mode
 tx_seq.start(env0.tx_agent0.sqr);

 //the interval is 4
 tx_seq.set_mode(1,1,4,{32'h55aaff00},4 ); //fix mode
 tx_seq.start(env0.tx_agent0.sqr);

 tx_seq.set_mode(1,1,4,{32'hff0055aa},4 ); //fix mode
 tx_seq.start(env0.tx_agent0.sqr);
 #200ns;


 phase.drop_objection(this);

endtask
