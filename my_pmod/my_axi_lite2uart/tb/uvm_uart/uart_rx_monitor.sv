
class uart_rx_monitor extends uvm_monitor;
  virtual uart_rx_if vif;
  uvm_analysis_port #(transaction) ap;
  
  `uvm_component_utils(uart_rx_monitor)
  
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

function uart_rx_monitor::new(string name,uvm_component parent);
  super.new(name,parent);
endfunction

function void uart_rx_monitor::build_phase(uvm_phase phase);
  super.build_phase(phase);
  //get vif from config_db( vif is a parameter of get function
  if( !uvm_config_db#(virtual uart_rx_if)::get(this,"","uart_rx_if",vif))
    `uvm_fatal("uart_rx_monitor","Error in getting interface");
  ap = new("ap",this);
  req = new();//?? 为什么调用一下super.new就行了，类型什么的怎么确定//答transaction req;已经声明了 //driver 不需要new req，因为req是在tc或者说sequence里面被实例化的，而monitor是直接从if得到的req的值，所以必须new一下以获得内存。
  req.number = 0;
endfunction

task uart_rx_monitor::main_phase(uvm_phase phase);
  //super.main_phase(phase);
 
  fork
    while(1) begin
    monitor_bus();
    ap.write( req );
  end
  // while (1) begin
  //   drive_ready();
  // end

  // while (1) begin
  //   drive_rd();
  // end
 
  
  join  
 

	
    //seq_item_port.item_done();
  
endtask

task uart_rx_monitor::monitor_bus();
  //wait( vif.drv_cb.enable_in == 1'b1 ); 


    while(1) begin
      @vif.mon_cb;
    if( vif.mon_cb.rx_valid_o  ) break;
    end//wait for 

    //req.dat= vif.drv_cb.s_uart_rdata;
        req.dat[req.number] = vif.drv_cb.rx_data_o[7:0];
        debug_info();
        req.number++;
        @vif.drv_cb;
    // if( req.number == 1 ) 
    //   req.rwtype = 0;
    // else 
    req.rwtype = 0;  
endtask

task uart_rx_monitor::drive_ready();
  // //wait( vif.drv_cb.enable_in == 1'b1 ); 


  //   while(1) begin
  //     @vif.drv_cb;
  //   if( vif.drv_cb.s_uart_rvalid == 1'b1 ) break;
  //   end//wait for 
  //   vif.drv_cb.s_uart_rready<= 1'b1;
  //   @vif.drv_cb;

  //   if( vif.drv_cb.s_uart_rvalid == 1'b0 ) 
  //   vif.drv_cb.s_uart_rready<= 1'b0;
endtask

task uart_rx_monitor::drive_rd();
vif.drv_cb.en_i<=1;
vif.drv_cb.baud_div_i <= req.clock_freq/req.baud_rate;
vif.drv_cb.parity_bit_i <=req.parity_bit_en;   
//vif.drv_cb.parity_bit_mode_i<=req.parity_bit_mode;
endtask


task uart_rx_monitor::debug_info();
  `uvm_info("uart_rx_monitor","get a transaction",UVM_LOW);
  `uvm_info("uart_rx_monitor",$sformatf("rwtype=%1b",req.rwtype),UVM_LOW);
  //`uvm_info("uart_rx_monitor",$sformatf("number=%1d",req.number),UVM_LOW);
  `uvm_info("uart_rx_monitor",$sformatf("dat_out[%0d]=%0h",req.number,req.dat[req.number]),UVM_LOW);
// `uvm_info("uart_tx_driver",$sformatf("dat0=0x %h",req.dat[0]),UVM_LOW);
// `uvm_info("uart_tx_driver",$sformatf("dat1=0x %h",req.dat[1]),UVM_LOW);
// `uvm_info("uart_tx_driver",$sformatf("dat2=0x %h",req.dat[2]),UVM_LOW);
// `uvm_info("uart_tx_driver",$sformatf("dat3=0x %h",req.dat[3]),UVM_LOW);
endtask
