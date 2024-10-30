
class tx_driver extends uvm_driver #(transaction);
 
  virtual tx_if vif;  //interface to connect the DUV
  uvm_analysis_port #(transaction) ap;//ap to connect to reference or socoreboard
  //register to uvm
  `uvm_component_utils(tx_driver)

  transaction req;//transaction define for internal use
  
  extern function new(string name,uvm_component parent);
  extern virtual function void build_phase(uvm_phase phase);
  extern virtual task pre_configure_phase(uvm_phase phase);
  extern virtual task configure_phase(uvm_phase phase);
  extern virtual task main_phase(uvm_phase phase);
  extern         task drive_bus();
  extern         task debug_info();

endclass

function tx_driver::new(string name,uvm_component parent);
  super.new(name,parent);
  //initial variables here
endfunction

function void tx_driver::build_phase(uvm_phase phase);
  `uvm_info("tx_driver","build phase",UVM_LOW);
  super.build_phase(phase);
  //get vif from config_db which is done when initial in simtop module
  if( !uvm_config_db#(virtual tx_if)::get(this,"","tx_if",vif))
    `uvm_fatal("tx_driver","Error in getting interface");
  //ap send transaction to refrence or soreboard
  ap = new("ap",this);
endfunction

task tx_driver::pre_configure_phase(uvm_phase phase);
  //initial the output port
  `uvm_info("tx_driver","pre configure phase",UVM_LOW);
  super.pre_configure_phase(phase);
  vif.drv_cb.dout       <= 8'd0;  //only use <=, if = compiler error
  vif.drv_cb.enable_out <= 1'b0;
endtask

task tx_driver::configure_phase(uvm_phase phase);
  `uvm_info("tx_driver","configure phase",UVM_LOW);
  super.configure_phase(phase);
endtask


task tx_driver::main_phase(uvm_phase phase);
  `uvm_info("tx_driver","main phase",UVM_LOW);
  super.main_phase(phase);
  while(1) begin
    `uvm_info("tx_driver","main phase get xact before",UVM_LOW);
    seq_item_port.get_next_item(req);
    `uvm_info("tx_driver","main phase get xact after",UVM_LOW);
    drive_bus();
	debug_info();
    ap.write( req );
    seq_item_port.item_done();
  end
endtask

task tx_driver::drive_bus();
  int i;
  //single trasnfer
  if( req.burst == 0 ) begin
     @vif.drv_cb; //use clocking block to align with clock.
     vif.drv_cb.dout       <= req.dat;
	 vif.drv_cb.enable_out <= 1'b1;
     @vif.drv_cb; //delay 1 clock
     vif.drv_cb.dout       <= 8'd0;
	 vif.drv_cb.enable_out <= 1'b0;
  end
  else begin // burst transfer
     @vif.drv_cb; //use clocking block to align with clock.
     for( i=0; i<req.number;i++ ) begin
       vif.drv_cb.dout       <= req.dat[i]; //req.dat for debug
	   vif.drv_cb.enable_out <= 1'b1;
       @vif.drv_cb; //delay 1 clock
	 end
     vif.drv_cb.dout       <= 8'd0;
	 vif.drv_cb.enable_out <= 1'b0;
	 repeat(req.delay)  @vif.drv_cb; //delay
  end
endtask

task tx_driver::debug_info();
  `uvm_info("tx_driver","send a transaction",UVM_LOW);
  `uvm_info("tx_driver",$sformatf("burst=%1b",req.burst),UVM_LOW);
  `uvm_info("tx_driver",$sformatf("number=%1d",req.number),UVM_LOW);
  `uvm_info("tx_driver",$sformatf("dat0=%h",req.dat[0]),UVM_LOW);
  `uvm_info("tx_driver",$sformatf("dat1=%h",req.dat[1]),UVM_LOW);
  `uvm_info("tx_driver",$sformatf("dat2=%h",req.dat[2]),UVM_LOW);
  `uvm_info("tx_driver",$sformatf("dat3=%h",req.dat[3]),UVM_LOW);
endtask
