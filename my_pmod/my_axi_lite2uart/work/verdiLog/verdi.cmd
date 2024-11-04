debImport "-sv" "-f" "rtl_list.f" "-f" "sim_list.f" "-rcFile" \
          "/home/ICer/dark.rc"
debLoadSimResult \
           /home/ICer/ic_prjs/pmod/my_pmod/my_axi_lite2uart/work/testname.fsdb
wvCreateWindow
srcHBSelect "simtop.uart_tx_simtop" -win $_nTrace1
srcSetScope -win $_nTrace1 "simtop.uart_tx_simtop" -delim "."
srcHBSelect "simtop.uart_tx_simtop" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "stop_bits_i" -line 38 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {29 47 4 9 20 3}
wvAddSignal -win $_nWave2 "simtop/uart_tx_simtop/DIV_SIZE"
wvAddSignal -win $_nWave2 "simtop/uart_tx_simtop/DATA_UART"
wvAddSignal -win $_nWave2 "/simtop/uart_tx_simtop/clk_i" \
           "/simtop/uart_tx_simtop/rstn_i" "/simtop/uart_tx_simtop/en_i" \
           "/simtop/uart_tx_simtop/stop_bits_i" \
           "/simtop/uart_tx_simtop/parity_bit_i" \
           "/simtop/uart_tx_simtop/parity_bit_mode_i" \
           "/simtop/uart_tx_simtop/baud_div_i\[15:0\]" \
           "/simtop/uart_tx_simtop/tx_o" \
           "/simtop/uart_tx_simtop/tx_data_i\[7:0\]" \
           "/simtop/uart_tx_simtop/tx_send_i" \
           "/simtop/uart_tx_simtop/tx_ready_o" "/simtop/uart_tx_simtop/busy_o"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvScrollUp -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
srcDeselectAll -win $_nTrace1
srcHBSelect "simtop.uart_tx_sigs0" -win $_nTrace1
srcSetScope -win $_nTrace1 "simtop.uart_tx_sigs0" -delim "."
srcHBSelect "simtop.uart_tx_sigs0" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 27 -pos 3 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvAddSignal -win $_nWave2 "/simtop/uart_tx_sigs0/mon_cb/i\[31:0\]"
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 105375.809935 -snap {("G1" 10)}
srcActiveTrace "simtop.uart_tx_sigs0.mon_cb.i\[31:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 630 -TraceValue \
           00000000000000000000000000000000
