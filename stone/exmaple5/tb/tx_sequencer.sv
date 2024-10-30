
class tx_sequencer extends uvm_sequencer #(transaction);

  extern function new( string name,uvm_component parent);
  extern function void build_phase(uvm_phase phase);

  `uvm_component_utils(tx_sequencer)


endclass


function tx_sequencer::new(string name,uvm_component parent);
   super.new(name,parent);
endfunction


function void tx_sequencer::build_phase(uvm_phase phase);
   super.build_phase(phase);
endfunction

