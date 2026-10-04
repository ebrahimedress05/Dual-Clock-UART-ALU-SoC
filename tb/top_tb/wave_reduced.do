onerror {resume}
quietly WaveActivateNextPane {} 0

# ====================================================================
# 1. CLOCKS & RESET
# ====================================================================
add wave -noupdate -expand -group "1. CLOCKS & RST" -color Magenta /system_tb/DUT/REF_CLK
add wave -noupdate -expand -group "1. CLOCKS & RST" -color Cyan    /system_tb/DUT/UART_CLK
add wave -noupdate -expand -group "1. CLOCKS & RST" -color Coral   /system_tb/DUT/RST

# ====================================================================
# 2. UART PHYSICAL INTERFACE
# ====================================================================
add wave -noupdate -expand -group "2. UART PINS" -color Gold /system_tb/DUT/RX_IN
add wave -noupdate -expand -group "2. UART PINS" -color Gold /system_tb/DUT/TX_OUT

# ====================================================================
# 3. CONTROLLER FSM (Command Decoding)
# ====================================================================
add wave -noupdate -expand -group "3. FSM CONTROLLER" -color Yellow -radix ascii       /system_tb/DUT/SYS_CTRL/current_state
add wave -noupdate -expand -group "3. FSM CONTROLLER" -color Green                     /system_tb/DUT/SYS_CTRL/RX_D_VLD
add wave -noupdate -expand -group "3. FSM CONTROLLER" -color Green  -radix hexadecimal /system_tb/DUT/SYS_CTRL/RX_P_Data

# ====================================================================
# 4. REGISTER FILE (Storage Verification)
# ====================================================================
add wave -noupdate -expand -group "4. REG FILE" -color Orange                    /system_tb/DUT/regfile/WrEn
add wave -noupdate -expand -group "4. REG FILE" -color Orange                    /system_tb/DUT/regfile/RdEN
add wave -noupdate -expand -group "4. REG FILE" -radix hexadecimal               /system_tb/DUT/regfile/Address
add wave -noupdate -expand -group "4. REG FILE" -color Cyan   -radix hexadecimal /system_tb/DUT/regfile/WrData
add wave -noupdate -expand -group "4. REG FILE" -color Cyan   -radix hexadecimal /system_tb/DUT/regfile/RdData

# ====================================================================
# 5. ALU UNIT (Computation Verification)
# ====================================================================
add wave -noupdate -expand -group "5. ALU ENGINE" -color Orange                    /system_tb/DUT/ALU/EN
add wave -noupdate -expand -group "5. ALU ENGINE" -radix hexadecimal               /system_tb/DUT/ALU/ALU_FUN
add wave -noupdate -expand -group "5. ALU ENGINE" -radix decimal                   /system_tb/DUT/ALU/A
add wave -noupdate -expand -group "5. ALU ENGINE" -radix decimal                   /system_tb/DUT/ALU/B
add wave -noupdate -expand -group "5. ALU ENGINE" -color Green  -radix hexadecimal /system_tb/DUT/ALU/ALU_OUT
add wave -noupdate -expand -group "5. ALU ENGINE" -color Green                     /system_tb/DUT/ALU/OUT_VALID

# ====================================================================
# 6. TX STREAM & FIFO FLOW
# ====================================================================
add wave -noupdate -expand -group "6. TX FLOW" -color Green  -radix hexadecimal /system_tb/DUT/SYS_CTRL/TX_P_DATA
add wave -noupdate -expand -group "6. TX FLOW" -color Green                     /system_tb/DUT/SYS_CTRL/TX_D_VLD
add wave -noupdate -expand -group "6. TX FLOW" -color Yellow                    /system_tb/DUT/ASYNC_FIFO/R_empty

# ====================================================================
# 7. ERROR DETECTION FLAGS
# ====================================================================
add wave -noupdate -expand -group "7. ERROR FLAGS" -color Coral /system_tb/DUT/parity_error
add wave -noupdate -expand -group "7. ERROR FLAGS" -color Coral /system_tb/DUT/stop_error

# ====================================================================
# DISPLAY & ZOOM CONFIGURATION
# ====================================================================
TreeUpdate [SetDefaultTree]
configure wave -namecolwidth 160
configure wave -valuecolwidth 90
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 8
configure wave -childrowmargin 4
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us

# Quick Zoom Macros
proc c1 {} { WaveRestoreZoom {250 us} {580 us} }
proc c2 {} { WaveRestoreZoom {850 us} {1150 us} }
proc c3 {} { WaveRestoreZoom {1300 us} {1600 us} }
proc c4 {} { WaveRestoreZoom {1750 us} {2050 us} }
proc c5 {} { WaveRestoreZoom {2100 us} {2250 us} }
proc c6 {} { WaveRestoreZoom {2260 us} {2420 us} }

WaveRestoreZoom {250 us} {580 us}
update