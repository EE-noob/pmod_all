class my_test extends uvm_test;

  `uvm_component_utils(my_test) 

  uart_tx_sequence uart_tx_seq;
  env env0;

  extern function new(string name="my_test",uvm_component parent=null);
  extern task main_phase(uvm_phase phase);
  extern task pre_configure_phase(uvm_phase phase);
endclass

function my_test::new(string name="my_test",uvm_component parent=null);
  super.new(name,parent);
  `uvm_info("testcase1","-------testcase1 new----------",UVM_LOW);
  env0   = new("env0",this);
  uart_tx_seq = new("uart_tx_seq");
endfunction

task my_test::pre_configure_phase(uvm_phase phase);
  super.main_phase(phase);

 phase.raise_objection(this); //must raise phase
#100ns;
phase.drop_objection(this);
endtask
task my_test::main_phase(uvm_phase phase);
  super.main_phase(phase);

 phase.raise_objection(this); //must raise phase
 
 #500ns; // wait for reset end

 //send one transaction to drv
 //tx_seq.set_mode(1,0,1,{8'h55,8'haa,8'h00,8'hff},0 ); //fix mode
 //tx_seq.start(env0.tx_agent0.sqr);
 
 //the corner timming,interval between enable is 1
 //{32'hff_dd_22_88}
//  set_mode(bit mod,bit rwtype, bit[2:0] number,bit[3:0][7:0] dat, bit[3:0] delay
//  ,  bit [31:0] addr_i 
 uart_tx_seq.set_mode(1,0,4,{{8'hff},{8'hbb},{8'h88},{8'h22}},0,
        115200  ,50_000_000,1,  0 ); //fix mode
 uart_tx_seq.start(env0.uart_tx_agent0.sqr);

//  uart_tx_seq.set_mode(1,0,1,{24'h00,8'h00},0 ); //fix mode
//  uart_tx_seq.start(env0.tx_agent0.sqr);//uvm自己实现的功能，start可以自动产生transaction并把结果给到通道env0.tx_agent0.sqr里面

//  uart_tx_seq.set_mode(1,0,1,{24'h00,8'haa},0 ); //fix mode
//  uart_tx_seq.start(env0.tx_agent0.sqr);

//  uart_tx_seq.set_mode(1,0,1,{24'h00,8'h55},0 ); //fix mode
//  uart_tx_seq.start(env0.tx_agent0.sqr);

 #200ns;

//  tx_seq.set_mode(1,0,1,{24'h00,8'haa},4 ); //fix mode
//  tx_seq.start(env0.tx_agent0.sqr);

//  tx_seq.set_mode(1,0,1,{24'h00,8'h55},4 ); //fix mode
//  tx_seq.start(env0.tx_agent0.sqr);


 #1000us;

 phase.drop_objection(this);

endtask
