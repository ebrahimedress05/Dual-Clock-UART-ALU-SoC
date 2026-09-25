vlib work
vlog *.*v
vsim -voptargs=+acc work.system_tb
do wave.do
run -all