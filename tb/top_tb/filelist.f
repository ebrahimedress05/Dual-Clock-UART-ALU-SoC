// =============================================================================
// RTL: Clock Domain 1 (REF_CLK Domain)
// =============================================================================
../../rtl/clock_domain1/alu/ALU.v
../../rtl/clock_domain1/clock_gating/CLK_GATE.v
../../rtl/clock_domain1/regfile/Register_File.v
../../rtl/clock_domain1/sys_ctrl/SYS_CTRL.sv

// =============================================================================
// RTL: Clock Domain 2 (UART_CLK Domain)
// =============================================================================
../../rtl/clock_domain2/clock_divider/ClkDiv.v
../../rtl/clock_domain2/clock_divider/Clk_Div_Mux.v
../../rtl/clock_domain2/pulse_gen/PULSE_GEN.v

// UART RX Submodules
../../rtl/clock_domain2/uart_rx/data_sampling.v
../../rtl/clock_domain2/uart_rx/deserializer.v
../../rtl/clock_domain2/uart_rx/edge_bit_counter.v
../../rtl/clock_domain2/uart_rx/FSM_RX.sv
../../rtl/clock_domain2/uart_rx/parity_check.v
../../rtl/clock_domain2/uart_rx/stop_check.v
../../rtl/clock_domain2/uart_rx/strt_check.v
../../rtl/clock_domain2/uart_rx/UART_RX.v

// UART TX Submodules
../../rtl/clock_domain2/uart_tx/FSM_TX.sv
../../rtl/clock_domain2/uart_tx/MUX.v
../../rtl/clock_domain2/uart_tx/Parity_calc.v
../../rtl/clock_domain2/uart_tx/serializer.v
../../rtl/clock_domain2/uart_tx/UART_TX.v

// =============================================================================
// RTL: Synchronizers & Async FIFO
// =============================================================================
../../rtl/sync/rst_sync/RST_SYNC.v
../../rtl/sync/data_sync/Data_Sync.v
../../rtl/sync/async_fifo/DF_SYNC.v
../../rtl/sync/async_fifo/FIFO_MEM_CNTRL.v
../../rtl/sync/async_fifo/FIFO_rptr.v
../../rtl/sync/async_fifo/FIFO_wptr.v
../../rtl/sync/async_fifo/ASYNC_FIFO.v

// =============================================================================
// RTL: Top Modules
// =============================================================================
../../rtl/top/NOT.v
../../rtl/top/Final_System.v

// =============================================================================
// Testbench
// =============================================================================
./system_tb.sv