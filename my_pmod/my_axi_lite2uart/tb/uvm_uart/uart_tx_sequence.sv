class uart_tx_sequence extends uvm_sequence #(transaction);
  `uvm_object_utils(uart_tx_sequence)
  
  transaction tr;
  bit mode; //0:random : 1 fix

  bit parity_bit_en;
  bit[31:0] baud_rate;
  bit[31:0] clock_freq;
  bit parity_bit_mode;

  bit             fix_rwtype   ; //0:r 1:w
  bit[2:0]        fix_number  ; //1-4
  bit[3:0] [7:0]       fix_dat     ; //0-255
  bit[3:0]        fix_delay   ; //0-15

  
  function new(string name = "uart_tx_sequence");
    super.new(name);
	mode = 0;
  endfunction
    
  virtual task body();
      `uvm_info("tx_seq","body in", UVM_LOW);
      tr = transaction::type_id::create("tr");
      start_item(tr);
      assert(tr.randomize() );
      //assert(tr.randomize() with {eff_cnt == cnt; } );
      `uvm_info("tx_seq","randomize", UVM_LOW);
       //tr.print();
       //if fix, then use the data from test
       set_special();
      `uvm_info("tx_seq","tr set special", UVM_LOW);
       //tr.print();
	   //send item to env->agent->drv
       finish_item(tr);
      `uvm_info("tx_seq","body finish", UVM_LOW);
  endtask
 

  function set_mode(bit mod,bit rwtype, bit[2:0] number,bit[3:0][7:0] dat, bit[3:0] delay
  ,  bit[31:0]  baud_rate_i,bit[31:0] clock_freq_i ,  bit  parity_bit_en_i,  bit  parity_bit_mode_i
 );
     mode       = mod;

    parity_bit_en   =parity_bit_en_i;
    baud_rate       =baud_rate_i;
    clock_freq      =clock_freq_i;
    parity_bit_mode =parity_bit_mode_i;

   fix_rwtype  = rwtype;
	 fix_number = number;
   fix_dat[0] = dat[0];
	 fix_dat[1] = dat[1];
	 fix_dat[2] = dat[2];
	 fix_dat[3] = dat[3];
	 fix_delay  = delay ;

  endfunction

  function set_special();

  begin
    
   tr.parity_bit_en   =parity_bit_en;
   tr.baud_rate       =baud_rate;
   tr.clock_freq      =clock_freq;
   tr.parity_bit_mode =parity_bit_mode;

    if( mode == 1 ) begin
      tr.rwtype  = fix_rwtype;
  tr.number = fix_number;
  tr.dat[0] = fix_dat[0];
  tr.dat[1] = fix_dat[1];
  tr.dat[2] = fix_dat[2];
  tr.dat[3] = fix_dat[3];
    tr.delay  = fix_delay;
end
  end

  endfunction
endclass

