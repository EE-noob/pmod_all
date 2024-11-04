
class axi_rx_monitor extends uvm_monitor;
  virtual axi_rd_if vif;
  uvm_analysis_port #(transaction) ap;
  
  `uvm_component_utils(axi_rx_monitor)
  
   transaction req;

  extern function new(string name,uvm_component parent);
  extern virtual function void build_phase(uvm_phase phase);
  //extern virtual task configure_phase(uvm_phase phase);
  //extern virtual task pre_main_phase(uvm_phase phase);
  extern virtual task main_phase(uvm_phase phase);
  //extern virtual task run_phase(uvm_phase phase);
  extern task     monitor_bus();

  extern task     drive_ready();
  extern task     drive_rd();

  extern task     debug_info();
endclass

function axi_rx_monitor::new(string name,uvm_component parent);
  super.new(name,parent);
endfunction

function void axi_rx_monitor::build_phase(uvm_phase phase);
  super.build_phase(phase);
  //get vif from config_db( vif is a parameter of get function
  if( !uvm_config_db#(virtual axi_rd_if)::get(this,"","axi_rd_if",vif))
    `uvm_fatal("axi_rx_monitor","Error in getting interface");
  ap = new("ap",this);
  req = new();//?? 为什么调用一下super.new就行了，类型什么的怎么确定//答transaction req;已经声明了 //driver 不需要new req，因为req是在tc或者说sequence里面被实例化的，而monitor是直接从if得到的req的值，所以必须new一下以获得内存。
endfunction

task axi_rx_monitor::main_phase(uvm_phase phase);
  //super.main_phase(phase);
 
  fork
    while(1) begin
    monitor_bus();
  end
  while (1) begin
    drive_ready();
  end

  while (1) begin
    drive_rd();
  end
 
  
  join  
 
    ap.write( req );
	debug_info();
    //seq_item_port.item_done();
  
endtask

task axi_rx_monitor::monitor_bus();
  //wait( vif.drv_cb.enable_in == 1'b1 ); 


    while(1) begin
      @vif.mon_cb;
    if( vif.mon_cb.s_axi_rvalid == 1'b1 && vif.mon_cb.s_axi_rready) break;
    end//wait for 

    req.dat= vif.drv_cb.s_axi_rdata;
    //     req.dat[req.number] = vif.drv_cb.din;
    //   req.number++;
    //     @vif.drv_cb;
    // if( req.number == 1 ) 
    //   req.rwtype = 0;
    // else 
    // req.rwtype = 1;  
endtask

task axi_rx_monitor::drive_ready();
  //wait( vif.drv_cb.enable_in == 1'b1 ); 


    while(1) begin
      @vif.drv_cb;
    if( vif.drv_cb.s_axi_rvalid == 1'b1 ) break;
    end//wait for 
    vif.drv_cb.s_axi_rready<= 1'b1;
    @vif.drv_cb;

    if( vif.drv_cb.s_axi_rvalid == 1'b0 ) 
    vif.drv_cb.s_axi_rready<= 1'b0;
endtask

task axi_rx_monitor::drive_rd();
  //wait( vif.drv_cb.enable_in == 1'b1 ); 
    while(1) begin
      @vif.drv_cb;
    if( vif.drv_cb.uart_irq == 1'b1 ) break;
    end//wait for irq
    vif.drv_cb.s_axi_arvalid<= 1'b1;
    vif.drv_cb.s_axi_araddr<= 32'hffe8_0000;
    while(1) begin
      @vif.drv_cb;
    if( vif.drv_cb.s_axi_arready == 1'b1 ) break;
    end//wait for arready
    vif.drv_cb.s_axi_arvalid<= 1'b0;
    vif.drv_cb.s_axi_araddr<= 32'h0000_0000;
endtask


task axi_rx_monitor::debug_info();
  `uvm_info("axi_rx_monitor","get a transaction",UVM_LOW);
  `uvm_info("axi_rx_monitor",$sformatf("rwtype=%1b",req.rwtype),UVM_LOW);
  `uvm_info("axi_rx_monitor",$sformatf("number=%1d",req.number),UVM_LOW);
  `uvm_info("axi_rx_monitor",$sformatf("dat=%0h",req.dat),UVM_LOW);
endtask
