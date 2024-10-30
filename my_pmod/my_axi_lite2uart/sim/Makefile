#************parameter input*************
#※prepare the source list file  and then make add the soucefile name 
#for example ,the Verilog source file's name is vlog_list.f then :make norsim rtl_list=file_list
rtl_list =  rtl_list
sim_list =  sim_list
simv_name = simv
vpdpluse_name = vcdpluse
cov_file_name = coverage
vdb_name = $(simv_name)
my_incdir=../ssy_tb/tb
#************constant command************
#compile
NOR_VCS = vcs -full64 -sverilog +v2k -timescale=1ns/1ns            \
      -debug_all                               \
      +notimingcheck                                   \
      +nospecify                                       \
      +vcs+flush+all                                   \
      -o $(simv_name)   \
      -l compile.log	\
	  -f $(rtl_list).f  \
		-f $(sim_list).f \
		+incdir+$(my_incdir)
 
#coverage compile switch(开关) 
COV_SW = -cm line+cond+fsm+branch+tgl

#uvm compile switch(开关) VPI (Verilog Programming Interface)、VHPI (Verilog Hardware Procedural Interface)和FLI (Foreign Language Interface) 是3 E种月于在Verilog仿真环境中连接外部程序的接口。它们允许用户在Verilog仿 真器中使用外部程序来完成各种任务，如测试向量生成、仿真控制、仿真结果分析等。这些接口通常被用于与C/C++、Python、 MATL AB等编程语言和工具进行集成。
#+vpi
#   Enables the use of VPI PLI access routines.
UVM_SW =+acc +vpi \
 +incdir+$(UVM_HOME)/src $(UVM_HOME)/src/uvm.sv \
$(UVM_HOME)/src/dpi/uvm_dpi.cc -CFLAGS -DVCS

#verdi dump wave compile option ##switch(开关) 
VERDI_SW = -P \
${VERDI_HOME}/share/PLI/VCS/LINUX64/novas.tab  \
${VERDI_HOME}/share/PLI/VCS/LINUX64/pli.a
 
#run option
RUN_GUI = -R -gui -l run.log
RUN_VPD = -R +vpdfile+$(vpdpluse_name).vpd -l run.log
RUN_COV = -R $(COV_SW) -cm_name $(vdb_name) -cm_dir ./$(cov_file_name) -l run.log
RUN_VER = -R +fsdb+autoflush -l run.log
#************command************
#verdi
intl:intlfl run_vcs 
2:2fl run_vcs 

verintl:intlfl run_vcs vd
ver2:2fl run_vcs vd
versim:fl run_vcs vd

fl:
	rm -rf rtl_list.f;  rm -rf sim_list.f;  find ../rtl ./bca -maxdepth 1 -type f -name "*v" > rtl_list.f;find ../ssy_tb/tb -maxdepth 1 -type f -name "*v" > sim_list.f;echo ../ssy_tb/tc/tb_top.sv >> sim_list.f;
intlfl:
	rm -rf rtl_list.f;  rm -rf sim_list.f;  find ../rtl ./bca -maxdepth 1 -type f -name "*v" > rtl_list.f;find ../ssy_tb/tb -maxdepth 1 -type f -name "*v" > sim_list.f;echo ../ssy_tb/tc/tb_interleaving.sv >> sim_list.f;

2fl:
	rm -rf rtl_list.f;  rm -rf sim_list.f;  find ../rtl ../axi2ahb ./bca  -maxdepth 1 -type f -name "*v" > rtl_list.f;find ../ssy_tb/tb -maxdepth 1 -type f -name "*v" > sim_list.f;echo ../ssy_tb/tc/tb_withbrige.sv >> sim_list.f;


run_vcs:
	$(NOR_VCS) $(VERDI_SW) $(RUN_VER)
vd:
	verdi -sv -f $(rtl_list).f -f $(sim_list).f -ssf *.fsdb -rcFile ~/dark.rc -nologo  & 
#help
help:
	@echo "  ########## makefile Info ##########"
	@echo "  This Makefile is the entrance of the whole simulation environment"
	@echo "  Usage: make [target] [arguments]";
	@echo "  Available targets(部分):";

	@echo "    dir                             : make a simulation environment";
	@echo "    gitp4                           : push all the repo to github";
	@echo "    gitxm                           : push the ssy_tb to github";
	@echo "    gitpl                           : pull the repo from github";
	@echo "    gitwjj                          : pull the rtl from github";

	@echo "    run_vcs                         : 进行其他测试用例的仿真(using vcs )";
	@echo "    intl                            : 进行写乱序和写交织的仿真(using vcs )";
	@echo "    2                               : 进行axi2ahb bridge仿真(using vcs )";

	@echo "    versim                          : 进行其他测试用例的仿真并查看波形(using vcs & verdi )";
	@echo "    verintl                         : 进行写乱序和写交织的仿真并查看波形(using vcs & verdi)";
	@echo "    ver2                            : 进行axi2ahb bridge仿真并查看波形(using vcs & verdi )";
	@echo "    vd                              : open testname.fsdb with verdi";
#normally sim
norsim: 
	$(NOR_VCS) $(RUN_GUI) 
 
#post-process
postsim:
	$(NOR_VCS)  $(RUN_VPD) 
	dve -vpd $(vpdpluse_name).vpd
 
#coverage
covsim:
	$(NOR_VCS)  $(VERDI_SW) $(COV_SW) $(RUN_COV) 
	dve -covdir $(cov_file_name).vdb	
#uvm
uvmsim:
	$(NOR_VCS) $(VERDI_SW) $(UVM_SW) $(RUN_VER)
#rm 
clr:
	rm -rf *csrc ./*.daidir $(simv_name) *simv* DVE* ucli* *.vpd *.vdb *.log *.fsdb *novas* *.dat *Log *rc *conf
 
dir:
	cd ../;mkdir rtl;mkdir sg;mkdir dc;mkdir tc;cd sim;

gitp4:
	git add ../*;git commit -m "$(nm)";git push jcs master;

gitxm:
	cd ../ssy_tb;git add .;git commit -m "$(nm)";git push origin master;cd ../sim;

gitpl:
	git fetch jcs;git merge  master jcs/master;	

gitwjj:
	cd ../rtl;git pull;cd ../sim;
