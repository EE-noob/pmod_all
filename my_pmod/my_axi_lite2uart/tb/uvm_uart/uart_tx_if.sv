interface uart_tx_if(input clk, input rst_n);
//为了simtop例化方便起见，env的if的i其实是o
        
      //input
  logic                  en_i;               // enable signal
  logic                  stop_bits_i;        // number of required stop bits
  logic                  parity_bit_i;       // signal enabling/disabling parity bit
  logic                  parity_bit_mode_i;  // the mode of parity <0=odd>/<1=even>
  logic        [16-1:0]  baud_div_i;         // Baud rate value
  logic          [8-1:0] tx_data_i;          // the parallel incoming bits to be sent serially
  logic                  tx_send_i;          // signals the sending of a bit
  logic                  tx_ready_o;         // transmitter is ready to receive the next bits to send from the controller
  logic                  busy_o;             // indicates that the transmitter is busy


       clocking drv_cb @(posedge clk);
       default input #1 output #1;
        output en_i;               // enable signal
        output stop_bits_i;        // number of required stop bits
        output parity_bit_i;       // signal enabling/disabling parity bit
        output parity_bit_mode_i;  // the mode of parity <0=odd>/<1=even>
        output baud_div_i;         // Baud rate value
        output tx_data_i;          // the parallel incoming bits to be sent serially
        output tx_send_i;          // signals the sending of a bit
        
        input tx_ready_o;         // transmitter is ready to receive the next bits to send from the controller
        input busy_o;              // indicates that the transmitter is busy
     endclocking
           
    modport uart_tx_driver(clocking drv_cb);

endinterface: uart_tx_if

