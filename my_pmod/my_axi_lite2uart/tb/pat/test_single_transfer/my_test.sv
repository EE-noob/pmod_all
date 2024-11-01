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
 tx_seq.set_mode(1,0,1,{24'h00,8'hff},0 ); //fix mode
 tx_seq.start(env0.tx_agent0.sqr);

 tx_seq.set_mode(1,0,1,{24'h00,8'h00},0 ); //fix mode
 tx_seq.start(env0.tx_agent0.sqr);//uvm自己实现的功能，start可以自动产生transaction并把结果给到通道env0.tx_agent0.sqr里面

 tx_seq.set_mode(1,0,1,{24'h00,8'haa},0 ); //fix mode
 tx_seq.start(env0.tx_agent0.sqr);

 tx_seq.set_mode(1,0,1,{24'h00,8'h55},0 ); //fix mode
 tx_seq.start(env0.tx_agent0.sqr);

 #200ns;

 tx_seq.set_mode(1,0,1,{24'h00,8'haa},4 ); //fix mode
 tx_seq.start(env0.tx_agent0.sqr);

 tx_seq.set_mode(1,0,1,{24'h00,8'h55},4 ); //fix mode
 tx_seq.start(env0.tx_agent0.sqr);


 #1us;

 phase.drop_objection(this);

endtask
