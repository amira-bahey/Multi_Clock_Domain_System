## 
## Cadence First Encounter "v08.10-p004_1 ((32bit) 11/04/2008 14:34 (Linux 2.6))"
## Mon Aug 26 15:57:25 2024
## 
set sdc_version 1.4
current_design system_top_dft
create_clock [get_ports {UART_CLK}]  -name UART_CLK -period 271.267 -waveform {0 135.634}
set_clock_latency -min 0 [get_clocks {UART_CLK}]
set_clock_latency -max 0 [get_clocks {UART_CLK}]
set_clock_transition  -rise -min 0.05 [get_clocks {UART_CLK}]
set_clock_transition  -rise -max 0.05 [get_clocks {UART_CLK}]
set_clock_transition  -fall -min 0.05 [get_clocks {UART_CLK}]
set_clock_transition  -fall -max 0.05 [get_clocks {UART_CLK}]
create_clock [get_ports {scan_clk}]  -name dft_clk -period 100 -waveform {0 50}
set_clock_latency -min 0 [get_clocks {dft_clk}]
set_clock_latency -max 0 [get_clocks {dft_clk}]
set_clock_transition  -rise -min 0.05 [get_clocks {dft_clk}]
set_clock_transition  -rise -max 0.05 [get_clocks {dft_clk}]
set_clock_transition  -fall -min 0.05 [get_clocks {dft_clk}]
set_clock_transition  -fall -max 0.05 [get_clocks {dft_clk}]
create_clock [get_ports {REF_CLK}]  -name REF_CLK -period 20 -waveform {0 10}
set_clock_latency -min 0 [get_clocks {REF_CLK}]
set_clock_latency -max 0 [get_clocks {REF_CLK}]
set_clock_transition  -rise -min 0.05 [get_clocks {REF_CLK}]
set_clock_transition  -rise -max 0.05 [get_clocks {REF_CLK}]
set_clock_transition  -fall -min 0.05 [get_clocks {REF_CLK}]
set_clock_transition  -fall -max 0.05 [get_clocks {REF_CLK}]
create_generated_clock -name ALU_CLK -source [get_ports {REF_CLK}] -divide_by 1 -master_clock [get_clocks {REF_CLK}] -add [get_pins {U3/U0_TLATNCAX12M/ECK}]
create_generated_clock -name TX_CLK -source [get_ports {UART_CLK}] -divide_by 32 -master_clock [get_clocks {UART_CLK}] -add [list [get_pins {{U7/Q_reg[0]/CK}}] [get_pins {{U7/Q_reg[1]/CK}}] [get_pins {{U8/U2/R_PTR_reg[2]/CK}}] [get_pins {{U8/U2/R_PTR_reg[0]/CK}}] [get_pins {{U8/U2/R_PTR_reg[1]/CK}}] [get_pins {{U8/U2/R_PTR_reg[3]/CK}}] [get_pins {{U8/U2/r_gray_out_reg[2]/CK}}] [get_pins {{U8/U2/r_gray_out_reg[1]/CK}}] [get_pins {{U8/U2/r_gray_out_reg[0]/CK}}] [get_pins {{U8/U2/r_gray_out_reg[3]/CK}}] [get_pins {{U8/D1/OUT_reg[0]/CK}}] [get_pins {{U8/D1/OUT_reg[1]/CK}}] [get_pins {{U8/D1/OUT_reg[2]/CK}}] [get_pins {{U8/D1/OUT_reg[3]/CK}}] [get_pins {{U8/D1/Q_reg[0]/CK}}] [get_pins {{U8/D1/Q_reg[1]/CK}}] [get_pins {{U8/D1/Q_reg[2]/CK}}] [get_pins {{U8/D1/Q_reg[3]/CK}}] ]
create_generated_clock -name RX_CLK -source [get_ports {UART_CLK}] -divide_by 1 -master_clock [get_clocks {UART_CLK}] -add [list [get_pins {U4/dut0/TX_OUT_reg/CK}] [get_pins {U4/dut0/P/PAR_BIT_reg/CK}] [get_pins {{U4/dut0/F/current_state_reg[1]/CK}}] [get_pins {{U4/dut0/F/current_state_reg[2]/CK}}] [get_pins {U4/dut0/F/busy_reg/CK}] [get_pins {{U4/dut0/F/current_state_reg[0]/CK}}] [get_pins {{U4/dut0/S/counter_reg[0]/CK}}] [get_pins {{U4/dut0/S/counter_reg[1]/CK}}] [get_pins {{U4/dut0/S/mem_reg[3]/CK}}] [get_pins {{U4/dut0/S/mem_reg[7]/CK}}] [get_pins {{U4/dut0/S/mem_reg[1]/CK}}] [get_pins {{U4/dut0/S/mem_reg[2]/CK}}] [get_pins {{U4/dut0/S/mem_reg[5]/CK}}] [get_pins {{U4/dut0/S/mem_reg[6]/CK}}] [get_pins {{U4/dut0/S/mem_reg[0]/CK}}] [get_pins {{U4/dut0/S/mem_reg[4]/CK}}] [get_pins {U4/dut0/S/ser_data_reg/CK}] [get_pins {{U4/dut0/S/counter_reg[3]/CK}}] [get_pins {{U4/dut0/S/counter_reg[2]/CK}}] ]
set_propagated_clock  [get_pins {U3/U0_TLATNCAX12M/ECK}]
set_propagated_clock  [get_ports {UART_CLK}]
set_propagated_clock  [get_ports {scan_clk}]
set_propagated_clock  [get_ports {REF_CLK}]
set_clock_latency -min 0 [get_clocks {ALU_CLK}]
set_clock_latency -max 0 [get_clocks {ALU_CLK}]
set_clock_transition  -rise -min 0.05 [get_clocks {ALU_CLK}]
set_clock_transition  -rise -max 0.05 [get_clocks {ALU_CLK}]
set_clock_transition  -fall -min 0.05 [get_clocks {ALU_CLK}]
set_clock_transition  -fall -max 0.05 [get_clocks {ALU_CLK}]
set_clock_latency -min 0 [get_clocks {TX_CLK}]
set_clock_latency -max 0 [get_clocks {TX_CLK}]
set_clock_transition  -rise -min 0.05 [get_clocks {TX_CLK}]
set_clock_transition  -rise -max 0.05 [get_clocks {TX_CLK}]
set_clock_transition  -fall -min 0.05 [get_clocks {TX_CLK}]
set_clock_transition  -fall -max 0.05 [get_clocks {TX_CLK}]
set_clock_latency -min 0 [get_clocks {RX_CLK}]
set_clock_latency -max 0 [get_clocks {RX_CLK}]
set_clock_transition  -rise -min 0.05 [get_clocks {RX_CLK}]
set_clock_transition  -rise -max 0.05 [get_clocks {RX_CLK}]
set_clock_transition  -fall -min 0.05 [get_clocks {RX_CLK}]
set_clock_transition  -fall -max 0.05 [get_clocks {RX_CLK}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -rise -min -pin Y -from_pin A [get_ports {RX_IN}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -fall -min -pin Y -from_pin A [get_ports {RX_IN}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -rise -max -pin Y -from_pin A [get_ports {RX_IN}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -fall -max -pin Y -from_pin A [get_ports {RX_IN}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -rise -min -pin Y -from_pin A [get_ports {SI[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -fall -min -pin Y -from_pin A [get_ports {SI[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -rise -max -pin Y -from_pin A [get_ports {SI[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -fall -max -pin Y -from_pin A [get_ports {SI[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -rise -min -pin Y -from_pin A [get_ports {SI[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -fall -min -pin Y -from_pin A [get_ports {SI[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -rise -max -pin Y -from_pin A [get_ports {SI[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -fall -max -pin Y -from_pin A [get_ports {SI[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -rise -min -pin Y -from_pin A [get_ports {SI[0]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -fall -min -pin Y -from_pin A [get_ports {SI[0]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -rise -max -pin Y -from_pin A [get_ports {SI[0]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -fall -max -pin Y -from_pin A [get_ports {SI[0]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -rise -min -pin Y -from_pin A [get_ports {SE}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -fall -min -pin Y -from_pin A [get_ports {SE}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -rise -max -pin Y -from_pin A [get_ports {SE}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -fall -max -pin Y -from_pin A [get_ports {SE}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -rise -min -pin Y -from_pin A [get_ports {test_mode}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -fall -min -pin Y -from_pin A [get_ports {test_mode}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -rise -max -pin Y -from_pin A [get_ports {test_mode}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -fall -max -pin Y -from_pin A [get_ports {test_mode}]
set_load -pin_load -max  0.1  [get_ports {SO[2]}]
set_load -pin_load -min  0.1  [get_ports {SO[2]}]
set_load -pin_load -max  0.1  [get_ports {SO[1]}]
set_load -pin_load -min  0.1  [get_ports {SO[1]}]
set_load -pin_load -max  0.1  [get_ports {SO[0]}]
set_load -pin_load -min  0.1  [get_ports {SO[0]}]
set_load -pin_load -max  0.1  [get_ports {TX_OUT}]
set_load -pin_load -min  0.1  [get_ports {TX_OUT}]
set_load -pin_load -max  0.1  [get_ports {PAR_ERR}]
set_load -pin_load -min  0.1  [get_ports {PAR_ERR}]
set_load -pin_load -max  0.1  [get_ports {STP_ERR}]
set_load -pin_load -min  0.1  [get_ports {STP_ERR}]
set_case_analysis 0 [get_ports {SE}]
set_case_analysis 1 [get_ports {test_mode}]
set_wire_load_model -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max -name tsmc13_wl30
set_wire_load_model -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min -name tsmc13_wl30
set_input_delay -add_delay 20 -clock [get_clocks {dft_clk}] [get_ports {SI[1]}]
set_input_delay -add_delay 54.2535 -clock [get_clocks {REF_CLK}] [get_ports {RX_IN}]
set_input_delay -add_delay 20 -clock [get_clocks {dft_clk}] [get_ports {SE}]
set_input_delay -add_delay 20 -clock [get_clocks {dft_clk}] [get_ports {test_mode}]
set_input_delay -add_delay 20 -clock [get_clocks {dft_clk}] [get_ports {SI[2]}]
set_input_delay -add_delay 20 -clock [get_clocks {dft_clk}] [get_ports {SI[0]}]
set_output_delay -add_delay 20 -clock [get_clocks {dft_clk}] [get_ports {SO[1]}]
set_output_delay -add_delay 54.2535 -clock [get_clocks {UART_CLK}] [get_ports {STP_ERR}]
set_output_delay -add_delay 54.2535 -clock [get_clocks {UART_CLK}] [get_ports {PAR_ERR}]
set_output_delay -add_delay 20 -clock [get_clocks {dft_clk}] [get_ports {SO[2]}]
set_output_delay -add_delay 20 -clock [get_clocks {dft_clk}] [get_ports {SO[0]}]
set_output_delay -add_delay 54.2535 -clock [get_clocks {UART_CLK}] [get_ports {TX_OUT}]
set_clock_uncertainty 0.1 -hold [get_clocks {ALU_CLK}]
set_clock_uncertainty 0.2 -setup [get_clocks {ALU_CLK}]
set_clock_uncertainty 0.1 -hold [get_clocks {UART_CLK}]
set_clock_uncertainty 0.2 -setup [get_clocks {UART_CLK}]
set_clock_uncertainty 0.1 -hold [get_clocks {REF_CLK}]
set_clock_uncertainty 0.2 -setup [get_clocks {REF_CLK}]
set_clock_uncertainty 0.1 -hold [get_clocks {dft_clk}]
set_clock_uncertainty 0.2 -setup [get_clocks {dft_clk}]
set_clock_uncertainty 0.1 -hold [get_clocks {TX_CLK}]
set_clock_uncertainty 0.2 -setup [get_clocks {TX_CLK}]
set_clock_uncertainty 0.1 -hold [get_clocks {RX_CLK}]
set_clock_uncertainty 0.2 -setup [get_clocks {RX_CLK}]
set_clock_groups -name REF_CLK_1 -asynchronous  -group  [get_clocks {ALU_CLK REF_CLK}] -group  [get_clocks {RX_CLK TX_CLK UART_CLK}] -group  [get_clocks {dft_clk}]
