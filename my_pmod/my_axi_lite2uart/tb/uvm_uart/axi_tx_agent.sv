class axi_tx_agent extends uvm_agent;

    axi_tx_sequencer sqr;
    axi_tx_driver    drv;

    extern function new(string name,uvm_component parent);
    extern virtual function void build_phase(uvm_phase phase);
    extern virtual function void connect_phase(uvm_phase phase);

    uvm_analysis_port#(transaction) ap;

    `uvm_component_utils_begin(axi_tx_agent)
      `uvm_field_object( sqr, UVM_ALL_ON)
      `uvm_field_object( drv, UVM_ALL_ON)
    `uvm_component_utils_end

endclass

function axi_tx_agent::new(string name,uvm_component parent);
   super.new(name,parent);
endfunction

function void axi_tx_agent::build_phase(uvm_phase phase);
  super.build_phase(phase);
  sqr = axi_tx_sequencer::type_id::create("sqr",this);
  drv = axi_tx_driver::type_id::create("drv",this);

endfunction     

function void axi_tx_agent::connect_phase(uvm_phase phase);
  super.connect_phase(phase);
  drv.seq_item_port.connect(sqr.seq_item_export);
  this.ap = drv.ap;
  `uvm_info("axi_tx_agent","connect ok",UVM_LOW);
endfunction

