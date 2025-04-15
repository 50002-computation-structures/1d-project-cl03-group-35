set projDir "./vivado"
set projName "LIGHTOUT"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir"]} { file delete -force "$projDir" }
create_project $projName "$projDir" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "./source/alchitry_top.sv" "./source/reset_conditioner.sv" "./source/simple_ram.sv" "./source/button_map.sv" "./source/counter.sv" "./source/pipeline.sv" "./source/edge_detector.sv" "./source/instruction_ROM.sv" "./source/cu.sv" "./source/alu.sv" "./source/shifter.sv" "./source/x_bit_left_shifter.sv" "./source/mux_2.sv" "./source/mux_4.sv" "./source/multiplier.sv" "./source/fa.sv" "./source/bit_reverse.sv" "./source/bool.sv" "./source/compare.sv" "./source/adder.sv" "./source/manual_tester.sv" "./source/button_conditioner_matrix.sv" "./source/multi_seven_seg.sv" "./source/decoder.sv" "./source/seven_seg.sv" "./source/bin_to_dec.sv" "./source/multi_word_seg.sv" "./source/letter_seg.sv" "./source/button_conditioner.sv" "./source/carry_skip_adder_4bit.sv" "./source/rca.sv" "./source/csa.sv" "./source/csa_adder.sv" "./source/lucid_globals.sv" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "./constraint/alchitry.xdc" "./constraint/au_props.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
