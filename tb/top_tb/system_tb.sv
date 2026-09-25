`timescale 1ns/1fs

module system_tb ();

/////////////////////////////////////////////////////////
///////////////////// Parameters ////////////////////////
/////////////////////////////////////////////////////////

// Clock periods
parameter REF_period   = 20.0;    // 50 MHz Reference Clock
parameter UART_period  = 271.267; // 3.6864 MHz UART Clock

// Bit Period for UART frame with default Prescale = 32
localparam time BIT_PERIOD = 8680.55; 

/////////////////////////////////////////////////////////
//////////////////// DUT Signals ////////////////////////
/////////////////////////////////////////////////////////

    reg        RX_IN_tb;
    reg        REF_CLK_tb;
    reg        UART_CLK_tb;
    reg        RST_tb;
    wire       TX_OUT_tb;
    wire       parity_error_tb; 
    wire       stop_error_tb;

    // Test Bench Verification Counters
    integer pass_count = 0;
    integer fail_count = 0;

////////////////////////////////////////////////////////
////////////////// Clock Generator  ////////////////////
////////////////////////////////////////////////////////

// 1. Reference Clock Generator (50 MHz)
always #(REF_period / 2.0) REF_CLK_tb = ~REF_CLK_tb;

// 2. UART Clock Generator (3.6864 MHz)
always #(UART_period / 2.0) UART_CLK_tb = ~UART_CLK_tb;

////////////////////////////////////////////////////////
/////////////////// DUT Instantiation //////////////////
////////////////////////////////////////////////////////

Final_System DUT (
    .RX_IN(RX_IN_tb),
    .REF_CLK(REF_CLK_tb),
    .UART_CLK(UART_CLK_tb),
    .RST(RST_tb),
    .TX_OUT(TX_OUT_tb),
    .parity_error(parity_error_tb),
    .stop_error(stop_error_tb)
);

////////////////////////////////////////////////////////
////////////////// Initial Block /////////////////////// 
////////////////////////////////////////////////////////

initial begin
    // Format $time output: nanoseconds, 2 decimal places, " ns" suffix
    $timeformat(-9, 2, " ns", 15);

    $display("\n=====================================================================================");
    $display("--------------------------- STARTING SYSTEM TESTBENCH ---------------------------------");
    $display("========================================================================================");

    // --------------------------------------------------
    // Step 0: Signal Initialization & Reset Assertion
    // --------------------------------------------------
    RX_IN_tb    = 1'b1; // UART bus idle level is High
    REF_CLK_tb  = 1'b0;
    UART_CLK_tb = 1'b0;
    RST_tb      = 1'b1;
    
    #100;
    RST_tb = 1'b0;
    #300;
    RST_tb = 1'b1;
    $display("[TIME: %t] Reset released. System initialized.", $time);
    #1000;

    // --------------------------------------------------
    // Step 1: RegFile Write & Read Operations
    // --------------------------------------------------
    $display("\n[TIME: %t] --- Test 1: Writing 0x55 to Addr 0x04, then Reading back ---", $time);
    
    // Write 0x55 to Address 0x04
    send_uart_frame(8'hAA, 1'b1, 1'b0); // Write Command
    send_uart_frame(8'h04, 1'b1, 1'b0); // Target Address
    send_uart_frame(8'h55, 1'b1, 1'b0); // Data Payload
    #10000;

    // Read back from Address 0x04
    send_uart_frame(8'hBB, 1'b1, 1'b0); // Read Command
    send_uart_frame(8'h04, 1'b1, 1'b0); // Target Address
    
    check_uart_frame(8'h55, 1'b1, 1'b0); // Auto Check Expected Read Output

    // --------------------------------------------------
    // Step 2: ALU Operation - Addition (Opcode: 0x00)
    // Operation: 10 + 5 = 15 (0x000F)
    // --------------------------------------------------
    $display("\n[TIME: %t] --- Test 2: ALU Operands (ADDITION: 10 + 5) ---", $time);
    
    send_uart_frame(8'hCC, 1'b1, 1'b0); // ALU Command with Operands
    send_uart_frame(8'd10, 1'b1, 1'b0); // Operand A
    send_uart_frame(8'd5,  1'b1, 1'b0); // Operand B
    send_uart_frame(8'h00, 1'b1, 1'b0); // ADD Opcode (0x00)
    
    check_uart_frame(8'h0F, 1'b1, 1'b0); // Expected Low Byte: 0x0F
    check_uart_frame(8'h00, 1'b1, 1'b0); // Expected High Byte: 0x00

    // --------------------------------------------------
    // Step 3: ALU Operation - Subtraction (Opcode: 0x01)
    // Operation: 10 - 5 = 5 (0x0005)
    // --------------------------------------------------
    $display("\n[TIME: %t] --- Test 3: ALU NO Operands (SUBTRACTION: 10 - 5) ---", $time);
    
    send_uart_frame(8'hDD, 1'b1, 1'b0); // ALU NO Operands Command
    send_uart_frame(8'h01, 1'b1, 1'b0); // SUB Opcode (0x01)
    
    check_uart_frame(8'h05, 1'b1, 1'b0); // Expected Low Byte: 0x05
    check_uart_frame(8'h00, 1'b1, 1'b0); // Expected High Byte: 0x00

    // --------------------------------------------------
    // Step 4: ALU Operation - Multiplication (Opcode: 0x02)
    // Operation: 10 * 5 = 50 (0x0032)
    // --------------------------------------------------
    $display("\n[TIME: %t] --- Test 4: ALU NO Operands (MULTIPLICATION: 10 * 5) ---", $time);
    
    send_uart_frame(8'hDD, 1'b1, 1'b0); // ALU NO Operands Command
    send_uart_frame(8'h02, 1'b1, 1'b0); // MULT Opcode (0x02)
    
    check_uart_frame(8'h32, 1'b1, 1'b0); // Expected Low Byte: 0x32 (50 in decimal)
    check_uart_frame(8'h00, 1'b1, 1'b0); // Expected High Byte: 0x00

    // --------------------------------------------------
    // Step 5: Parity Error Injection Test
    // --------------------------------------------------
    $display("\n[TIME: %t] --- Test 5: Error Injection - Parity Error Test ---", $time);
    
    // Send Command 0xAA with Intentionally Corrupted Parity
    send_corrupted_frame(8'hAA, 1'b1, 1'b0, 1'b1, 1'b0); 
    #5000;
    
    if (parity_error_tb === 1'b1) begin
        $display("[PASS @ %t] Parity Error Flag correctly asserted by DUT!", $time);
        pass_count = pass_count + 1;
    end else begin
        $display("[FAIL @ %t] Parity Error Flag NOT asserted by DUT!", $time);
        fail_count = fail_count + 1;
    end
    #20000;

    // --------------------------------------------------
    // Step 6: Framing (Stop Bit) Error Injection Test
    // --------------------------------------------------
    $display("\n[TIME: %t] --- Test 6: Error Injection - Framing Error Test ---", $time);
    
    // Send Command 0xAA with Intentionally Corrupted Stop Bit
    send_corrupted_frame(8'hAA, 1'b1, 1'b0, 1'b0, 1'b1); // Invalid Stop bit
    #5000;
    
    if (stop_error_tb === 1'b1) begin
        $display("[PASS @ %t] Stop Bit Error Flag correctly asserted by DUT!", $time);
        pass_count = pass_count + 1;
    end else begin
        $display("[FAIL @ %t] Stop Bit Error Flag NOT asserted by DUT!", $time);
        fail_count = fail_count + 1;
    end
    #20000;

    // --------------------------------------------------
    // Final Test Summary
    // --------------------------------------------------
    #50000;
    $display("\n=====================================================================================");
    $display("[TIME: %t] TEST SUMMARY: PASSED = %0d | FAILED = %0d", $time, pass_count, fail_count);
    if (fail_count == 0)
        $display(">>> SUCCESS: ALL ADVANCED TESTS PASSED SUCCESSFULLY! <<<");
    else
        $display(">>> FAILURE: SOME TESTS FAILED! CHECK TRANSCRIPT LOG. <<<");
    $display("========================================================================================\n");
    $stop;
end 

////////////////////////////////////////////////////////
/////////////////// UART Send Task /////////////////////
////////////////////////////////////////////////////////

task send_uart_frame(
    input [7:0] data_in,
    input       par_en,
    input       par_typ
);
    begin
        send_corrupted_frame(data_in, par_en, par_typ, 1'b0, 1'b0);
    end
endtask

////////////////////////////////////////////////////////
///////// UART Send Corrupted Frame Task ///////////////
////////////////////////////////////////////////////////

task send_corrupted_frame(
    input [7:0] data_in,
    input       par_en,
    input       par_typ,
    input       corrupt_parity,
    input       corrupt_stop
);
    integer i;
    reg     parity_bit;
    begin
        // Calculate Parity
        if (par_typ == 1'b0)
            parity_bit = ^data_in;   // Even Parity
        else
            parity_bit = ~^data_in;  // Odd Parity

        // Inject Parity Error if requested
        if (corrupt_parity)
            parity_bit = ~parity_bit;

        // 1. Start Bit
        RX_IN_tb = 1'b0;
        #BIT_PERIOD;

        // 2. 8 Data Bits
        for (i = 0; i < 8; i = i + 1) begin
            RX_IN_tb = data_in[i];
            #BIT_PERIOD;
        end

        // 3. Parity Bit
        if (par_en) begin
            RX_IN_tb = parity_bit;
            #BIT_PERIOD;
        end

        // 4. Stop Bit (Corrupt to logic 0 if requested, else normal 1)
        RX_IN_tb = corrupt_stop ? 1'b0 : 1'b1;
        #BIT_PERIOD;

        // Return RX line to Idle High
        RX_IN_tb = 1'b1;
    end
endtask

////////////////////////////////////////////////////////
///////////////// UART Check Task //////////////////////
////////////////////////////////////////////////////////

task check_uart_frame(
    input [7:0] expected_data,
    input       par_en,
    input       par_typ
);
    reg [7:0] rx_data;
    reg       parity_bit;
    reg       expected_parity;
    integer   i;
    begin
        // 1. Wait for Start Bit (Falling edge on TX_OUT)
        @(negedge TX_OUT_tb);
        
        // Sample at middle of Start Bit
        #(BIT_PERIOD / 2.0);
        if (TX_OUT_tb !== 1'b0) begin
            $display("[ERROR @ %t] Start bit glitch detected on TX_OUT!", $time);
        end
        
        // 2. Sample 8 Data Bits
        for (i = 0; i < 8; i = i + 1) begin
            #BIT_PERIOD;
            rx_data[i] = TX_OUT_tb;
        end

        // 3. Check Parity Bit
        if (par_en) begin
            #BIT_PERIOD;
            parity_bit = TX_OUT_tb;
            expected_parity = (par_typ == 1'b0) ? ^rx_data : ~^rx_data;
            if (parity_bit !== expected_parity) begin
                $display("[ERROR @ %t] Parity Mismatch on TX_OUT! Expected: %b, Got: %b", $time, expected_parity, parity_bit);
            end
        end

        // 4. Check Stop Bit
        #BIT_PERIOD;
        if (TX_OUT_tb !== 1'b1) begin
            $display("[ERROR @ %t] Framing Error! Stop bit is not High on TX_OUT.", $time);
        end

        // 5. Compare Payload
        if (rx_data === expected_data) begin
            $display("[PASS @ %t] Correct Data Received on TX_OUT: 0x%02X", $time, rx_data);
            pass_count = pass_count + 1;
        end else begin
            $display("[FAIL @ %t] Data Mismatch on TX_OUT! Expected: 0x%02X, Got: 0x%02X", $time, expected_data, rx_data);
            fail_count = fail_count + 1;
        end
    end
endtask

endmodule