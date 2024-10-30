class tx_sequence extends uvm_sequence #(transaction);
  `uvm_object_utils(tx_sequence)
  
  transaction tr;
  bit mode; //0:random : 1 fix
  bit             fix_burst   ; //0:single 1: burst
  bit[2:0]        fix_number  ; //1-4
  bit[3:0][7:0]   fix_dat     ; //0-255
  bit[3:0]        fix_delay   ; //0-15

  function new(string name = "tx_sequence");
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
 

  function set_mode(bit mod,bit burst, bit[2:0] number,bit[3:0][7:0] dat, bit[3:0] delay);
     mode       = mod;
     fix_burst  = burst;
	 fix_number = number;
	 fix_dat[0] = dat[0];
	 fix_dat[1] = dat[1];
	 fix_dat[2] = dat[2];
	 fix_dat[3] = dat[3];
	 fix_delay  = delay ;
  endfunction

  function set_special();
    if( mode == 1 ) begin
      tr.burst  = fix_burst;
	  tr.number = fix_number;
	  tr.dat[0] = fix_dat[0];
	  tr.dat[1] = fix_dat[1];
	  tr.dat[2] = fix_dat[2];
	  tr.dat[3] = fix_dat[3];
      tr.delay  = fix_delay;
	end
  endfunction
endclass

