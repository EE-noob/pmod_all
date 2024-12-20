  `ifndef _AXI_UART_H_
  `define _AXI_UART_H_

  // The receiver data register | UART_DATA_RX
  `define _UART_RBR_          3'd0
  // The transmitter register | UART_DATA_TX
  `define _UART_THR_          3'd0
  // The interrupt enable register | UART_IRQ_EN
  `define _UART_IER_          3'd1
  //  Custom baud divisor register
  `define _UART_BAUD_DIVISOR_ 3'd2

  /* LCR config bits */
  /* || 31 | 30.......5    |         4       |        3      |        2       |   1     |    0   || */
  /* ||     reserved       | parity_bit_mode | parity_bit_en | stop_bits(1/2) |  Word Length Set || */
  /*            0                    0                1               0           1          1   || = 0X0B */
  // Parity bit mode = <0 odd / 1 = even>
  // The Line Control register
  `define _UART_LCR_                3'd3
  `define _UART_CONFIG_DLAB_        7
  // 0=1bit / 1=2bits 各个配置参数在lcr的位置
  `define _UART_CONFIG_STOP_BITS_   2
  //LCR[3]
  `define _UART_CONFIG_PARITY_EN_   3
  // 0=odd / 1=even
  `define _UART_CONFIG_PARITY_MODE_ 4

  /* LSR config bits */
  /* || 31 | 30.......7    |         6         |            5             |   4...1    |     0       || */
  /* ||     reserved       | transmitter empty |  transmitter fifo empty  | reserved   | data ready  || */
  /* data ready = <0= All data is read / 1= Complete char has been received>       */
  /* transmiter empty = <0= THR contains data / 1=THR is empty> or above threshold */
  /* transmitter fifo empty = <0=contains data / 1=empty> */
  `define _UART_LSR_            3'd5
  `define _UART_LSR_TEMT_       6
  `define _UART_LSR_THRE_       5
  `define _UART_LSR_DATA_READY_ 0

  /* axi uart parameters */
  `define _DATA_WIDTH_UART_ 8
  `define _UART_BAUDRATE_INIT_ 115200
  `ifndef FPGA_FULL
    `define _UART_MAIN_CLOCK_FREQ_ 50_000_000//100_000_000
  `else
    `define _UART_MAIN_CLOCK_FREQ_ 50_000_000
  `endif
  `define _UART_BAUDRATE_DIV_INIT_ (`_UART_MAIN_CLOCK_FREQ_/`_UART_BAUDRATE_INIT_)

  `endif
