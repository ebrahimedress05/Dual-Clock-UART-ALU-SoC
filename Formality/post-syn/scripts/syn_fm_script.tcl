
########################### Define Top Module ############################
                                                   
set top_module Final_System

######################### Formality Setup File ###########################

set synopsys_auto_setup true
set verification_verify_directly_undriven_output false

set_svf "/home/ICer/IC/Projects/System/Synthesis/Final_System.svf"


set SSLIB "/home/ICer/IC/Projects/System/Stdcell/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/ICer/IC/Projects/System/Stdcell/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/ICer/IC/Projects/System/Stdcell/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

######################### Reference Container ############################

# Read Reference Design Verilog Files
# Verilog Files (.v)
read_verilog -container Ref [list \
    "/home/ICer/IC/Projects/System/RTL/ALU.v" \
    "/home/ICer/IC/Projects/System/RTL/ASYNC_FIFO.v" \
    "/home/ICer/IC/Projects/System/RTL/ClkDiv.v" \
    "/home/ICer/IC/Projects/System/RTL/Clk_Div_Mux.v" \
    "/home/ICer/IC/Projects/System/RTL/CLK_GATE.v" \
    "/home/ICer/IC/Projects/System/RTL/data_sampling.v" \
    "/home/ICer/IC/Projects/System/RTL/Data_Sync.v" \
    "/home/ICer/IC/Projects/System/RTL/deserializer.v" \
    "/home/ICer/IC/Projects/System/RTL/DF_SYNC.v" \
    "/home/ICer/IC/Projects/System/RTL/edge_bit_counter.v" \
    "/home/ICer/IC/Projects/System/RTL/FIFO_MEM_CNTRL.v" \
    "/home/ICer/IC/Projects/System/RTL/FIFO_rptr.v" \
    "/home/ICer/IC/Projects/System/RTL/FIFO_wptr.v" \
    "/home/ICer/IC/Projects/System/RTL/Final_System.v" \
    "/home/ICer/IC/Projects/System/RTL/MUX.v" \
    "/home/ICer/IC/Projects/System/RTL/NOT.v" \
    "/home/ICer/IC/Projects/System/RTL/Parity_calc.v" \
    "/home/ICer/IC/Projects/System/RTL/parity_check.v" \
    "/home/ICer/IC/Projects/System/RTL/PULSE_GEN.v" \
    "/home/ICer/IC/Projects/System/RTL/Register_File.v" \
    "/home/ICer/IC/Projects/System/RTL/RST_SYNC.v" \
    "/home/ICer/IC/Projects/System/RTL/serializer.v" \
    "/home/ICer/IC/Projects/System/RTL/stop_check.v" \
    "/home/ICer/IC/Projects/System/RTL/strt_check.v" \
    "/home/ICer/IC/Projects/System/RTL/UART_RX.v" \
    "/home/ICer/IC/Projects/System/RTL/UART_TX.v" \
]

# SystemVerilog Files (.sv)
read_sverilog -container Ref [list \
    "/home/ICer/IC/Projects/System/RTL/FSM_RX.sv" \
    "/home/ICer/IC/Projects/System/RTL/FSM_TX.sv" \
    "/home/ICer/IC/Projects/System/RTL/SYS_CTRL.sv" \
]

## Read Reference Design Files
read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

## set the top Reference Design 
set_reference_design Final_System
set_top Final_System


######################## Implementation Container #########################

# Read Implementation Design Files
read_verilog -container Imp "/home/ICer/IC/Projects/System/Synthesis/netlists/Final_System.v"

# Read Implementation technology libraries
read_db -container Imp [list $SSLIB $TTLIB $FFLIB]


# set the top Implementation Design
set_implementation_design Final_System
set_top Final_System


## matching Compare points
match

## verify
set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui
