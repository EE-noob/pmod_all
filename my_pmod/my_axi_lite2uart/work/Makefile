# #+libext+.v
# +libext+.sv
#libextdir=../tb/uvm_uart



UVM_HOME	    =  $(VCS_HOME)/etc/uvm-1.1
PAT_DIR_BASE    =  ../tb/pat
CHK_RESULT	    =  ../bin/check_result.pl
incdir			=  ../rtl/
#OPT		= +define+RATE_9p8G
#VIP_DIR         =  $(PROJ_ROOT)/vip_include
include ../bin/Makefile.vcs

PAT_DIR = $(PAT_DIR_BASE)/$(PAT_NAME)

#COV
CM = -cm line+cond+fsm+branch+tgl
CM_NAME = -cm_name simv
CM_DIR = -cm_dir ./cov/$(PAT_NAME).vdb
#CM_DIR = -cm_dir ./cov/$(PAT_NAME)/covdir.vdb
#urg -full64 -dir tc1.vdb tc2.vdb -dbname merged.vdb -report urgReport

#ASSERTION
ASS_ON  = +define+SVA+ASSERT_ON
ASS_RUN = +sva_success 


all: pre_clean set comp run save

fl:
	rm -rf rtl_list.f;  rm -rf sim_list.f;  find ../rtl  -maxdepth 1 -type f -name "*.v" -o -name "*.sv" > rtl_list.f;find ../tb/uvm_uart -maxdepth 1 -type f -name "*.v" -o -name "*.sv"  > sim_list.f;
pre_clean:
	@rm -fr my*
	rm  -rf  *~  core  csrc  simv*  vc_hdrs.h  ucli.key  urg* *.log  novas.*   64* DVEfiles *.vpd
#*.fsdb* verdiLog
set:
  	    
	@echo "pat >> $(PAT_DIR)"
    
    ## link sim files
	@ln -s $(PAT_DIR)/my_test.sv ./
	@ln -s $(PAT_DIR)/my_seq.sv ./

comp:
	$(VCS)	-f rtl_list.f -f sim_list.f -l comp.log +incdir+$(incdir) $(CM) $(CM_NAME) $(CM_DIR) $(ASS_ON) 

run:
	$(SIMV) +UVM_TESTNAME=my_test  $(CM) $(CM_NAME) $(CM_DIR) $(ASS_RUN) 
	echo "***PAT_NAME = $(PAT_NAME) ***" >> vcs.log 
	$(CHK_RESULT) $(PAT_NAME)

save:
	@cp *.fsdb wave/$(PAT_NAME).fsdb

vd:
	verdi -sv -f rtl_list.f -f sim_list.f -ssf *.fsdb -rcFile ~/dark.rc -nologo  & 
############ setup ############
#setup:
#	$(DESIGNWARE_HOME)/bin/dw_vip_setup -svtb -path $(VIP_DIR) -add ethernet_txrx_rvm_vera_vmt
