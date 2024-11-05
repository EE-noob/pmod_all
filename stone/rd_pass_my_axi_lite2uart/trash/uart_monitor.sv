
class uart_monitor extends uvm_monitor;
  virtual rx_if vif;
  uvm_analysis_port #(transaction) ap;
  
  `uvm_component_utils(uart_monitor)
  
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

function uart_monitor::new(string name,uvm_component parent);
  super.new(name,parent);
endfunction

function void uart_monitor::build_phase(uvm_phase phase);
  super.build_phase(phase);
  //get vif from config_db( vif is a parameter of get function
  if( !uvm_config_db#(virtual rx_if)::get(this,"","rx_if",vif))
    `uvm_fatal("uart_monitor","Error in getting interface");
  ap = new("ap",this);
  req = new();//?? 为什么调用一下super.new就行了，类型什么的怎么确定//driver 不需要new req，因为req是在tc或者说sequence里面被实例化的，而monitor是直接从if得到的req的值，所以必须new一下以获得内存。
endfunction

task uart_monitor::main_phase(uvm_phase phase);
  //super.main_phase(phase);
  while(1) begin
    monitor_bus();
    ap.write( req );
	debug_info();
    //seq_item_port.item_done();
  end
endtask

task uart_monitor::monitor_bus();
  //wait( vif.drv_cb.enable_in == 1'b1 ); 
  while(1) begin
  wait(vif.drv_cb.uart_tx==0)  
    @vif.drv_cb;
	if( vif.drv_cb.enable_in == 1'b1 ) break;
  end//wait for start bit
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

task uart_monitor::monitor_and_send ();
	count = 0;
	count1 = 1;

	for(int i=0;i<LT;i++) 
	begin
    	wait(!`MONUART_IF.Tx);  // waiting for start bit
		cfg_settings();
		repeat(cfg.baud_rate/2)@(posedge vifuart.PCLK);
		repeat(cfg.frame_len) 
		begin
			repeat(cfg.baud_rate)@(posedge vifuart.PCLK);
			receive_reg[count]  = `MONUART_IF.Tx;
			count=count+1;
		end		
		if(parity_en)  // if parity is enabled
		begin
			repeat(cfg.baud_rate)@(posedge vifuart.PCLK); // wait for parity bit
		end
		repeat(cfg.n_sb+1)
		begin
			repeat(cfg.baud_rate)@(posedge vifuart.PCLK); // wait for parity bit
		end
	end
	trans_collected.transmitter_reg=receive_reg;
	item_collected_port_mon.write(trans_collected); // It sends the transaction non-blocking and it sends to all connected export 
	receive_reg = 32'hx;
endtask

task uart_driver::debug_info();
  `uvm_info("uart_driver","send a transaction",UVM_LOW);
  `uvm_info("uart_driver",$sformatf("rwtype=%1b",req.burst),UVM_LOW);
  `uvm_info("uart_driver",$sformatf("number=%1d",req.number),UVM_LOW);
  `uvm_info("uart_driver",$sformatf("dat_length=%1d",req.number),UVM_LOW);
  `uvm_info("uart_driver",$sformatf("dat0=0x %h",req.dat[0]),UVM_LOW);
  `uvm_info("uart_driver",$sformatf("dat1=0x %h",req.dat[1]),UVM_LOW);
  `uvm_info("uart_driver",$sformatf("dat2=0x %h",req.dat[2]),UVM_LOW);
  `uvm_info("uart_driver",$sformatf("dat3=0x %h",req.dat[3]),UVM_LOW);
endtask