srcDeselectAll -win $_nTrace1
srcHBSelect "simtop.uart_tx_sigs0.mon_cb" -win $_nTrace1
srcHBSelect "simtop.uart_tx_sigs0.drv_cb" -win $_nTrace1
srcHBSelect "simtop.uart_tx_sigs0.drv_cb" -win $_nTrace1
srcSetScope -win $_nTrace1 "simtop.uart_tx_sigs0.drv_cb" -delim "."
srcHBSelect "simtop.uart_tx_sigs0.drv_cb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 44 -pos 3 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 "/simtop/uart_tx_sigs0/drv_cb/i\[31:0\]"
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 720.518359 37466.954644
wvZoom -win $_nWave2 773.449632 1408.624913
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -word -line 43 -pos 3 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 48 -pos 3 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 "/simtop/uart_tx_sigs0/drv_cb/busy_o"
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 1301.565431 -snap {("G1" 11)}
wvZoom -win $_nWave2 30.268964 726.455124
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 7)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 37555.692466 -snap {("G1" 10)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 1194.350644 -snap {("G1" 13)}
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetOptions -win $_nWave2 -hierName on
wvSetCursor -win $_nWave2 40442.039856 -snap {("G1" 10)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 298.587661 1791.525966
wvZoom -win $_nWave2 528.698033 675.435081
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 356.626751 1230.711925
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 452.988296 973.664498
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetCursor -win $_nWave2 611.168408 -snap {("G1" 13)}
wvSetCursor -win $_nWave2 649.938043 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 610.393015 -snap {("G1" 13)}
wvSetCursor -win $_nWave2 649.162651 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 612.331497 -snap {("G1" 13)}
wvSetCursor -win $_nWave2 630.165529 -snap {("G1" 15)}
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvZoom -win $_nWave2 612.719193 687.156893
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 650.104323 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 629.707395 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 649.993470 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 629.707395 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 649.439205 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 655.868672 -snap {("G1" 11)}
srcActiveTrace "simtop.uart_tx_sigs0.drv_cb.busy_o" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 650 -TraceValue 1
wvSetCursor -win $_nWave2 655.646966 -snap {("G1" 11)}
srcActiveTrace "simtop.uart_tx_sigs0.drv_cb.busy_o" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 650 -TraceValue 1
wvSetCursor -win $_nWave2 655.646966 -snap {("G1" 11)}
srcActiveTrace "simtop.uart_tx_sigs0.drv_cb.busy_o" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 650 -TraceValue 1
wvSetCursor -win $_nWave2 655.646966 -snap {("G1" 11)}
srcActiveTrace "simtop.uart_tx_sigs0.drv_cb.busy_o" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 650 -TraceValue 1
wvSetCursor -win $_nWave2 655.646966 -snap {("G1" 11)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 7
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 5
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvZoom -win $_nWave2 411.485840 1277.025021
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 7
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000000 122068.141474
srcDeselectAll -win $_nTrace1
srcHBSelect "simtop.uart_tx_simtop" -win $_nTrace1
srcSetScope -win $_nTrace1 "simtop.uart_tx_simtop" -delim "."
srcHBSelect "simtop.uart_tx_simtop" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {119 119 4 12 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "bitcount_int" -line 119 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "bitcount_int" -line 119 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {119 119 4 11 1 1}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvVerilogExpression -win $_nWave2 -noadd "\\bitcount_int\[3:0\]==-1 " \
           "\"/simtop/uart_tx_simtop/bitcount_int\[3:0\]\"==-1"
wvAddSignal -win $_nWave2 "/\\bitcount_int\[3:0\]==-1 "
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvAddSignal -win $_nWave2 "simtop/uart_tx_simtop/DATA_UART"
wvAddSignal -win $_nWave2 "/simtop/uart_tx_simtop/bitcount_int\[3:0\]"
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoom -win $_nWave2 2155237.377543 6978146.194424
wvZoom -win $_nWave2 39502.603861 247789.060584
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcHBSelect "simtop.uart_tx_sigs0" -win $_nTrace1
srcSetScope -win $_nTrace1 "simtop.uart_tx_sigs0" -delim "."
srcHBSelect "simtop.uart_tx_sigs0" -win $_nTrace1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 91923.171525 -snap {("G1" 15)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 86385.373339 106392.039696
wvZoom -win $_nWave2 95576.820206 96992.034878
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectGroup -win $_nWave2 {G2}
wvScrollUp -win $_nWave2 5
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvScrollDown -win $_nWave2 2
wvScrollUp -win $_nWave2 3
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 95708.669065 -snap {("G1" 7)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 584.354142 662.408666
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 7265.627720 322801.460113
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 49834.829290 310196.386398
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetCursor -win $_nWave2 107417.499790 -snap {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetCursor -win $_nWave2 38603.163987 -snap {("G1" 9)}
srcActiveTrace "simtop.uart_tx_simtop.tx_o" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 35430 -TraceValue 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "tx" -line 232 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvAddSignal -win $_nWave2 "/simtop/uart_tx_simtop/tx"
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetCursor -win $_nWave2 38603.163987 -snap {("G1" 9)}
srcActiveTrace "simtop.uart_tx_simtop.tx" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 35430 -TraceValue 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "bitcount_int" -line 119 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "bitcount_int" -line 119 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {119 119 4 11 1 1}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvVerilogExpression -win $_nWave2 -noadd "\\bitcount_int\[3:0\]==-1 " \
           "\"/simtop/uart_tx_simtop/bitcount_int\[3:0\]\"==-1"
wvAddSignal -win $_nWave2 "/\\bitcount_int\[3:0\]==-1 "
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvAddSignal -win $_nWave2 "simtop/uart_tx_simtop/DATA_UART"
wvAddSignal -win $_nWave2 "/simtop/uart_tx_simtop/bitcount_int\[3:0\]"
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {122 123 1 1 1 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 68814.335803 117487.890395
wvZoom -win $_nWave2 93327.608664 98818.581784
wvZoom -win $_nWave2 96230.169798 96553.168216
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetCursor -win $_nWave2 96370.586918 -snap {("G1" 8)}
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 96371.237600 -snap {("G1" 15)}
wvSetCursor -win $_nWave2 96389.456689 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 96371.237600 -snap {("G1" 14)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 533.038487 21854.577950
wvZoom -win $_nWave2 533.038487 1065.647450
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetCursor -win $_nWave2 610.719568 -snap {("G1" 15)}
wvSetCursor -win $_nWave2 630.032544 -snap {("G1" 15)}
wvSetCursor -win $_nWave2 629.603367 -snap {("G1" 8)}
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 95806.095148 -snap {("G1" 16)}
wvSetCursor -win $_nWave2 191392.451545 -snap {("G1" 16)}
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 287857.762944 -snap {("G1" 16)}
wvSetCursor -win $_nWave2 301481.565465 -snap {("G1" 14)}
srcActiveTrace "simtop.uart_tx_simtop.tx_data_i\[7:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 287911 -TraceValue 00000000
wvSetCursor -win $_nWave2 260610.157902 -snap {("G1" 14)}
srcActiveTrace "simtop.uart_tx_simtop.tx_data_i\[7:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 192131 -TraceValue 11011101
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
srcHBSelect "simtop.uart_tx_simtop" -win $_nTrace1
srcSetScope -win $_nTrace1 "simtop.uart_tx_simtop" -delim "."
srcHBSelect "simtop.uart_tx_simtop" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "uart_send" -line 64 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvAddSignal -win $_nWave2 "/simtop/uart_tx_simtop/uart_send"
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvScrollDown -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 10)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvZoom -win $_nWave2 3515.820005 460572.420710
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvZoom -win $_nWave2 278265.396255 295943.653172
wvZoom -win $_nWave2 287425.041056 288336.731984
wvZoom -win $_nWave2 287861.418502 287926.801655
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 0.000000 422970.517525
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvZoom -win $_nWave2 279480.922136 303679.880028
wvZoom -win $_nWave2 287007.753519 288450.721194
wvZoom -win $_nWave2 287837.954099 287922.834550
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvScrollDown -win $_nWave2 6
srcHBSelect "simtop.axi2uart_top_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "simtop.axi2uart_top_inst" -delim "."
srcHBSelect "simtop.axi2uart_top_inst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {11 19 1 1 1 1} -backward
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvAddSignal -win $_nWave2 "/simtop/axi2uart_top_inst/s_axi_arready" \
           "/simtop/axi2uart_top_inst/s_axi_rdata\[31:0\]" \
           "/simtop/axi2uart_top_inst/s_axi_rresp\[1:0\]" \
           "/simtop/axi2uart_top_inst/s_axi_rvalid" \
           "/simtop/axi2uart_top_inst/s_axi_awready" \
           "/simtop/axi2uart_top_inst/s_axi_wready" \
           "/simtop/axi2uart_top_inst/s_axi_bresp\[1:0\]" \
           "/simtop/axi2uart_top_inst/s_axi_bvalid" \
           "/simtop/axi2uart_top_inst/uart_irq" \
           "/simtop/axi2uart_top_inst/uart_tx" "/simtop/axi2uart_top_inst/clk" \
           "/simtop/axi2uart_top_inst/rst_n" \
           "/simtop/axi2uart_top_inst/s_axi_araddr\[4:0\]" \
           "/simtop/axi2uart_top_inst/s_axi_arvalid" \
           "/simtop/axi2uart_top_inst/s_axi_rready" \
           "/simtop/axi2uart_top_inst/s_axi_awaddr\[4:0\]" \
           "/simtop/axi2uart_top_inst/s_axi_awvalid" \
           "/simtop/axi2uart_top_inst/s_axi_wdata\[31:0\]" \
           "/simtop/axi2uart_top_inst/s_axi_wstrb\[3:0\]" \
           "/simtop/axi2uart_top_inst/s_axi_wvalid" \
           "/simtop/axi2uart_top_inst/s_axi_bready" \
           "/simtop/axi2uart_top_inst/uart_rx"
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 22)}
wvSetPosition -win $_nWave2 {("G2" 22)}
wvSetCursor -win $_nWave2 48783.500403 -snap {("G2" 19)}
wvSelectSignal -win $_nWave2 {( "G2" 18 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 22 )} 
wvSetPosition -win $_nWave2 {("G2" 21)}
wvSetPosition -win $_nWave2 {("G2" 20)}
wvSetPosition -win $_nWave2 {("G2" 19)}
wvSetPosition -win $_nWave2 {("G2" 18)}
wvSetPosition -win $_nWave2 {("G2" 17)}
wvSetPosition -win $_nWave2 {("G2" 16)}
wvSetPosition -win $_nWave2 {("G2" 15)}
wvSetPosition -win $_nWave2 {("G2" 14)}
wvSetPosition -win $_nWave2 {("G2" 13)}
wvSetPosition -win $_nWave2 {("G2" 12)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSetPosition -win $_nWave2 {("G2" 10)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 10)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSetPosition -win $_nWave2 {("G2" 12)}
wvSetPosition -win $_nWave2 {("G2" 13)}
wvSetPosition -win $_nWave2 {("G2" 14)}
wvSetPosition -win $_nWave2 {("G2" 15)}
wvSetPosition -win $_nWave2 {("G2" 14)}
wvSetPosition -win $_nWave2 {("G2" 13)}
wvSetPosition -win $_nWave2 {("G2" 12)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSetPosition -win $_nWave2 {("G2" 10)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 17)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 15 )} 
wvSelectSignal -win $_nWave2 {( "G2" 16 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 8
wvSelectSignal -win $_nWave2 {( "G2" 10 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 35290.191781 -snap {("G2" 10)}
srcActiveTrace "simtop.axi2uart_top_inst.uart_irq" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 0 -TraceValue 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "rx_fifo_space_int\[AXI_FIFO_ADDR\]" -line 626 -pos 1 -win \
          $_nTrace1
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 10)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSetPosition -win $_nWave2 {("G2" 12)}
wvSetPosition -win $_nWave2 {("G2" 13)}
wvSetPosition -win $_nWave2 {("G2" 14)}
wvSetPosition -win $_nWave2 {("G2" 15)}
wvSetPosition -win $_nWave2 {("G2" 16)}
wvSetPosition -win $_nWave2 {("G2" 17)}
wvSetPosition -win $_nWave2 {("G2" 18)}
wvSetPosition -win $_nWave2 {("G2" 19)}
wvSetPosition -win $_nWave2 {("G2" 20)}
wvSetPosition -win $_nWave2 {("G2" 19)}
wvSetPosition -win $_nWave2 {("G2" 18)}
wvSetPosition -win $_nWave2 {("G2" 17)}
wvSetPosition -win $_nWave2 {("G2" 16)}
wvSetPosition -win $_nWave2 {("G2" 15)}
wvSetPosition -win $_nWave2 {("G2" 14)}
wvSetPosition -win $_nWave2 {("G2" 13)}
wvSetPosition -win $_nWave2 {("G2" 12)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSetPosition -win $_nWave2 {("G2" 10)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 10)}
wvAddSignal -win $_nWave2 "/simtop/axi2uart_top_inst/rx_fifo_space_int\[5:0\]"
wvSetPosition -win $_nWave2 {("G2" 10)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSelectSignal -win $_nWave2 {( "G2" 11 )} 
wvExpandBus -win $_nWave2 {("G2" 11)}
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "uart_irq_en_int" -line 626 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 10)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSetPosition -win $_nWave2 {("G2" 12)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvAddSignal -win $_nWave2 "/simtop/axi2uart_top_inst/uart_irq_en_int"
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSetPosition -win $_nWave2 {("G2" 12)}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 115212.096696 -snap {("G2" 12)}
srcActiveTrace "simtop.axi2uart_top_inst.uart_irq_en_int" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 0 -TraceValue 0
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
wvSetCursor -win $_nWave2 29062.510878 -snap {("G2" 10)}
srcActiveTrace "simtop.axi2uart_top_inst.uart_irq" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 0 -TraceValue 0
wvSelectSignal -win $_nWave2 {( "G2" 10 )} 
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 32176.351330 -snap {("G2" 10)}
wvSearchPrev -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 10 )} 
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "rx_fifo_space_int\[AXI_FIFO_ADDR\]" -line 626 -pos 1 -win \
          $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 11 )} 
wvSelectSignal -win $_nWave2 {( "G2" 11 )} 
wvSetPosition -win $_nWave2 {("G2" 11)}
wvExpandBus -win $_nWave2 {("G2" 11)}
wvSetPosition -win $_nWave2 {("G2" 18)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 17 )} 
wvSelectSignal -win $_nWave2 {( "G2" 16 )} 
wvSelectSignal -win $_nWave2 {( "G2" 15 )} 
wvSelectSignal -win $_nWave2 {( "G2" 14 )} 
wvSelectSignal -win $_nWave2 {( "G2" 13 )} 
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
wvZoom -win $_nWave2 0.000000 67466.543110
wvZoom -win $_nWave2 0.000000 4892.819404
wvZoom -win $_nWave2 0.000000 370.608400
wvZoom -win $_nWave2 0.000000 32.252786
wvZoom -win $_nWave2 0.000000 1.741287
wvZoom -win $_nWave2 0.000000 0.109444
wvSelectSignal -win $_nWave2 {( "G2" 13 )} 
wvSelectSignal -win $_nWave2 {( "G2" 14 )} 
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
wvSelectSignal -win $_nWave2 {( "G2" 13 )} 
wvSelectSignal -win $_nWave2 {( "G2" 13 )} 
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
wvSelectSignal -win $_nWave2 {( "G2" 13 )} 
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 633.708300 -snap {("G2" 12)}
srcActiveTrace "simtop.axi2uart_top_inst.rx_fifo_space_int\[5\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 0 -TraceValue 1
wvSetCursor -win $_nWave2 633.708300 -snap {("G2" 12)}
srcActiveTrace "simtop.axi2uart_top_inst.rx_fifo_space_int\[5\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 0 -TraceValue 1
wvSetCursor -win $_nWave2 633.708300 -snap {("G2" 12)}
wvSetCursor -win $_nWave2 409.269944 -snap {("G2" 13)}
srcActiveTrace "simtop.axi2uart_top_inst.rx_fifo_space_int\[4\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 0 -TraceValue 0
wvSetCursor -win $_nWave2 409.269944 -snap {("G2" 13)}
srcActiveTrace "simtop.axi2uart_top_inst.rx_fifo_space_int\[4\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 0 -TraceValue 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "AXI_FIFO_ADDR" -win $_nTrace1
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 10)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSetPosition -win $_nWave2 {("G2" 12)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvAddSignal -win $_nWave2 "simtop/axi2uart_top_inst/AXI_FIFO_ADDR"
wvScrollDown -win $_nWave2 1
srcHBSelect "simtop.axi2uart_top_inst.uart_controller_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "simtop.axi2uart_top_inst.uart_controller_inst" -delim \
           "."
srcHBSelect "simtop.axi2uart_top_inst.uart_controller_inst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rx_data_o" -line 50 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {46 51 5 8 18 2} -backward
wvSetPosition -win $_nWave2 {("G2" 12)}
wvSetPosition -win $_nWave2 {("G2" 13)}
wvSetPosition -win $_nWave2 {("G2" 14)}
wvSetPosition -win $_nWave2 {("G2" 15)}
wvSetPosition -win $_nWave2 {("G2" 16)}
wvSetPosition -win $_nWave2 {("G2" 17)}
wvSetPosition -win $_nWave2 {("G2" 18)}
wvSetPosition -win $_nWave2 {("G2" 19)}
wvSetPosition -win $_nWave2 {("G2" 20)}
wvSetPosition -win $_nWave2 {("G2" 21)}
wvSetPosition -win $_nWave2 {("G2" 22)}
wvSetPosition -win $_nWave2 {("G2" 23)}
wvSetPosition -win $_nWave2 {("G2" 24)}
wvSetPosition -win $_nWave2 {("G2" 25)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSetPosition -win $_nWave2 {("G2" 26)}
wvSetPosition -win $_nWave2 {("G2" 27)}
wvSetPosition -win $_nWave2 {("G2" 28)}
wvSetPosition -win $_nWave2 {("G2" 29)}
wvSetPosition -win $_nWave2 {("G2" 30)}
wvSetPosition -win $_nWave2 {("G2" 31)}
wvSetPosition -win $_nWave2 {("G2" 32)}
wvSetPosition -win $_nWave2 {("G2" 33)}
wvSetPosition -win $_nWave2 {("G2" 34)}
wvSetPosition -win $_nWave2 {("G2" 35)}
wvSetPosition -win $_nWave2 {("G2" 36)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvAddSignal -win $_nWave2 \
           "simtop/axi2uart_top_inst/uart_controller_inst/DATA_UART"
wvAddSignal -win $_nWave2 \
           "/simtop/axi2uart_top_inst/uart_controller_inst/uart_rx_i" \
           "/simtop/axi2uart_top_inst/uart_controller_inst/uart_tx_o" \
           "/simtop/axi2uart_top_inst/uart_controller_inst/rx_data_o\[7:0\]" \
           "/simtop/axi2uart_top_inst/uart_controller_inst/rx_push_o"
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetCursor -win $_nWave2 1201.405318 -snap {("G3" 1)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 49429.247381 -snap {("G3" 2)}
wvSelectSignal -win $_nWave2 {( "G3" 3 )} 
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcHBSelect "simtop.axi2uart_top_inst.uart_controller_inst.uart_receiver_inst" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "simtop.axi2uart_top_inst.uart_controller_inst.uart_receiver_inst" \
           -delim "."
srcHBSelect "simtop.axi2uart_top_inst.uart_controller_inst.uart_receiver_inst" \
           -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {26 28 1 8 1 1}
wvSetPosition -win $_nWave2 {("G2" 31)}
wvSetPosition -win $_nWave2 {("G2" 30)}
wvSetPosition -win $_nWave2 {("G2" 29)}
wvSetPosition -win $_nWave2 {("G2" 30)}
wvSetPosition -win $_nWave2 {("G2" 31)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvAddSignal -win $_nWave2 \
           "simtop/axi2uart_top_inst/uart_controller_inst/uart_receiver_inst/DATA_UART"
wvAddSignal -win $_nWave2 \
           "/simtop/axi2uart_top_inst/uart_controller_inst/uart_receiver_inst/rx_i" \
           "/simtop/axi2uart_top_inst/uart_controller_inst/uart_receiver_inst/rx_data_o\[7:0\]" \
           "/simtop/axi2uart_top_inst/uart_controller_inst/uart_receiver_inst/rx_valid_o"
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvZoom -win $_nWave2 0.000000 385078.269138
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 148942.440924 178110.335604
wvZoom -win $_nWave2 164149.232107 166711.118102
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSetRadix -win $_nWave2 -format Bin
wvScrollUp -win $_nWave2 41
wvScrollUp -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 10)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSetPosition -win $_nWave2 {("G2" 12)}
wvSetPosition -win $_nWave2 {("G2" 13)}
wvSetPosition -win $_nWave2 {("G2" 14)}
wvSetPosition -win $_nWave2 {("G2" 15)}
wvSetPosition -win $_nWave2 {("G2" 16)}
wvSetPosition -win $_nWave2 {("G2" 17)}
wvSetPosition -win $_nWave2 {("G2" 16)}
wvSetPosition -win $_nWave2 {("G2" 17)}
wvSetPosition -win $_nWave2 {("G2" 18)}
wvSetPosition -win $_nWave2 {("G2" 19)}
wvSetPosition -win $_nWave2 {("G2" 20)}
wvSetPosition -win $_nWave2 {("G2" 21)}
wvSetPosition -win $_nWave2 {("G2" 22)}
wvSetPosition -win $_nWave2 {("G2" 23)}
wvSetPosition -win $_nWave2 {("G2" 24)}
wvSetPosition -win $_nWave2 {("G2" 25)}
wvSetPosition -win $_nWave2 {("G2" 26)}
wvSetPosition -win $_nWave2 {("G2" 27)}
wvSetPosition -win $_nWave2 {("G2" 28)}
wvSetPosition -win $_nWave2 {("G2" 29)}
wvSetPosition -win $_nWave2 {("G2" 30)}
wvSetPosition -win $_nWave2 {("G2" 31)}
wvSetPosition -win $_nWave2 {("G2" 32)}
wvSetPosition -win $_nWave2 {("G2" 33)}
wvSetPosition -win $_nWave2 {("G2" 34)}
wvSetPosition -win $_nWave2 {("G2" 35)}
wvSetPosition -win $_nWave2 {("G2" 34)}
wvSetPosition -win $_nWave2 {("G2" 35)}
wvSetPosition -win $_nWave2 {("G2" 36)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 4)}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "counter_int_d" -line 34 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rx" -line 62 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvAddSignal -win $_nWave2 \
           "/simtop/axi2uart_top_inst/uart_controller_inst/uart_receiver_inst/rx"
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "rx_trigger_int\[2\]" -line 62 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "state_d" -line 124 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvAddSignal -win $_nWave2 \
           "/simtop/axi2uart_top_inst/uart_controller_inst/uart_receiver_inst/state_d\[5:0\]"
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvZoom -win $_nWave2 131819.245770 192020.161160
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 8
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G2" 24 )} 
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 7
wvSelectSignal -win $_nWave2 {( "G2" 10 )} 
wvSetPosition -win $_nWave2 {("G2" 10)}
wvCollapseBus -win $_nWave2 {("G2" 10)}
wvSetPosition -win $_nWave2 {("G2" 10)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G2" 12 13 14 15 16 17 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 3)}
wvScrollUp -win $_nWave2 23
wvScrollUp -win $_nWave2 4
wvScrollDown -win $_nWave2 10
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G2" 9 )} 
wvScrollUp -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 11
wvScrollDown -win $_nWave2 9
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSetRadix -win $_nWave2 -format Hex
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
srcHBSelect "simtop.axi2uart_top_inst.axi_internal_fifo_rx_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "simtop.axi2uart_top_inst.axi_internal_fifo_rx_inst" \
           -delim "."
srcHBSelect "simtop.axi2uart_top_inst.axi_internal_fifo_rx_inst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_o" -line 36 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G2" 15)}
wvSetPosition -win $_nWave2 {("G2" 14)}
wvSetPosition -win $_nWave2 {("G2" 13)}
wvSetPosition -win $_nWave2 {("G2" 12)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSetPosition -win $_nWave2 {("G2" 10)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSetPosition -win $_nWave2 {("G2" 12)}
wvSetPosition -win $_nWave2 {("G2" 13)}
wvSetPosition -win $_nWave2 {("G2" 14)}
wvSetPosition -win $_nWave2 {("G2" 15)}
wvSetPosition -win $_nWave2 {("G2" 16)}
wvSetPosition -win $_nWave2 {("G2" 17)}
wvSetPosition -win $_nWave2 {("G2" 18)}
wvSetPosition -win $_nWave2 {("G2" 19)}
wvSetPosition -win $_nWave2 {("G2" 20)}
wvSetPosition -win $_nWave2 {("G2" 21)}
wvSetPosition -win $_nWave2 {("G2" 22)}
wvSetPosition -win $_nWave2 {("G2" 23)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 23)}
wvAddSignal -win $_nWave2 \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/data_o\[7:0\]"
wvSetPosition -win $_nWave2 {("G2" 23)}
wvSetPosition -win $_nWave2 {("G2" 24)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {36 39 1 1 1 1} -backward
wvSetPosition -win $_nWave2 {("G2" 23)}
wvSetPosition -win $_nWave2 {("G2" 24)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G2" 24)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G2" 24)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvAddSignal -win $_nWave2 \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/data_o\[7:0\]" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/status_o\[4:0\]" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/clk_i" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/arstn_i" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/rst_i" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/push_i" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/pull_i" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/data_i\[7:0\]"
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvSelectSignal -win $_nWave2 {( "G5" 6 )} 
wvSelectSignal -win $_nWave2 {( "G5" 7 )} 
wvSelectSignal -win $_nWave2 {( "G5" 8 )} 
wvSelectSignal -win $_nWave2 {( "G5" 6 )} 
wvSelectSignal -win $_nWave2 {( "G5" 5 )} 
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvSelectSignal -win $_nWave2 {( "G5" 5 )} 
wvSelectSignal -win $_nWave2 {( "G5" 6 )} 
wvSelectSignal -win $_nWave2 {( "G5" 7 )} 
wvSelectSignal -win $_nWave2 {( "G5" 8 )} 
wvSelectSignal -win $_nWave2 {( "G5" 7 )} 
wvSelectSignal -win $_nWave2 {( "G5" 6 )} 
wvSelectSignal -win $_nWave2 {( "G5" 7 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "fifo_int" -line 73 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G5" 7)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvAddSignal -win $_nWave2 \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/fifo_int\[15:0\]"
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSelectSignal -win $_nWave2 {( "G5" 9 )} 
wvExpandBus -win $_nWave2 {("G5" 9)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G5" 24 )} 
wvSelectSignal -win $_nWave2 {( "G5" 25 )} 
wvSelectSignal -win $_nWave2 {( "G5" 24 )} 
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G5" 6 )} 
wvSelectSignal -win $_nWave2 {( "G5" 8 )} 
wvSetPosition -win $_nWave2 {("G5" 8)}
wvExpandBus -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 33)}
wvSelectSignal -win $_nWave2 {( "G5" 8 )} 
wvSetPosition -win $_nWave2 {("G5" 8)}
wvCollapseBus -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 25)}
wvSelectSignal -win $_nWave2 {( "G5" 8 )} 
wvSetPosition -win $_nWave2 {("G5" 8)}
wvExpandBus -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 33)}
wvSelectSignal -win $_nWave2 {( "G5" 8 )} 
wvSetPosition -win $_nWave2 {("G5" 8)}
wvCollapseBus -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 25)}
wvSelectSignal -win $_nWave2 {( "G5" 9 )} 
wvSetPosition -win $_nWave2 {("G5" 9)}
wvCollapseBus -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "INDEX_LENGTH" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G5" 8 )} 
wvSelectSignal -win $_nWave2 {( "G5" 9 )} 
wvSelectSignal -win $_nWave2 {( "G5" 8 )} 
wvSelectSignal -win $_nWave2 {( "G5" 7 )} 
wvSelectSignal -win $_nWave2 {( "G5" 8 )} 
wvSelectSignal -win $_nWave2 {( "G5" 9 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {81 86 3 3 1 2}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G5" 7)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvAddSignal -win $_nWave2 \
           "simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/FIFO_SIZE"
wvAddSignal -win $_nWave2 \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/arstn_i" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/head_int\[3:0\]" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/tail_int\[3:0\]" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/available_int\[4:0\]" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/space\[4:0\]" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/valid_int\[15:0\]"
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G6" 6)}
wvSetPosition -win $_nWave2 {("G6" 6)}
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSelectSignal -win $_nWave2 {( "G6" 3 )} 
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 68504.489927 -snap {("G6" 2)}
wvSetCursor -win $_nWave2 68504.489927 -snap {("G6" 2)}
srcActiveTrace \
           "simtop.axi2uart_top_inst.axi_internal_fifo_rx_inst.head_int\[3:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 0000
wvScrollUp -win $_nWave2 2
wvZoom -win $_nWave2 59162.968574 423482.301370
srcDeselectAll -win $_nTrace1
srcSelect -signal "valid_int\[tail_int\]" -line 115 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSetPosition -win $_nWave2 {("G6" 2)}
wvSetPosition -win $_nWave2 {("G6" 3)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSetPosition -win $_nWave2 {("G6" 5)}
wvSetPosition -win $_nWave2 {("G6" 6)}
wvAddSignal -win $_nWave2 \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/valid_int\[15:0\]"
wvSetPosition -win $_nWave2 {("G6" 6)}
wvSetPosition -win $_nWave2 {("G6" 7)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "space" -line 122 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSetPosition -win $_nWave2 {("G6" 5)}
wvSetPosition -win $_nWave2 {("G6" 6)}
wvSetPosition -win $_nWave2 {("G6" 7)}
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 7)}
wvAddSignal -win $_nWave2 \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/space\[4:0\]"
wvSetPosition -win $_nWave2 {("G6" 7)}
wvSetPosition -win $_nWave2 {("G6" 8)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 106427.604013 -snap {("G6" 8)}
srcActiveTrace "simtop.axi2uart_top_inst.axi_internal_fifo_rx_inst.space\[4:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 00000
srcDeselectAll -win $_nTrace1
srcSelect -signal "FIFO_SIZE\[INDEX_LENGTH:0\]" -line 85 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSetPosition -win $_nWave2 {("G6" 5)}
wvSetPosition -win $_nWave2 {("G6" 6)}
wvSetPosition -win $_nWave2 {("G6" 7)}
wvSetPosition -win $_nWave2 {("G6" 8)}
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 8)}
wvAddSignal -win $_nWave2 \
           "simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/FIFO_SIZE"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "FIFO_SIZE\[INDEX_LENGTH:0\]" -line 85 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 78089.397682 -snap {("G6" 8)}
srcActiveTrace "simtop.axi2uart_top_inst.axi_internal_fifo_rx_inst.space\[4:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 00000
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 0.000000 15265.596539
wvZoom -win $_nWave2 36.903134 1193.201341
wvZoom -win $_nWave2 36.903134 116.101642
wvZoom -win $_nWave2 36.903134 41.944780
wvZoom -win $_nWave2 36.903134 37.183451
wvZoom -win $_nWave2 36.903134 36.999025
wvZoom -win $_nWave2 36.903134 36.989355
wvZoom -win $_nWave2 36.903134 37.007083
wvZoom -win $_nWave2 36.903134 36.976462
wvZoom -win $_nWave2 36.903134 36.961958
wvZoom -win $_nWave2 36.911998 36.964375
wvZoom -win $_nWave2 0.000000 0.033844
wvZoom -win $_nWave2 0.000000 0.028203
wvZoom -win $_nWave2 0.000000 0.036261
wvSetCursor -win $_nWave2 0.296535 -snap {("G6" 7)}
wvSetCursor -win $_nWave2 0.298952 -snap {("G6" 7)}
wvSetCursor -win $_nWave2 0.302981 -snap {("G6" 6)}
wvSetCursor -win $_nWave2 0.307010 -snap {("G6" 7)}
wvSelectSignal -win $_nWave2 {( "G5" 6 )} 
wvSelectSignal -win $_nWave2 {( "G5" 7 )} 
wvSelectSignal -win $_nWave2 {( "G5" 8 )} 
wvSelectSignal -win $_nWave2 {( "G6" 3 )} 
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvSelectSignal -win $_nWave2 {( "G6" 7 )} 
wvSelectSignal -win $_nWave2 {( "G6" 8 )} 
wvSelectSignal -win $_nWave2 {( "G6" 6 )} 
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvSelectSignal -win $_nWave2 {( "G6" 4 )} 
wvSelectSignal -win $_nWave2 {( "G6" 3 )} 
wvSelectSignal -win $_nWave2 {( "G6" 2 )} 
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSelectSignal -win $_nWave2 {( "G6" 2 )} 
wvSelectSignal -win $_nWave2 {( "G6" 3 )} 
wvSelectSignal -win $_nWave2 {( "G6" 4 )} 
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvSelectSignal -win $_nWave2 {( "G6" 6 )} 
wvSelectSignal -win $_nWave2 {( "G6" 7 )} 
wvSelectSignal -win $_nWave2 {( "G6" 8 )} 
wvSelectSignal -win $_nWave2 {( "G6" 8 )} 
wvSelectSignal -win $_nWave2 {( "G6" 7 )} 
wvSelectSignal -win $_nWave2 {( "G6" 6 )} 
wvSelectSignal -win $_nWave2 {( "G6" 4 )} 
wvSelectSignal -win $_nWave2 {( "G6" 3 )} 
wvSelectSignal -win $_nWave2 {( "G6" 2 )} 
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSelectSignal -win $_nWave2 {( "G6" 2 )} 
wvSelectSignal -win $_nWave2 {( "G6" 3 4 )} 
wvSelectSignal -win $_nWave2 {( "G6" 4 )} 
wvSelectSignal -win $_nWave2 {( "G6" 6 )} 
wvSelectSignal -win $_nWave2 {( "G6" 7 )} 
wvSelectSignal -win $_nWave2 {( "G6" 8 )} 
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G5" 6 )} 
wvSelectSignal -win $_nWave2 {( "G5" 7 )} 
wvSelectSignal -win $_nWave2 {( "G5" 8 )} 
wvSelectSignal -win $_nWave2 {( "G5" 9 )} 
wvSelectSignal -win $_nWave2 {( "G5" 7 )} 
wvSelectSignal -win $_nWave2 {( "G5" 6 )} 
wvSelectSignal -win $_nWave2 {( "G5" 5 )} 
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSelectSignal -win $_nWave2 {( "G6" 2 3 )} 
wvSetPosition -win $_nWave2 {("G6" 3)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvSelectSignal -win $_nWave2 {( "G6" 4 )} 
wvSelectSignal -win $_nWave2 {( "G6" 3 )} 
wvSelectSignal -win $_nWave2 {( "G6" 4 )} 
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvSelectSignal -win $_nWave2 {( "G6" 3 )} 
wvSetOptions -win $_nWave2 -hierName off
wvSelectSignal -win $_nWave2 {( "G6" 6 )} 
wvSetCursor -win $_nWave2 0.030620 -snap {("G6" 6)}
wvSetCursor -win $_nWave2 0.024980 -snap {("G6" 5)}
wvSetCursor -win $_nWave2 0.016116 -snap {("G6" 5)}
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvSetCursor -win $_nWave2 0.070911 -snap {("G6" 5)}
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G5" 9 )} 
wvSelectSignal -win $_nWave2 {( "G5" 9 )} 
wvSetPosition -win $_nWave2 {("G5" 9)}
wvExpandBus -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvScrollDown -win $_nWave2 4
wvScrollUp -win $_nWave2 8
wvSelectSignal -win $_nWave2 {( "G5" 9 )} 
wvSetPosition -win $_nWave2 {("G5" 9)}
wvCollapseBus -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSelectSignal -win $_nWave2 {( "G5" 9 )} 
wvSetPosition -win $_nWave2 {("G5" 9)}
wvExpandBus -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvScrollDown -win $_nWave2 4
wvScrollUp -win $_nWave2 9
wvSelectSignal -win $_nWave2 {( "G5" 9 )} 
wvSetPosition -win $_nWave2 {("G5" 9)}
wvCollapseBus -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSetCursor -win $_nWave2 0.861402 -snap {("G6" 0)}
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G6" 8 )} 
srcDeselectAll -win $_nTrace1
debReload
wvZoom -win $_nWave2 0.000000 0.027397
wvZoom -win $_nWave2 0.006446 0.063658
wvZoom -win $_nWave2 0.006446 0.084609
wvZoom -win $_nWave2 0.034649 0.140210
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 1108.989525 -snap {("G6" 8)}
srcActiveTrace "simtop.axi2uart_top_inst.axi_internal_fifo_rx_inst.space\[4:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 00000
wvSetCursor -win $_nWave2 1108.989525 -snap {("G6" 8)}
srcActiveTrace "simtop.axi2uart_top_inst.axi_internal_fifo_rx_inst.space\[4:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 00000
wvSetCursor -win $_nWave2 1108.989525 -snap {("G6" 8)}
wvSetCursor -win $_nWave2 1108.989525 -snap {("G6" 8)}
srcActiveTrace "simtop.axi2uart_top_inst.axi_internal_fifo_rx_inst.space\[4:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 00000
wvSetCursor -win $_nWave2 1108.989525 -snap {("G6" 8)}
srcActiveTrace "simtop.axi2uart_top_inst.axi_internal_fifo_rx_inst.space\[4:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 00000
wvSetCursor -win $_nWave2 1108.989525 -snap {("G6" 8)}
srcActiveTrace "simtop.axi2uart_top_inst.axi_internal_fifo_rx_inst.space\[4:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 00000
wvSetCursor -win $_nWave2 1108.989525 -snap {("G6" 8)}
wvSelectSignal -win $_nWave2 {( "G6" 2 )} 
srcDeselectAll -win $_nTrace1
debReload
debReload
debReload
debReload
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G6" 8 )} 
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvSelectSignal -win $_nWave2 {( "G6" 8 )} 
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 12779.720185 -snap {("G6" 0)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G5" 6 )} 
wvSelectSignal -win $_nWave2 {( "G5" 7 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 49821.447220 159843.809831
wvZoom -win $_nWave2 75354.437093 89628.087681
wvZoom -win $_nWave2 82105.954333 84705.345979
wvZoom -win $_nWave2 83084.129916 83245.413685
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk_i" -line 60 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G5" 7)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 7)}
wvAddSignal -win $_nWave2 \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/clk_i"
wvSetPosition -win $_nWave2 {("G5" 7)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetCursor -win $_nWave2 83169.255515 -snap {("G5" 8)}
wvSetCursor -win $_nWave2 83190.049555 -snap {("G5" 8)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {79 79 4 10 1 1}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G5" 7)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("G5" 10)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G5" 10)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvVerilogExpression -win $_nWave2 -noadd "\\\{push_i,pull_i\} \[1:0\]" \
           "\{\"/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/push_i\",\"/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/pull_i\"\}"
wvAddSignal -win $_nWave2 \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/push_i" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/pull_i"
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 10)}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 83169.775366 -snap {("G5" 8)}
wvSetCursor -win $_nWave2 83190.829331 -snap {("G5" 8)}
wvSetCursor -win $_nWave2 83170.165255 -snap {("G5" 8)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "arstn_i" -line 60 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G5" 7)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvAddSignal -win $_nWave2 \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/arstn_i"
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 9)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst_i" -line 71 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G5" 7)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvAddSignal -win $_nWave2 \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/rst_i"
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("G5" 10)}
wvSetCursor -win $_nWave2 83098.035930 -snap {("G5" 10)}
srcActiveTrace "simtop.axi2uart_top_inst.axi_internal_fifo_rx_inst.rst_i" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 1
wvSetCursor -win $_nWave2 10.786908 -snap {("G5" 10)}
srcActiveTrace "simtop.axi2uart_top_inst.axi_internal_fifo_rx_inst.rst_i" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 1
wvSetCursor -win $_nWave2 10.786908 -snap {("G5" 10)}
srcActiveTrace "simtop.axi2uart_top_inst.axi_internal_fifo_rx_inst.rst_i" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 1
wvScrollDown -win $_nWave2 12
wvSelectGroup -win $_nWave2 {G7}
srcHBSelect "simtop.axi2uart_top_inst" -win $_nTrace1
wvCreateWindow
wvCreateWindow
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
srcDeselectAll -win $_nTrace1
wvDrop -win $_nWave2
wvSelectGroup -win $_nWave2 {G7}
wvClearAll -win $_nWave2
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvSelectGroup -win $_nWave2 {G1}
wvSelectGroup -win $_nWave2 {G1}
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
verdiDockWidgetSetCurTab -dock windowDock_nWave_4
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
wvCloseWindow -win $_nWave3
wvCloseWindow -win $_nWave4
wvCreateWindow
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiDockWidgetSetCurTab -dock windowDock_nWave_5
wvCloseWindow -win $_nWave5
wvSelectGroup -win $_nWave2 {G1}
wvSelectStuckSignals -win $_nWave2
wvSelectGroup -win $_nWave2 {G1}
wvSelectGroup -win $_nWave2 {G1}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/_\$novas_unit__1"
wvSelectGroup -win $_nWave2 {G1}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/simtop"
wvGetSignalSetScope -win $_nWave2 "/simtop/axi_rd_if_sigs0"
wvGetSignalSetScope -win $_nWave2 "/simtop/axi2uart_top_inst"
wvGetSignalSetSignalFilter -win $_nWave2 "read_state"
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/simtop/axi2uart_top_inst/read_state\[3:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetPosition -win $_nWave2 {("G1" 1)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
srcDeselectAll -win $_nTrace1
srcHBSelect "simtop.axi2uart_top_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "simtop.axi2uart_top_inst" -delim "."
srcHBSelect "simtop.axi2uart_top_inst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "simtop.axi2uart_top_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "simtop.axi2uart_top_inst" -delim "."
srcHBSelect "simtop.axi2uart_top_inst" -win $_nTrace1
srcHBSelect "simtop.axi2uart_top_inst.axi_internal_fifo_rx_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "simtop.axi2uart_top_inst.axi_internal_fifo_rx_inst" \
           -delim "."
srcHBSelect "simtop.axi2uart_top_inst.axi_internal_fifo_rx_inst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {15 19 1 1 1 1} -backward
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {15 19 1 1 1 1} -backward
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvAddSignal -win $_nWave2 \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/data_o\[7:0\]" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/status_o\[7:0\]" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/clk_i" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/arstn_i" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/rst_i" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/push_i" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/pull_i" \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/data_i\[7:0\]"
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G2" 8 )} 
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "fifo_int" -line 53 -pos 1 -win $_nTrace1
srcAction -pos 52 11 4 -win $_nTrace1 -name "fifo_int" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "fifo_int\[tail_int\]" -line 153 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "tail_int" -line 131 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fifo_int" -line 53 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvAddSignal -win $_nWave2 \
           "/simtop/axi2uart_top_inst/axi_internal_fifo_rx_inst/fifo_int\[15:0\]"
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetCursor -win $_nWave2 31939.644598 -snap {("G4" 0)}
wvGetSignalOpen -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvExpandBus -win $_nWave2 {("G3" 1)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSetPosition -win $_nWave2 {("G3" 1)}
wvCollapseBus -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 1)}
srcHBSelect "simtop.axi2uart_top_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "simtop.axi2uart_top_inst" -delim "."
srcHBSelect "simtop.axi2uart_top_inst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "uart_rx" -line 18 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "s_axi_wvalid" -line 17 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "s_axi_bready" -line 18 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "uart_irq" -line 13 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvAddSignal -win $_nWave2 "/simtop/axi2uart_top_inst/uart_irq"
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetCursor -win $_nWave2 128823.233213 -snap {("G2" 8)}
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvZoom -win $_nWave2 60685.324737 405101.158989
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {10 19 1 1 3 1}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvAddSignal -win $_nWave2 "/simtop/axi2uart_top_inst/s_axi_arready" \
           "/simtop/axi2uart_top_inst/s_axi_rdata\[31:0\]" \
           "/simtop/axi2uart_top_inst/s_axi_rresp\[1:0\]" \
           "/simtop/axi2uart_top_inst/s_axi_rvalid" \
           "/simtop/axi2uart_top_inst/s_axi_awready" \
           "/simtop/axi2uart_top_inst/s_axi_wready" \
           "/simtop/axi2uart_top_inst/s_axi_bresp\[1:0\]" \
           "/simtop/axi2uart_top_inst/s_axi_bvalid" \
           "/simtop/axi2uart_top_inst/uart_irq" \
           "/simtop/axi2uart_top_inst/uart_tx" "/simtop/axi2uart_top_inst/clk" \
           "/simtop/axi2uart_top_inst/rst_n" \
           "/simtop/axi2uart_top_inst/s_axi_araddr\[4:0\]" \
           "/simtop/axi2uart_top_inst/s_axi_arvalid" \
           "/simtop/axi2uart_top_inst/s_axi_rready" \
           "/simtop/axi2uart_top_inst/s_axi_awaddr\[4:0\]" \
           "/simtop/axi2uart_top_inst/s_axi_awvalid" \
           "/simtop/axi2uart_top_inst/s_axi_wdata\[31:0\]" \
           "/simtop/axi2uart_top_inst/s_axi_wstrb\[3:0\]" \
           "/simtop/axi2uart_top_inst/s_axi_wvalid" \
           "/simtop/axi2uart_top_inst/s_axi_bready" \
           "/simtop/axi2uart_top_inst/uart_rx"
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvScrollDown -win $_nWave2 6
wvSelectSignal -win $_nWave2 {( "G1" 22 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvScrollUp -win $_nWave2 7
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G1" 22 )} 
wvScrollDown -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G1" 23 )} 
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 9
wvScrollDown -win $_nWave2 2
wvScrollUp -win $_nWave2 3
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvZoom -win $_nWave2 60200.915391 149464.341660
wvZoom -win $_nWave2 80412.859615 90267.081531
wvZoom -win $_nWave2 82945.894902 84033.750182
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectGroup -win $_nWave2 {G1}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetCursor -win $_nWave2 179526.802068 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 897.634010 -snap {("G1" 1)}
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvScrollDown -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetCursor -win $_nWave2 488312.901625 -snap {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvScrollDown -win $_nWave2 4
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvZoom -win $_nWave2 58346.210672 103227.911189
wvZoom -win $_nWave2 81058.304084 86338.504145
wvZoom -win $_nWave2 83083.586299 83666.493156
wvZoom -win $_nWave2 83191.618996 83304.818474
