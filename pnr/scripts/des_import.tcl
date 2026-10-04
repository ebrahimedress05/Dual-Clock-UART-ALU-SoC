################################ Variables ####################################

set NUM_SCAN_CHAINS 4
set load_fp 0

################# Define Top Module & Gate Level Netlist ######################
set top_module Final_System_dft
set gate_level_netlist "/home/ahesham/Labs/System_pnr/DFT/netlists/Final_System_dft.v"

setUIVar rda_Input ui_topcell $top_module
setUIVar rda_Input ui_netlist $gate_level_netlist	

##################### Define Tech Libraries Timing Views ######################
set FFLIB "/home/ahesham/Labs/System_pnr/lib/libs/lib/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib"
set SSLIB "/home/ahesham/Labs/System_pnr/lib/libs/lib/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib"
set TTLIB "/home/ahesham/Labs/System_pnr/lib/libs/lib/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib"

setUIVar rda_Input ui_timelib,min $FFLIB
setUIVar rda_Input ui_timelib,max $SSLIB
setUIVar rda_Input ui_timelib $TTLIB

##################### Define Tech Libraries LEF Views #########################
set TECH_LEF   "/home/ahesham/Labs/System_pnr/lib/lef/tsmc13fsg_7lm_tech.lef"
set MACRO_LEF  "/home/ahesham/Labs/System_pnr/lib/lef/tsmc13_m_macros.lef"
set DESIGN_LEF0 "/home/ahesham/Labs/System_pnr/pnr/import/SYS_TOP_4.lef"
set DESIGN_LEF1 "/home/ahesham/Labs/System_pnr/pnr/import/SYS_TOP_5.lef"
set DESIGN_LEF2 "/home/ahesham/Labs/System_pnr/pnr/import/SYS_TOP_6.lef"

if {$load_fp == 0} {

	if {$NUM_SCAN_CHAINS == 4} {
		setUIVar rda_Input ui_leffile [list $TECH_LEF $MACRO_LEF $DESIGN_LEF0]
	} elseif {$NUM_SCAN_CHAINS == 5} {
		setUIVar rda_Input ui_leffile [list $TECH_LEF $MACRO_LEF $DESIGN_LEF1]
	} elseif {$NUM_SCAN_CHAINS == 6} {
		setUIVar rda_Input ui_leffile [list $TECH_LEF $MACRO_LEF $DESIGN_LEF2]
        }

} else {

setUIVar rda_Input ui_leffile [list $TECH_LEF $MACRO_LEF]

}
######################## Define Capacitance Table #############################
set CAP_TABLE_FILE  "/home/ahesham/Labs/System_pnr/lib/captables/tsmc13fsg.capTbl"

setUIVar rda_Input ui_captbl_file $CAP_TABLE_FILE
                    
######################### Define Constraints File #############################
set SDC_FILE "/home/ahesham/Labs/System_pnr/DFT/sdc/Final_System_dft.sdc"

setUIVar rda_Input ui_timingcon_file $SDC_FILE  

############################# Define PG Pins  #################################
set gnd_net_name VSS
set pwr_net_name VDD

setUIVar rda_Input ui_pwrnet $pwr_net_name
setUIVar rda_Input ui_gndnet $gnd_net_name


commitConfig



################ Define Multi Mode Multi Corner Analysis  #####################

source ./import/MMMC.tcl


