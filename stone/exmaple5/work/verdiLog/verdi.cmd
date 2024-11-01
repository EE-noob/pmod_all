debImport "-sv" "-f" "filelist.f" "-rcFile" "/home/ICer/dark.rc"
debLoadSimResult /home/ICer/ic_prjs/pmod/stone/exmaple5/work/simtop.fsdb
wvCreateWindow
srcHBSelect "simtop.duv" -win $_nTrace1
srcHBSelect "simtop.duv" -win $_nTrace1
srcSetScope -win $_nTrace1 "simtop.duv" -delim "."
srcHBSelect "simtop.duv" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {2 18 1 1 1 1} -backward
srcDeselectAll -win $_nTrace1
srcSelect -signal "enable_in" -line 6 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {2 2 5 19 1 1}
wvAddSignal -win $_nWave2 "/simtop/duv/clk" "/simtop/duv/rst_n" \
           "/simtop/duv/din\[7:0\]" "/simtop/duv/enable_in" \
           "/simtop/duv/dout\[7:0\]" "/simtop/duv/enable_out"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
debExit
