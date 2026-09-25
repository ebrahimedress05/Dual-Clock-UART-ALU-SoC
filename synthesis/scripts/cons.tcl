
####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. #set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

#1. Master Clocks

set clk_domain_1 REF_CLK
set clk_domain_1_per 20
set clk_domain_2 UART_CLK
set clk_domain_2_per 271.2967987
set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1
set CLK_LAT 0
set CLK_RISE 0.05
set CLK_FALL 0.05
set TX_CLK_PER [expr $clk_domain_2_per * 32]

create_clock -name $clk_domain_1 -period $clk_domain_1_per -waveform "0 [expr $clk_domain_1_per/2]" [get_ports REF_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $clk_domain_1]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $clk_domain_1]
set_clock_transition -rise $CLK_RISE  [get_clocks $clk_domain_1]
set_clock_transition -fall $CLK_FALL  [get_clocks $clk_domain_1]
set_clock_latency $CLK_LAT [get_clocks $clk_domain_1]

create_clock -name $clk_domain_2 -period $clk_domain_2_per -waveform "0 [expr $clk_domain_2_per/2]" [get_ports UART_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $clk_domain_2]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $clk_domain_2]
set_clock_transition -rise $CLK_RISE  [get_clocks $clk_domain_2]
set_clock_transition -fall $CLK_FALL  [get_clocks $clk_domain_2]
set_clock_latency $CLK_LAT [get_clocks $clk_domain_2]




#2. Generated clocks

create_generated_clock -master_clock $clk_domain_1 -source [get_ports REF_CLK] \
                       -name "ALU_CLK" [get_pins CLK_GATE/GATED_CLK] \
                       -divide_by 1
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks ALU_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks ALU_CLK]



create_generated_clock -master_clock $clk_domain_2 -source [get_ports UART_CLK] \
                       -name "TX_CLK" [get_pins ClkDiv_TX/o_div_clk] \
                       -divide_by 32
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks TX_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks TX_CLK]


create_generated_clock -master_clock $clk_domain_2 -source [get_ports UART_CLK] \
                       -name "RX_CLK" [get_pins ClkDiv_RX/o_div_clk] \
                       -divide_by 1
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks RX_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks RX_CLK]

					   
set_dont_touch_network [get_clocks {REF_CLK UART_CLK ALU_CLK TX_CLK RX_CLK}]
set_dont_touch_network [get_ports RST]


####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous -group [get_clocks "$clk_domain_1 ALU_CLK"] -group [get_clocks "$clk_domain_2 TX_CLK RX_CLK"]

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

set in1_delay  [expr 0.2*$clk_domain_2_per]
set out1_delay [expr 0.2*$clk_domain_2_per]

set in2_delay  [expr 0.2*$TX_CLK_PER]
set out2_delay [expr 0.2*$TX_CLK_PER]

#Constrain Input Paths
set_input_delay $in1_delay -clock RX_CLK [get_port RX_IN]

#Constrain Output Paths
set_output_delay $out1_delay -clock RX_CLK [get_port stop_error]
set_output_delay $out1_delay -clock RX_CLK [get_port parity_error]
set_output_delay $out2_delay -clock TX_CLK [get_port TX_OUT]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port RX_IN]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 0.1 [get_port stop_error]
set_load 0.1 [get_port parity_error]
set_load 0.1 [get_port TX_OUT]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################

set_wire_load_model -name "tsmc13_wl10" -library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c"

####################################################################################
           #########################################################
                  #### Section 8 : premapped cells ####
           #########################################################
####################################################################################

## get_designs for module
set_dont_touch [get_designs CLK_GATE]

####################################################################################

