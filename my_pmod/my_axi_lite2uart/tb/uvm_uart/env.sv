
class env extends uvm_env;

 `uvm_component_utils(env)
 
 //define components 
 uart_tx_agent    uart_tx_agent0   ;
 axi_rx_agent    axi_rx_agent0   ;
 scoreboard  scb0        ;

 extern function new (string name, uvm_component parent=null);
 extern function void build_phase(uvm_phase phase); 
 extern function void connect_phase(uvm_phase phase);

endclass

function env::new (string name, uvm_component parent=null);
   super.new(name, parent);
endfunction

 function void env::build_phase(uvm_phase phase); 
  super.build_phase(phase);
  uart_tx_agent0 = uart_tx_agent::type_id::create("uart_tx_agent0", this);
  axi_rx_agent0 = axi_rx_agent::type_id::create("axi_rx_agent0", this);
  scb0 = scoreboard::type_id::create("scb0",this);
  
endfunction

function void env::connect_phase(uvm_phase phase);
  super.connect_phase(phase);
  uart_tx_agent0.ap.connect(scb0.exp_tx_ch);
  axi_rx_agent0.ap.connect(scb0.act_rx_ch);
  `uvm_info("env","connect ok",UVM_LOW);
endfunction
