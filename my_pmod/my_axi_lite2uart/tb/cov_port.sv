
module cov_port( rx_if vif );

  logic       burst  ;
  logic[2:0]  cnt;
  logic[2:0]  number;

initial begin
  #200;
  forever begin
    
	while(1) begin
      @vif.drv_cb;
      if( vif.drv_cb.enable_in == 1'b1 ) break;
    end//wait for 
  
    cnt = 0;
    while(vif.drv_cb.enable_in == 1'b1 ) begin
        //req.dat[req.number] = vif.drv_cb.din;
        cnt++;
        @vif.drv_cb;
    end

    number = cnt;
	if( number == 1 ) 
       burst = 0;
    else 
   	   burst = 1;
  end

end

//covergoup vif_port_edge @(posedge vif.clk );
covergroup vif_port_cov;
  burst_x: coverpoint burst{
    bins bust_cov = {0,1};  
  }

  num_x: coverpoint number{
    //bins number_cov = {1,2,3,4};
    bins number_cov1 = {1};
    bins number_cov2 = {2};
    bins number_cov3 = {3};
    bins number_cov4 = {4};
  }

  num_change_x: coverpoint number{
    //bins number_chg_cov = (1=>2,3,4),(2,3,4=>1);
    bins number_chg_cov1 = (1=>2);
    bins number_chg_cov2 = (1=>3);
    bins number_chg_cov3 = (1=>4);
    bins number_chg_cov4 = (2=>1);
    bins number_chg_cov5 = (3=>1);
    bins number_chg_cov6 = (4=>1);
  }
  

endgroup


initial begin

  vif_port_cov cov = new();
  cov.stop(); // reset do not sample
  #200;
  cov.start();
  forever begin
     @vif.drv_cb;
     cov.sample();
  end

end

endmodule
