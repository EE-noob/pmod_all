
class uart_tx_sequencer extends uvm_sequencer #(transaction);

  extern function new( string name,uvm_component parent);
  extern function void build_phase(uvm_phase phase);

  `uvm_component_utils(uart_tx_sequencer)


endclass


function uart_tx_sequencer::new(string name,uvm_component parent);
   super.new(name,parent);
endfunction


function void uart_tx_sequencer::build_phase(uvm_phase phase);
   super.build_phase(phase);
endfunction
