vlib work
vmap work work

# Compile Standard Cell Library
vlog -sv ../std_cells/tsmc13_m.v

# Compile Gate-Level Netlist (post-PNR)
vlog -sv ../netlist/Final_System_pnr.v

# Compile Testbench
vlog -sv system_tb.sv

# Start Simulation with back-annotated SDF
vsim -voptargs=+acc -sdfmax /system_tb/DUT=../netlist/Final_System_pnr.sdf -sdfnoerror work.system_tb

# Load waveform
do wave.do

# Run (System.vcd is written to this sim/ directory)
run -all
