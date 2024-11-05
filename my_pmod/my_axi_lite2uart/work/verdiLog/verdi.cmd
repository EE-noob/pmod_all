debImport "-sv" "-f" "rtl_list.f" "-f" "sim_list.f" "-rcFile" \
          "/home/ICer/dark.rc"
debLoadSimResult \
           /home/ICer/ic_prjs/pmod/my_pmod/my_axi_lite2uart/work/testname.fsdb
wvCreateWindow
srcHBSelect "simtop.axi2uart_top_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "simtop.axi2uart_top_inst" -delim "."
srcHBSelect "simtop.axi2uart_top_inst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {11 19 1 1 3 1}
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
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvZoom -win $_nWave2 8685.581934 52113.491604
wvSetCursor -win $_nWave2 9263.950158 -snap {("G1" 20)}
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvZoom -win $_nWave2 0.000000 1108.146640
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 752.250998 -snap {("G1" 17)}
srcActiveTrace "simtop.axi2uart_top_inst.s_axi_awvalid" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 11 -TraceValue 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -word -line 20 -pos 3 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvAddSignal -win $_nWave2 "/simtop/axi_wr_if_sigs0/drv_cb/s_axi_awvalid"
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvZoom -win $_nWave2 395.606103 1078.925734
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -line 16 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvAddSignal -win $_nWave2 "/simtop/axi_wr_if_sigs0/clk"
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 20 -pos 3 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 21 -pos 3 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 19 -pos 3 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 21 -pos 3 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 20 -pos 3 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 21 -pos 3 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 20 -pos 3 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 21 -pos 3 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 20 -pos 3 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 21 -pos 3 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 20 -pos 3 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 19 -pos 3 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 20 -pos 3 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 21 -pos 3 -win $_nTrace1
