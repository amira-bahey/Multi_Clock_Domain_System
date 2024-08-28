#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Mon Aug 26 15:33:17 2024                #
#                                                     #
#######################################################

#@(#)CDS: First Encounter v08.10-p004_1 (32bit) 11/04/2008 14:34 (Linux 2.6)
#@(#)CDS: NanoRoute v08.10-p008 NR081027-0018/USR58-UB (database version 2.30, 67.1.1) {superthreading v1.11}
#@(#)CDS: CeltIC v08.10-p002_1 (32bit) 10/23/2008 22:04:14 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CTE v08.10-p016_1 (32bit) Oct 26 2008 15:11:51 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CPE v08.10-p009

setUIVar rda_Input ui_topcell system_top_dft
setUIVar rda_Input ui_netlist /home/ahesham/Projects/System_pnr/DFT/netlists/SYS_TOP.v
setUIVar rda_Input ui_timelib,min /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib
setUIVar rda_Input ui_timelib,max /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib
setUIVar rda_Input ui_timelib /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib
setUIVar rda_Input ui_leffile {/home/ahesham/Projects/System_pnr/std_cells/lef/tsmc13fsg_7lm_tech.lef /home/ahesham/Projects/System_pnr/std_cells/lef/tsmc13_m_macros.lef /home/ahesham/Projects/System_pnr/pnr/import/SYS_TOP.lef}
setUIVar rda_Input ui_captbl_file /home/ahesham/Projects/System_pnr/std_cells/captables/tsmc13fsg.capTbl
setUIVar rda_Input ui_timingcon_file /home/ahesham/Projects/System_pnr/DFT/sdc/SYS_TOP.sdc
setUIVar rda_Input ui_pwrnet VDD
setUIVar rda_Input ui_gndnet VSS
commitConfig
create_library_set -name min_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib"
create_library_set -name max_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib"
create_library_set -name typ_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib"
create_constraint_mode -name func_mode -sdc_files {../DFT/sdc/SYS_TOP_func.sdc}
create_constraint_mode -name scan_mode -sdc_files {../DFT/sdc/SYS_TOP_scan.sdc}
create_constraint_mode -name capture_mode -sdc_files {../DFT/sdc/SYS_TOP_capture.sdc}
create_rc_corner -name RCcorner -cap_table "../std_cells/captables/tsmc13fsg.capTbl"
create_delay_corner -name min_corner -library_set min_library -rc_corner RCcorner
create_delay_corner -name max_corner -library_set max_library -rc_corner RCcorner
create_analysis_view -name setup1_analysis_view -delay_corner max_corner -constraint_mode func_mode
create_analysis_view -name hold1_analysis_view  -delay_corner min_corner -constraint_mode func_mode
create_analysis_view -name setup_analysis_view3 -delay_corner max_corner -constraint_mode capture_mode
create_analysis_view -name hold_analysis_view3 -delay_corner min_corner -constraint_mode capture_mode
create_analysis_view -name setup_analysis_view2 -delay_corner max_corner -constraint_mode scan_mode
create_analysis_view -name hold_analysis_view2 -delay_corner min_corner -constraint_mode scan_mode
set_analysis_view -setup {setup1_analysis_view setup_analysis_view2 setup_analysis_view3} -hold {hold1_analysis_view hold_analysis_view2 hold_analysis_view3}
floorPlan -d 240.47 160.47 4.0 4.0 4.0 4.0
addRing -spacing_bottom 0.5 -width_left 1 -width_bottom 1 -width_top 1 -spacing_top 0.5 -layer_bottom METAL5 -stacked_via_top_layer METAL7 -width_right 1 -around core -jog_distance 0.205 -offset_bottom 0.205 -layer_top METAL5 -threshold 0.205 -offset_left 0.205 -spacing_right 0.5 -spacing_left 0.5 -offset_right 0.205 -offset_top 0.205 -layer_right METAL6 -nets {VSS VDD } -stacked_via_bottom_layer METAL1 -layer_left METAL6
addStripe -block_ring_top_layer_limit METAL7 -max_same_layer_jog_length 0.8 -padcore_ring_bottom_layer_limit METAL5 -set_to_set_distance 60 -stacked_via_top_layer METAL7 -padcore_ring_top_layer_limit METAL7 -spacing 0.5 -merge_stripes_value 0.205 -layer METAL6 -block_ring_bottom_layer_limit METAL5 -width 1 -nets {VSS VDD } -stacked_via_bottom_layer METAL1
selectWire 5.6000 1.3950 6.6000 158.9150 6 VDD
deleteSelectedFromFPlan
sroute -connect { blockPin padPin padRing corePin } -layerChangeRange { 1 6 } -blockPinTarget { nearestRingStripe nearestTarget } -padPinPortConnect { allPort oneGeom } -checkAlignedSecondaryPin 1 -blockPin useLef -allowJogging 1 -crossoverViaBottomLayer 1 -allowLayerChange 1 -targetViaTopLayer 7 -crossoverViaTopLayer 7 -targetViaBottomLayer 1 -nets { VSS VDD }
placeDesign -inPlaceOpt -prePlaceOpt
addTieHiLo -cell TIELOM -prefix LTIE
addTieHiLo -cell TIEHIM -prefix HTIE
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
setDrawView fplan
setDrawView ameba
setDrawView place
verifyGeometry -noMinArea
zoomIn
zoomIn
panPage -1 0
zoomIn
zoomIn
panPage -1 0
panPage 0 1
panPage 1 0
zoomOut
selectInst U8/U0/U261
deselectAll
selectInst U8/U0/U304
deselectAll
selectInst U8/U0/U304
deselectAll
selectInst U8/U0/U304
deselectAll
selectInst U8/U0/U261
deselectAll
selectMarker 4.9800 89.8900 6.1850 90.0700 1 1 2
deselectAll
selectInst U8/U0/U304
deselectAll
selectInst U8/U0/U304
deselectAll
selectInst U8/U0/U261
setDrawView place
setDrawView fplan
deselectAll
setDrawView ameba
setDrawView place
selectInst U8/U0/U304
uiSetTool move
setObjFPlanBox Instance U8/U0/U304 5.3645 90.2 8.6445 93.07
setObjFPlanBox Instance U8/U0/U304 5.374 90.2 8.654 93.07
panPage 0 -1
zoomIn
zoomIn
panPage -1 0
panPage -1 0
panPage 1 0
zoomIn
panPage -1 0
panPage 0 1
panPage 1 0
panPage -1 0
zoomOut
panPage 1 0
panPage -1 0
setObjFPlanBox Instance U8/U0/U304 29.224 101.719 32.504 104.589
clearDrc
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
clearClockDomains
setClockDomains -all
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix system_top_dft_preCTS -outDir timingReports
clockDesign -genSpecOnly Clock.ctstch
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS
clearClockDomains
setClockDomains -all
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix system_top_dft_postCTS -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix system_top_dft_postCTS -outDir timingReports
optDesign -postCTS -hold
verifyGeometry -noMinArea
clearDrc
refinePlace -preserveRouting
setNanoRouteMode -routeWithEco true
setNanoRouteMode -droutePostRouteSwapVia true
globalDetailRoute
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyProcessAntenna -reportfile system_top_dft.antenna.rpt -leffile system_top_dft.antenna.lef -error 1000
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix system_top_dft_postRoute -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix system_top_dft_postRoute -outDir timingReports
addFiller -cell {FILL1M FILL2M FILL4M FILL8M FILL16M FILL32M FILL64M} -prefix FILLER -markFixed
setDrawView ameba
setDrawView fplan
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix system_top_dft_postRoute -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix system_top_dft_postRoute -outDir timingReports
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
checkFiller -highlight true
saveDesign /home/ahesham/Projects/System_pnr/pnr/system_top_dft_chip_f.enc
saveNetlist export/SYS_TOP.v
saveNetlist export/SYS_TOP_pg.v -includePowerGround
rcOut -spf export/SYS_TOP.spf
delayCal -sdf export/SYS_TOP.sdf -version 3.0
report_power -outfile report/power.rpt
streamOut export/SYS_TOP.gds -mapFile ./import/gds2InLayer.map -libName DesignLib -stripes 1 -units 2000 -mode ALL
setDrawView place
setDrawView fplan
setDrawView ameba
setDrawView place
setDrawView ameba
setDrawView fplan
setDrawView place
setDrawView ameba
setDrawView fplan
setDrawView ameba
