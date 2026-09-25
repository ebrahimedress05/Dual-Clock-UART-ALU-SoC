onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group UART -color Magenta /system_tb/DUT/CLK_TX
add wave -noupdate -expand -group UART -color Magenta /system_tb/DUT/CLK_RX
add wave -noupdate -expand -group UART -color Gold /system_tb/DUT/RX_IN
add wave -noupdate -expand -group UART /system_tb/DUT/P_DATA_RX
add wave -noupdate -expand -group UART /system_tb/DUT/data_valid_RX
add wave -noupdate -expand -group UART /system_tb/DUT/R_data
add wave -noupdate -expand -group UART /system_tb/DUT/Data_Valid_TX
add wave -noupdate -expand -group UART -color Gold /system_tb/DUT/TX_OUT
add wave -noupdate -expand -group UART /system_tb/DUT/Busy
add wave -noupdate -expand -group UART /system_tb/DUT/UART_RX/prescale
add wave -noupdate -expand -group UART /system_tb/DUT/UART_RX/PAR_EN
add wave -noupdate -expand -group UART /system_tb/DUT/UART_RX/PAR_TYP
add wave -noupdate -expand -group UART /system_tb/DUT/parity_error
add wave -noupdate -expand -group UART /system_tb/DUT/stop_error
add wave -noupdate -expand -group UART /system_tb/DUT/W_inc
add wave -noupdate -expand -group DATA_SYNC /system_tb/DUT/DATA_SYNC/unsync_bus
add wave -noupdate -expand -group DATA_SYNC /system_tb/DUT/DATA_SYNC/bus_enable
add wave -noupdate -expand -group DATA_SYNC /system_tb/DUT/DATA_SYNC/sync_bus
add wave -noupdate -expand -group DATA_SYNC /system_tb/DUT/DATA_SYNC/enable_pulse
add wave -noupdate -expand -group System_ctrl -color Magenta /system_tb/DUT/SYS_CTRL/CLK
add wave -noupdate -expand -group System_ctrl -color Magenta /system_tb/DUT/SYS_CTRL/RST
add wave -noupdate -expand -group System_ctrl /system_tb/DUT/SYS_CTRL/RdData
add wave -noupdate -expand -group System_ctrl /system_tb/DUT/SYS_CTRL/RdData_Valid
add wave -noupdate -expand -group System_ctrl /system_tb/DUT/SYS_CTRL/WrEN
add wave -noupdate -expand -group System_ctrl /system_tb/DUT/SYS_CTRL/RdEN
add wave -noupdate -expand -group System_ctrl /system_tb/DUT/SYS_CTRL/Address
add wave -noupdate -expand -group System_ctrl /system_tb/DUT/SYS_CTRL/WrData
add wave -noupdate -expand -group System_ctrl /system_tb/DUT/SYS_CTRL/ALU_OUT
add wave -noupdate -expand -group System_ctrl /system_tb/DUT/SYS_CTRL/OUT_Valid
add wave -noupdate -expand -group System_ctrl /system_tb/DUT/SYS_CTRL/ALU_EN
add wave -noupdate -expand -group System_ctrl /system_tb/DUT/SYS_CTRL/ALU_FUN
add wave -noupdate -expand -group System_ctrl /system_tb/DUT/SYS_CTRL/CLK_EN
add wave -noupdate -expand -group System_ctrl /system_tb/DUT/SYS_CTRL/clk_div_en
add wave -noupdate -expand -group System_ctrl /system_tb/DUT/SYS_CTRL/RX_P_Data
add wave -noupdate -expand -group System_ctrl /system_tb/DUT/SYS_CTRL/RX_D_VLD
add wave -noupdate -expand -group System_ctrl /system_tb/DUT/SYS_CTRL/TX_D_VLD
add wave -noupdate -expand -group System_ctrl /system_tb/DUT/SYS_CTRL/TX_P_DATA
add wave -noupdate -expand -group System_ctrl /system_tb/DUT/SYS_CTRL/current_state
add wave -noupdate -expand -group System_ctrl /system_tb/DUT/SYS_CTRL/next_state
add wave -noupdate -expand -group REG_FILE -color Magenta /system_tb/DUT/regfile/CLK
add wave -noupdate -expand -group REG_FILE -color Magenta /system_tb/DUT/regfile/RST
add wave -noupdate -expand -group REG_FILE /system_tb/DUT/regfile/WrData
add wave -noupdate -expand -group REG_FILE /system_tb/DUT/regfile/Address
add wave -noupdate -expand -group REG_FILE /system_tb/DUT/regfile/WrEn
add wave -noupdate -expand -group REG_FILE /system_tb/DUT/regfile/RdEN
add wave -noupdate -expand -group REG_FILE /system_tb/DUT/regfile/RdData
add wave -noupdate -expand -group REG_FILE /system_tb/DUT/regfile/RdData_Valid
add wave -noupdate -expand -group REG_FILE /system_tb/DUT/regfile/REG0
add wave -noupdate -expand -group REG_FILE /system_tb/DUT/regfile/REG1
add wave -noupdate -expand -group REG_FILE /system_tb/DUT/regfile/REG2
add wave -noupdate -expand -group REG_FILE /system_tb/DUT/regfile/REG3
add wave -noupdate -expand -group REG_FILE -expand /system_tb/DUT/regfile/Reg_file
add wave -noupdate -expand -group FIFO -color Magenta /system_tb/DUT/ASYNC_FIFO/W_CLK
add wave -noupdate -expand -group FIFO -color Magenta /system_tb/DUT/ASYNC_FIFO/W_RST
add wave -noupdate -expand -group FIFO /system_tb/DUT/ASYNC_FIFO/R_CLK
add wave -noupdate -expand -group FIFO /system_tb/DUT/ASYNC_FIFO/R_RST
add wave -noupdate -expand -group FIFO /system_tb/DUT/ASYNC_FIFO/W_data
add wave -noupdate -expand -group FIFO /system_tb/DUT/ASYNC_FIFO/W_inc
add wave -noupdate -expand -group FIFO /system_tb/DUT/ASYNC_FIFO/R_inc
add wave -noupdate -expand -group FIFO /system_tb/DUT/ASYNC_FIFO/R_data
add wave -noupdate -expand -group FIFO /system_tb/DUT/ASYNC_FIFO/W_full
add wave -noupdate -expand -group FIFO /system_tb/DUT/ASYNC_FIFO/R_empty
add wave -noupdate -expand -group FIFO /system_tb/DUT/ASYNC_FIFO/R_ptr
add wave -noupdate -expand -group FIFO /system_tb/DUT/ASYNC_FIFO/W_ptr
add wave -noupdate -expand -group FIFO /system_tb/DUT/ASYNC_FIFO/W_addr
add wave -noupdate -expand -group FIFO /system_tb/DUT/ASYNC_FIFO/R_addr
add wave -noupdate -expand -group FIFO /system_tb/DUT/ASYNC_FIFO/wq2_rptr
add wave -noupdate -expand -group FIFO /system_tb/DUT/ASYNC_FIFO/rq2_wptr
add wave -noupdate -expand -group ALU -color Magenta /system_tb/DUT/ALU/CLK
add wave -noupdate -expand -group ALU -color Magenta /system_tb/DUT/ALU/RST
add wave -noupdate -expand -group ALU /system_tb/DUT/ALU/A
add wave -noupdate -expand -group ALU /system_tb/DUT/ALU/B
add wave -noupdate -expand -group ALU /system_tb/DUT/ALU/EN
add wave -noupdate -expand -group ALU /system_tb/DUT/ALU/ALU_FUN
add wave -noupdate -expand -group ALU /system_tb/DUT/ALU/ALU_OUT
add wave -noupdate -expand -group ALU /system_tb/DUT/ALU/OUT_VALID
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2228018852741 fs} 0}
quietly wave cursor active 1
configure wave -namecolwidth 337
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits fs
update
WaveRestoreZoom {0 fs} {113816633344 fs}
