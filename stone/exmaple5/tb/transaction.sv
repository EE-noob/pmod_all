
class transaction extends uvm_sequence_item;

  //--define the number
  rand bit             burst   ; //0:single 1: burst
  rand bit[2:0]        number  ; //1-4
  rand bit[3:0][7:0]   dat     ; //0-255
  rand bit[3:0]        delay   ; //0-15

  //--register to factory
  `uvm_object_utils_begin( transaction )
 
    //note: afeter UVM_ALL_ON),no ; 
    `uvm_field_sarray_int( dat     ,UVM_ALL_ON)
 
    `uvm_field_int(burst   ,UVM_ALL_ON)
    `uvm_field_int(number  ,UVM_ALL_ON)
    `uvm_field_int(delay   ,UVM_ALL_ON)
  
  `uvm_object_utils_end

  //add the constraint
  constraint c_burst{
     burst dist { 0:/40,1:/60 };
     //0:40%, 1:60%
  }
  constraint c_number{
     solve burst before number;
     if( burst == 0 )
	   number == 1; //note: is == not =
	 else
       number dist { 2:/40, [3:4]:/60 }; //3+4 is 60%
  }
  //data is random, no need to constraint
  constraint c_dat{
     foreach( dat[i] ) 
	   dat[i] dist { [0:8'h54]:/50,[8'h55:8'hff]:/50};
  }

  constraint c_delay{
    delay dist { 0: /40 , [1:15]:/60 };
	//0:the critical timing.
  }

  function new(string name = "transaction" );
    super.new(name);
  endfunction:new

endclass

