
class env extends uvm_env;

 `uvm_component_utils(env)
 
 //define components 
 tx_agent    tx_agent0   ;
 rx_agent    rx_agent0   ;
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
  tx_agent0 = tx_agent::type_id::create("tx_agent0", this);
  rx_agent0 = rx_agent::type_id::create("rx_agent0", this);
  scb0 = scoreboard::type_id::create("scb0",this);
  
endfunction

function void env::connect_phase(uvm_phase phase);
  super.connect_phase(phase);
  tx_agent0.ap.connect(scb0.exp_tx_ch);
  rx_agent0.ap.connect(scb0.act_rx_ch);
  `uvm_info("env","connect ok",UVM_LOW);
endfunction
