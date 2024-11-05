 class uart_rx_agent extends uvm_agent;

    uart_rx_monitor    mon;

    extern function new(string name,uvm_component parent);
    extern virtual function void build_phase(uvm_phase phase);
    extern virtual function void connect_phase(uvm_phase phase);

    uvm_analysis_port#(transaction) ap;

    `uvm_component_utils_begin(uart_rx_agent)
        `uvm_field_object( mon, UVM_ALL_ON)
    `uvm_component_utils_end
      

endclass

function uart_rx_agent::new(string name,uvm_component parent);
   super.new(name,parent);
endfunction

function void uart_rx_agent::build_phase(uvm_phase phase);
  super.build_phase(phase);
  mon = uart_rx_monitor::type_id::create("mon",this);

endfunction     

function void uart_rx_agent::connect_phase(uvm_phase phase);
  super.connect_phase(phase);
  this.ap = mon.ap;
  $display("mon connected");
endfunction


