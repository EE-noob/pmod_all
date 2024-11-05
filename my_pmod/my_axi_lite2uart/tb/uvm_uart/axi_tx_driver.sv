
class axi_tx_driver extends uvm_driver #(transaction);//参数 transaction的名字由继承uvm_sequence_item的transaction具体名字决定
 
  virtual axi_wr_if vif;  //interface to connect the DUV //connerct to simtop/if
  uvm_analysis_port #(transaction) ap;//ap to connect to reference or socoreboard
  //register to uvm

  //用这个宏注册的时候注意不要加分号
  `uvm_component_utils(axi_tx_driver)

  transaction req;//transaction define for internal use
  

  //外部声明extern 使得 函数可以在class外部声明
  extern function new(string name,uvm_component parent);
  extern virtual function void build_phase(uvm_phase phase);
  extern virtual task pre_configure_phase(uvm_phase phase);
  extern virtual task configure_phase(uvm_phase phase);
  extern virtual task main_phase(uvm_phase phase);
  extern         task drive_bus();
  extern         task debug_info();

endclass

function axi_tx_driver::new(string name,uvm_component parent);
  super.new(name,parent);//super 关键字用于指代当前类的直接父类（基类）。当一个类继承自另一个类时，可以使用 super 关键字来访问父类中的方法或属性。它相当于告诉程序“调用父类的这个方法或属性”。
  //initial variables here
endfunction

function void axi_tx_driver::build_phase(uvm_phase phase);
  `uvm_info("axi_tx_driver","build phase",UVM_LOW);
  super.build_phase(phase);//调用父类的 build_phase 方法，利用父类中的构建操作在子类 axi_tx_driver 的 build_phase 中执行。
  //get vif from config_db which is done when initial in simtop module
  if( !uvm_config_db#(virtual axi_wr_if)::get(this,"","axi_wr_if",vif))
    `uvm_fatal("axi_tx_driver","Error in getting interface");
//  使用 uvm_config_db 数据库的 get 方法尝试获取名为 "tx_if" 的虚拟接口（类型为 virtual tx_if）。
// 第一个参数 this 表示当前作用域为 tx_driver。
// 第二个参数 "" 表示从顶层作用域获取配置。
// 第三个参数 "tx_if" 是在配置数据库中注册该接口的名称。
// 第四个参数 vif 是用于存储获取到的接口句柄的变量。
// 如果获取失败，则返回 false，触发 uvm_fatal 语句，输出错误消息并终止仿真。这一行确保接口在仿真中被正确绑定。
  //ap send transaction to refrence or soreboard
  ap = new("ap",this);
endfunction

task axi_tx_driver::pre_configure_phase(uvm_phase phase);
  //initial the output port
  `uvm_info("axi_tx_driver","pre configure phase",UVM_LOW);
  super.pre_configure_phase(phase);//常用套路。重载基类的时候先把基类的方法调用一遍，再进行自己的流程
  // vif.drv_cb.dout       <= 8'd0;  //only use <=, if = compiler error
  // vif.drv_cb.enable_out <= 1'b0;
  vif.drv_cb.s_axi_awaddr<=    'b0;
  vif.drv_cb.s_axi_awvalid<=   'b0;
  vif.drv_cb.s_axi_wdata<=     'b0;
  vif.drv_cb.s_axi_wstrb<=     'b0;
  vif.drv_cb.s_axi_wvalid<=    'b0;
  vif.drv_cb.s_axi_bready<=    'b0;
endtask

task axi_tx_driver::configure_phase(uvm_phase phase);
  `uvm_info("axi_tx_driver","configure phase",UVM_LOW);
  super.configure_phase(phase);
  
endtask


task axi_tx_driver::main_phase(uvm_phase phase);
  `uvm_info("axi_tx_driver","main phase",UVM_LOW);
  super.main_phase(phase);
  while(1) begin
    `uvm_info("axi_tx_driver","main phase get xact before",UVM_LOW);
    seq_item_port.get_next_item(req);
    `uvm_info("axi_tx_driver","main phase get xact after",UVM_LOW);
    drive_bus();
	  //debug_info();
    ap.write( req );
    seq_item_port.item_done();
  end
endtask

task axi_tx_driver::drive_bus();
  int i=0;
  int idle=1;
  //vif.drv_cb.en_i<=1;
  
  //single trasnfer
  if( req.rwtype == 1 ) begin //axi wr ,axi -> uart
    while( i<req.number) begin
      vif.drv_cb.s_axi_awvalid<=1;
      vif.drv_cb.s_axi_awaddr<=req.addr ;
      vif.drv_cb.s_axi_wvalid<=1;
      vif.drv_cb.s_axi_wstrb<=req.strb;
      case(req.strb)
      4'b0001:
      vif.drv_cb.s_axi_wdata <={{24{1'b0}},req.dat[i]};
      4'b0010:
      vif.drv_cb.s_axi_wdata <={{16 {1'b0}},req.dat[i],{8{1'b0}}};
      4'b0100:
      vif.drv_cb.s_axi_wdata <={{8 {1'b0}},req.dat[i],{16{1'b0}}};
      4'b1000:
      vif.drv_cb.s_axi_wdata <={req.dat[i],{24{1'b0}}};
      default:
        vif.drv_cb.s_axi_wdata <={{4{req.dat[i] }}};
      endcase
      `uvm_info("axi_tx_driver","send a transaction",UVM_LOW);
      
      `uvm_info("axi_tx_driver",$sformatf("rwtype=%1b",req.rwtype),UVM_LOW);
        //`uvm_info("axi_tx_driver",$sformatf("number=%1d",req.number),UVM_LOW);
      `uvm_info("axi_tx_driver",$sformatf("wstrb=%0b",req.strb),UVM_LOW);
      `uvm_info("axi_tx_driver",$sformatf("dat_in[%0d]=0x %0h",i,req.dat[i]),UVM_LOW);
      //@vif.drv_cb; //delay 1 clock
      while(1) begin
        @vif.mon_cb;
        vif.drv_cb.s_axi_awvalid<=0;
        vif.drv_cb.s_axi_awaddr<='b0 ;
      if(  vif.mon_cb.s_axi_wready) break;
      end//wait for 
      vif.drv_cb.s_axi_awvalid<='b0;
      vif.drv_cb.s_axi_awaddr<= 'b0;
      vif.drv_cb.s_axi_wvalid<='b0;
      vif.drv_cb.s_axi_wdata <= 'b0;

      i=#1 i+1;//必须#1 因为drvcb也是#1

    end

  //    @vif.drv_cb; //use clocking block to align with clock.
  //    vif.drv_cb.dout       <= req.dat;
	//  vif.drv_cb.enable_out <= 1'b1;
  //    @vif.drv_cb; //delay 1 clock
  //    vif.drv_cb.dout       <= 8'd0;
	//  vif.drv_cb.enable_out <= 1'b0;
  end




  else
           begin // //axi rd ,uart->axi
      //     //@vif.drv_cb; //use clocking bloc k to align with clock.
      //   while( i<req.number) begin
      //     //while( i<32) begin  
      // if(vif.mon_cb.tx_ready_o)
      //       idle=#1 idle+1;

      //     if(~vif.drv_cb.busy_o && idle>0)//tx_ready_o)
      //       begin
      //         vif.drv_cb.tx_data_i  <= req.dat[i];//req.dat[i+:8]; //req.dat for debug

      //         //para
      //         vif.drv_cb.baud_div_i <= req.clock_freq/req.baud_rate;
      //         vif.drv_cb.parity_bit_i <=req.parity_bit_en;   
      //         vif.drv_cb.parity_bit_mode_i<=req.parity_bit_mode;
      //         //send bit
      //         vif.drv_cb.tx_send_i <= 1'b1;
      //         `uvm_info("axi_tx_driver","send a transaction",UVM_LOW);
      //         `uvm_info("axi_tx_driver",$sformatf("rwtype=%1b",req.rwtype),UVM_LOW);
      //         //`uvm_info("axi_tx_driver",$sformatf("number=%1d",req.number),UVM_LOW);
      //         //`uvm_info("axi_tx_driver",$sformatf("dat_length=%1d",req.number),UVM_LOW);
      //         `uvm_info("axi_tx_driver",$sformatf("dat_in[%0d]=0x %0h",i,req.dat[i]),UVM_LOW);
      //         @vif.drv_cb; //delay 1 clock
      //         i=#1 i+1;//不能直接延时固定值应该先@clk，因为vif总是在时钟后激励，用只用while i阻塞赋值可能会早于vif的变化
      //         idle=#1 idle-1;
      //       end
      //       else
      //         begin
      //           vif.drv_cb.tx_send_i <= 1'b0;
      //           @vif.drv_cb; //delay 1 clock
      //         end
          
      //   end
      //   vif.drv_cb.tx_data_i     <= 8'd0;
      //   vif.drv_cb.tx_send_i     <= 1'b0;
      //   repeat(req.delay)  @vif.drv_cb; //delay
 end
endtask

task axi_tx_driver::debug_info();
  `uvm_info("axi_tx_driver","send a transaction",UVM_LOW);
  `uvm_info("axi_tx_driver",$sformatf("rwtype=%1b",req.rwtype),UVM_LOW);
  `uvm_info("axi_tx_driver",$sformatf("number=%1d",req.number),UVM_LOW);
  //`uvm_info("axi_tx_driver",$sformatf("dat_length=%1d",req.number),UVM_LOW);
  //`uvm_info("axi_tx_driver",$sformatf("dat=0x %0h",req.dat),UVM_LOW);
  `uvm_info("axi_tx_driver",$sformatf("dat0=0x %h",req.dat[0]),UVM_LOW);
  `uvm_info("axi_tx_driver",$sformatf("dat1=0x %h",req.dat[1]),UVM_LOW);
  `uvm_info("axi_tx_driver",$sformatf("dat2=0x %h",req.dat[2]),UVM_LOW);
  `uvm_info("axi_tx_driver",$sformatf("dat3=0x %h",req.dat[3]),UVM_LOW);
endtask
