set_app_var power_enable_analysis true
set_app_var power_analysis_mode time_based
set power_vcd_time_unit 1ns

set report_dir ./report
file mkdir $report_dir

set Out_report System_pw

#------------------------------------------------------------------------------
# Libraries
#------------------------------------------------------------------------------
lappend search_path ../std_cells

set TTLIB   scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db
set SSLIB   scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db
set FFLIB   scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db

set target_library [list $TTLIB $SSLIB $FFLIB]
set link_library   [list * $TTLIB $SSLIB $FFLIB]

#------------------------------------------------------------------------------
# Read Design Files
#------------------------------------------------------------------------------

# Read Verilog Netlist (post-PNR)
read_verilog ../netlist/Final_System_pnr.v

current_design Final_System_dft

link_design

# Read post-PNR SDC File
read_sdc ../netlist/Final_System_pnr.sdc

# Read post-PNR SDF File
read_sdf ../netlist/Final_System_pnr.sdf

#------------------------------------------------------------------------------
# Read Switching Activity
#------------------------------------------------------------------------------
# NOTE: point this at the VCD produced by run.do (dumped as UART_TX.vcd
# from the sim/ directory - copy or update the path below accordingly)
read_vcd -strip_path system_tb/DUT ../sim/System.vcd

update_power

#------------------------------------------------------------------------------
# Reports
#------------------------------------------------------------------------------
report_power                              > $report_dir/$Out_report.rpt

echo "----------------------------------------"
echo "PrimeTime PX Analysis Finished"
echo "Reports saved in:"
echo "$report_dir"
echo "----------------------------------------"
#start_gui
exit
