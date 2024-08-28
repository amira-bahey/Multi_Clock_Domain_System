
# Constraints
# ----------------------------------------------------------------------------
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
# 6. set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

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

set CLK_NAME_REF REF_CLK
set CLK_PER_REF 20
set CLK_NAME_UART UART_CLK
set CLK_PER_UART 271.26736
set GEN_NAME_ALU ALU_CLK
set GEN_NAME_TX TX_CLK
set GEN_NAME_RX RX_CLK

set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1
set CLK_LAT 0
set CLK_RISE 0.05
set CLK_FALL 0.05

create_clock -name $CLK_NAME_REF -period $CLK_PER_REF -waveform "0 [expr $CLK_PER_REF/2]" [get_ports REF_CLK]
create_clock -name $CLK_NAME_UART -period $CLK_PER_UART -waveform "0 [expr $CLK_PER_UART/2]" [get_ports UART_CLK]

create_generated_clock -master_clock $CLK_NAME_REF -source [get_ports REF_CLK] \
                       -name $GEN_NAME_ALU [get_ports U2/CLK] -divide_by 1

create_generated_clock -master_clock $CLK_NAME_UART -source [get_ports UART_CLK] \
                       -name $GEN_NAME_TX [get_ports {U4/TX_CLK U7/CLK U8/R_CLK}] -divide_by 32

create_generated_clock -master_clock $CLK_NAME_UART -source [get_ports UART_CLK] \
                       -name $GEN_NAME_RX [get_ports U4/TX_CLK] -divide_by 1

set_clock_latency $CLK_LAT [get_clocks $CLK_NAME_REF]
set_clock_latency $CLK_LAT [get_clocks $CLK_NAME_UART]
set_clock_latency $CLK_LAT [get_clocks $GEN_NAME_ALU]
set_clock_latency $CLK_LAT [get_clocks $GEN_NAME_TX]
set_clock_latency $CLK_LAT [get_clocks $GEN_NAME_RX]

set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK_NAME_REF]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK_NAME_UART]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $GEN_NAME_ALU]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $GEN_NAME_TX]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $GEN_NAME_RX]

set_clock_uncertainty -hold $CLK_HOLD_SKEW [get_clocks $CLK_NAME_REF]
set_clock_uncertainty -hold $CLK_HOLD_SKEW [get_clocks $CLK_NAME_UART]
set_clock_uncertainty -hold $CLK_HOLD_SKEW [get_clocks $GEN_NAME_ALU]
set_clock_uncertainty -hold $CLK_HOLD_SKEW [get_clocks $GEN_NAME_TX]
set_clock_uncertainty -hold $CLK_HOLD_SKEW [get_clocks $GEN_NAME_RX]

		   
set_clock_transition -rise $CLK_RISE [get_clocks $CLK_NAME_REF]	
set_clock_transition -rise $CLK_RISE [get_clocks $CLK_NAME_UART]	
set_clock_transition -rise $CLK_RISE [get_clocks $GEN_NAME_ALU]	
set_clock_transition -rise $CLK_RISE [get_clocks $GEN_NAME_TX]	
set_clock_transition -rise $CLK_RISE [get_clocks $GEN_NAME_RX]	

set_clock_transition -fall $CLK_FALL [get_clocks $CLK_NAME_REF]	
set_clock_transition -fall $CLK_FALL [get_clocks $CLK_NAME_UART]	
set_clock_transition -fall $CLK_FALL [get_clocks $GEN_NAME_ALU]	
set_clock_transition -fall $CLK_FALL [get_clocks $GEN_NAME_TX]	
set_clock_transition -fall $CLK_FALL [get_clocks $GEN_NAME_RX]	

#################################### scanclock ################################################
set DFT_CLK_NAME dft_clk
set DFT_CLK_PER 100
set DFT_SETUP_SKEW 0.2
set DFT_HOLD_SKEW 0.1
set DFT_LAT 0
set DFT_RISE 0.05
set DFT_FALL 0.05

create_clock -name $DFT_CLK_NAME -period $DFT_CLK_PER -waveform "0 [expr $DFT_CLK_PER/2]" [get_ports scan_clk]

set_clock_uncertainty -setup $DFT_SETUP_SKEW [get_clocks $DFT_CLK_NAME]
set_clock_uncertainty -hold $DFT_HOLD_SKEW [get_clocks $DFT_CLK_NAME]

set_clock_latency $DFT_LAT [get_clocks $DFT_CLK_NAME]

set_clock_transition -rise $DFT_RISE [get_clocks $DFT_CLK_NAME]
set_clock_transition -fall $DFT_FALL [get_clocks $DFT_CLK_NAME]


	
	
	
####################################################################################
           #########################################################
                  #### Section 2 : Clocks Relationships ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous -group [get_clocks "$CLK_NAME_REF $GEN_NAME_ALU"] \
                               -group [get_clocks "$CLK_NAME_UART $GEN_NAME_TX $GEN_NAME_RX"] \
                               -group [get_clocks "$DFT_CLK_NAME"]

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

set in_delay_uart  [expr 0.2*$CLK_PER_UART]
set out_delay_uart [expr 0.2*$CLK_PER_UART]

set in_delay_dft  [expr 0.2*$DFT_CLK_PER]
set out_delay_dft [expr 0.2*$DFT_CLK_PER]

#Constrain Input Paths

set_input_delay $in_delay_uart -clock $CLK_NAME_REF [get_ports RX_IN]
set_input_delay $in_delay_dft -clock $DFT_CLK_NAME [get_ports {SI SE test_mode}]

#Constrain Output Paths

set_output_delay $out_delay_uart -clock $CLK_NAME_UART [get_ports {TX_OUT PAR_ERR STP_ERR}]
set_output_delay $out_delay_dft -clock $DFT_CLK_NAME [get_ports SO]
####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y \
                 [get_ports {RX_IN SI SE test_mode}] 

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################
set_load 0.1 [get_ports {TX_OUT PAR_ERR STP_ERR SO}]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
                         -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################

set_wire_load_model -name tsmc13_wl30 -library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

 #########################################################
                  #### Section 8 : set_case_analysis ####
           #########################################################
####################################################################################

set_case_analysis 1 [get_ports test_mode]


