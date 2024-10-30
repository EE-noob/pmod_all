
class rx_monitor extends uvm_monitor;
  virtual rx_if vif;
  uvm_analysis_port #(transaction) ap;
  
  `uvm_component_utils(rx_monitor)
  
   transaction req;

  extern function new(string name,uvm_component parent);
  extern virtual function void build_phase(uvm_phase phase);
  //extern virtual task configure_phase(uvm_phase phase);
  //extern virtual task pre_main_phase(uvm_phase phase);
  extern virtual task main_phase(uvm_phase phase);
  //extern virtual task run_phase(uvm_phase phase);
  extern task     monitor_bus();
  extern task     debug_info();
endclass

function rx_monitor::new(string name,uvm_component parent);
  super.new(name,parent);
endfunction

function void rx_monitor::build_phase(uvm_phase phase);
  super.build_phase(phase);
  //get vif from config_db( vif is a parameter of get function
  if( !uvm_config_db#(virtual rx_if)::get(this,"","rx_if",vif))
    `uvm_fatal("rx_monitor","Error in getting interface");
  ap = new("ap",this);
  req = new();
endfunction

task rx_monitor::main_phase(uvm_phase phase);
  //super.main_phase(phase);
  while(1) begin
    monitor_bus();
    ap.write( req );
	debug_info();
    //seq_item_port.item_done();
  end
endtask

task rx_monitor::monitor_bus();
  //wait( vif.drv_cb.enable_in == 1'b1 ); 
  while(1) begin
    @vif.drv_cb;
	if( vif.drv_cb.enable_in == 1'b1 ) break;
  end//wait for 
  req.number = 0;
  while(vif.drv_cb.enable_in == 1'b1 ) begin
      req.dat[req.number] = vif.drv_cb.din;
	  req.number++;
      @vif.drv_cb;
  end
  if( req.number == 1 ) 
    req.burst = 0;
  else 
	req.burst = 1;
endtask

task rx_monitor::debug_info();
  `uvm_info("rx_monitor","get a transaction",UVM_LOW);
  `uvm_info("rx_monitor",$sformatf("burst=%1b",req.burst),UVM_LOW);
  `uvm_info("rx_monitor",$sformatf("number=%1d",req.number),UVM_LOW);
  `uvm_info("rx_monitor",$sformatf("dat0=%h",req.dat[0]),UVM_LOW);
  `uvm_info("rx_monitor",$sformatf("dat1=%h",req.dat[1]),UVM_LOW);
  `uvm_info("rx_monitor",$sformatf("dat2=%h",req.dat[2]),UVM_LOW);
  `uvm_info("rx_monitor",$sformatf("dat3=%h",req.dat[3]),UVM_LOW);
endtask
