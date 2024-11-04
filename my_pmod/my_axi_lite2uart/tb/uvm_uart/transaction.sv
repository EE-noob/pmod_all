
class transaction extends uvm_sequence_item;

  //--define the number
  rand bit             rwtype   ; //0:read 1: write 
  rand bit[2:0]        number  ; //1-4
 
  rand bit[3:0][7:0]    dat     ; //0-255
  rand bit[3:0]        delay   ; //0-15

  bit[31:0]       baud_rate;
  bit[31:0]       clock_freq ;
  bit             parity_bit_en;      
  bit             parity_bit_mode; 
 
  //--register to factory
  `uvm_object_utils_begin( transaction )
 
    //note: afeter UVM_ALL_ON),no ; 
    `uvm_field_sarray_int( dat     ,UVM_ALL_ON)
    `uvm_field_int(rwtype   ,UVM_ALL_ON)
    `uvm_field_int(number  ,UVM_ALL_ON)
    `uvm_field_int(delay   ,UVM_ALL_ON)
  
  `uvm_field_sarray_int( baud_rate  ,UVM_ALL_ON)
  `uvm_field_int(        clock_freq    ,UVM_ALL_ON)
  `uvm_field_int(        parity_bit_en    ,UVM_ALL_ON)
  `uvm_field_int(        parity_bit_mode  ,UVM_ALL_ON)
  `uvm_object_utils_end

  //add the constraint
  constraint c_rwtype{
     rwtype dist { 0:/40,1:/60 };
     //0:40%, 1:60%
  }
  constraint c_number{
     solve rwtype before number; //先rwtype后number
     if( rwtype == 0 )
	   number == 1; //note: is == not =
	 else
       number dist { 2:/40, [3:4]:/60 }; 
  }
  //data is random, no need to constraint
  constraint c_dat{
    dat dist  { [0:32'h10_00_00_00]:/50,[32'h10_00_00_01:32'hffff_ffff]:/50};
    //  foreach( dat[i] ) 
	  //  dat[i] dist { [0:8'h54]:/50,[8'h55:8'hff]:/50};
  }

  constraint c_delay{
    delay dist { 0: /40 , [1:15]:/60 };
	//0:the critical timing.
  }

  function new(string name = "transaction" );
    super.new(name);
  endfunction:new

endclass

