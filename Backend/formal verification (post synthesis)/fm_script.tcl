###################################################################
########################### Variables #############################
###################################################################
set TTLIB "/home/IC/Projects/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/Projects/std_cells/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"
set SSLIB "/home/IC/Projects/std_cells/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"

###################################################################
############################ Guidance #############################
###################################################################

# Synopsys setup variable
set synopsys_auto_setup true

# Formality Setup File
set_svf "/home/IC/Projects/syn/system.svf"

###################################################################
###################### Reference Container ########################
###################################################################

# Read Reference Design Verilog Files
read_verilog -container Ref "/home/IC/Projects/rtl/*.v"
read_sverilog -container Ref "/home/IC/Projects/rtl/*.sv"
# Read Reference technology libraries
read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

# set the top Reference Design 
set_reference_design system_top
set_top system_top

###################################################################
#################### Implementation Container #####################
###################################################################

# Read Implementation Design Files
read_verilog -container Imp -netlist "/home/IC/Projects/syn/system.v"

# Read Implementation technology libraries
read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

# set the top Implementation Design
set_implementation_design system_top
set_top system_top

###################### Matching Compare points ####################

match

######################### Run Verification ########################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 
report_passing_points > "passing_points.rpt"
report_failing_points > "failing_points.rpt"
report_aborted_points > "aborted_points.rpt"
report_unverified_points > "unverified_points.rpt"


start_gui

