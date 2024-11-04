`uvm_analysis_imp_decl(_exp_tx_ch)
`uvm_analysis_imp_decl(_act_rx_ch)

class scoreboard extends uvm_scoreboard;
  `uvm_component_utils(scoreboard)

  uvm_analysis_imp_exp_tx_ch #(transaction,scoreboard) exp_tx_ch;
  uvm_analysis_imp_act_rx_ch #(transaction,scoreboard) act_rx_ch;
    
  uvm_tlm_analysis_fifo #(transaction) exp_tx_fifo;
  uvm_tlm_analysis_fifo #(transaction) act_rx_fifo;

  transaction exp_tx_tr;
  transaction act_rx_tr;
  bit result;

  extern function new (string name,uvm_component parent);
  extern function write_exp_tx_ch(transaction tr);  //function not task(task is warning)
  extern function write_act_rx_ch(transaction tr);

  extern task prepare_exp_act();

  extern task compare_exp_act();
  extern task main_phase(uvm_phase phase);
  extern task post_main_phase(uvm_phase phase);
  //extern task run_phase(uvm_phase phase);


endclass
 
function scoreboard::new (string name,uvm_component parent);
    super.new(name,parent);
	exp_tx_ch = new("exp_tx_ch",this);
	act_rx_ch = new("act_rx_ch",this);

	exp_tx_fifo = new("exp_tx_fifo",this);
	act_rx_fifo = new("act_rx_fifo",this);

 endfunction

function scoreboard::write_exp_tx_ch(transaction tr);
   exp_tx_fifo.write(tr);
   `uvm_info(get_type_name(),"wirte tr to exp fifo.", UVM_LOW);
   //tr.print();//for debug
endfunction

function scoreboard::write_act_rx_ch(transaction tr);
   act_rx_fifo.write(tr);
   `uvm_info(get_type_name(),"wirte tr to act fifo.", UVM_LOW);
   //tr.print();//for debug
endfunction 

task scoreboard::main_phase(uvm_phase phase);
  $display("*****main start******");
  prepare_exp_act();
  $display("*****main end******");
endtask

task scoreboard::post_main_phase(uvm_phase phase);
  compare_exp_act();
endtask

task scoreboard::prepare_exp_act();
   $display("*****prepare_exp_act******");
  while(1) begin
     exp_tx_tr = new(); //need
     act_rx_tr = new();
     exp_tx_fifo.get(exp_tx_tr);
     act_rx_fifo.get(act_rx_tr);

	 act_rx_tr.delay = exp_tx_tr.delay; //do not compare delay
   act_rx_tr.baud_rate = exp_tx_tr.baud_rate;
   act_rx_tr.clock_freq = exp_tx_tr.clock_freq;
   act_rx_tr.parity_bit_en  = exp_tx_tr.parity_bit_en ;
   act_rx_tr.parity_bit_mode = exp_tx_tr.parity_bit_mode;

     for(int i=exp_tx_tr.number;i<4;i++) begin
         act_rx_tr.dat[i] = 0;
         exp_tx_tr.dat[i] = 0; // not used data do not compare
     end
    end

    $display("actual tran is");
        act_rx_tr.print();
endtask

task scoreboard::compare_exp_act();

   
	 result = exp_tx_tr.compare(act_rx_tr);
   
     if(result) begin
        `uvm_info(get_type_name(),"compare SUCCESSFULLY.", UVM_LOW);
        $display("expect tran is");
        exp_tx_tr.print();
        $display("actual tran is");
        act_rx_tr.print();
      end
      else begin
        `uvm_error(get_type_name(),"compare FAILED.");
        $display("expect tran is");
        exp_tx_tr.print();
        $display("actual tran is");
        act_rx_tr.print();
      end

endtask

