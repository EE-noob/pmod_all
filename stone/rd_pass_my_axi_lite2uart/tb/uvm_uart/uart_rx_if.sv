interface uart_rx_if(input clk, input rst_n);

        
logic                  en_i;         // uart enable
logic                  stop_bits_i;  // uart stop bits <0=1bit>/<1=2bits>
logic                  parity_bit_i; // uart parity bit enable
logic  [16-1:0]        baud_div_i;   // baudrate freq_div value
logic  [8-1:0]         rx_data_o;    // rx data output
logic                  rx_valid_o;    // rx valid output

       clocking drv_cb @(posedge clk);
         default input #1 output #1;
        output en_i;        
        output stop_bits_i; 
        output parity_bit_i;
        output baud_div_i;  
        input rx_data_o;   
        input rx_valid_o;  
       endclocking
             
      modport rx_driver(clocking drv_cb);//在接口中使用modport结构能够将信号1、分组 ， 2、指定方向。

endinterface: uart_rx_if

