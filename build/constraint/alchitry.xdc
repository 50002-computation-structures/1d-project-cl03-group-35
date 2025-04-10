set_property PACKAGE_PIN N14 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
# clk => 10000000Hz
create_clock -period 100.0 -name clk_0 -waveform {0.000 50.0} [get_ports clk]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks clk_0]

set_property PACKAGE_PIN P6 [get_ports {rst_n}]
set_property IOSTANDARD LVCMOS33 [get_ports {rst_n}]

set_property PACKAGE_PIN P15 [get_ports {usb_rx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_rx}]

set_property PACKAGE_PIN P16 [get_ports {usb_tx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_tx}]

set_property PACKAGE_PIN B6 [get_ports {io_led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_led[0]}]

set_property PACKAGE_PIN B5 [get_ports {io_led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_led[1]}]

set_property PACKAGE_PIN A5 [get_ports {io_led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_led[2]}]

set_property PACKAGE_PIN A4 [get_ports {io_led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_led[3]}]

set_property PACKAGE_PIN B4 [get_ports {io_led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_led[4]}]

set_property PACKAGE_PIN A3 [get_ports {io_led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_led[5]}]

set_property PACKAGE_PIN F4 [get_ports {io_led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_led[6]}]

set_property PACKAGE_PIN F3 [get_ports {io_led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_led[7]}]

set_property PACKAGE_PIN T2 [get_ports {led_grid[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_grid[0]}]

set_property PACKAGE_PIN P1 [get_ports {led_grid[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_grid[1]}]

set_property PACKAGE_PIN P13 [get_ports {led_grid[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_grid[2]}]

set_property PACKAGE_PIN P11 [get_ports {led_grid[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_grid[3]}]

set_property PACKAGE_PIN R3 [get_ports {led_grid[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_grid[4]}]

set_property PACKAGE_PIN N1 [get_ports {led_grid[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_grid[5]}]

set_property PACKAGE_PIN N13 [get_ports {led_grid[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_grid[6]}]

set_property PACKAGE_PIN P10 [get_ports {led_grid[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_grid[7]}]

set_property PACKAGE_PIN N4 [get_ports {led_grid[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_grid[8]}]

set_property PACKAGE_PIN P3 [get_ports {led_grid[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_grid[9]}]

set_property PACKAGE_PIN R11 [get_ports {led_grid[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_grid[10]}]

set_property PACKAGE_PIN T13 [get_ports {led_grid[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_grid[11]}]

set_property PACKAGE_PIN P5 [get_ports {led_grid[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_grid[12]}]

set_property PACKAGE_PIN P4 [get_ports {led_grid[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_grid[13]}]

set_property PACKAGE_PIN R10 [get_ports {led_grid[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_grid[14]}]

set_property PACKAGE_PIN R13 [get_ports {led_grid[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_grid[15]}]

set_property PACKAGE_PIN G5 [get_ports {col[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col[0]}]

set_property PACKAGE_PIN D4 [get_ports {col[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col[1]}]

set_property PACKAGE_PIN E3 [get_ports {col[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col[2]}]

set_property PACKAGE_PIN C3 [get_ports {col[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col[3]}]

set_property PACKAGE_PIN C6 [get_ports {io_button[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_button[0]}]
set_property PULLDOWN true [get_ports {io_button[0]}]

set_property PACKAGE_PIN C7 [get_ports {io_button[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_button[1]}]
set_property PULLDOWN true [get_ports {io_button[1]}]

set_property PACKAGE_PIN C1 [get_ports {row[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row[0]}]
set_property PULLDOWN true [get_ports {row[0]}]

set_property PACKAGE_PIN B1 [get_ports {row[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row[1]}]
set_property PULLDOWN true [get_ports {row[1]}]

set_property PACKAGE_PIN E2 [get_ports {row[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row[2]}]
set_property PULLDOWN true [get_ports {row[2]}]

set_property PACKAGE_PIN D1 [get_ports {row[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row[3]}]
set_property PULLDOWN true [get_ports {row[3]}]

set_property PACKAGE_PIN P8 [get_ports {seg_selector[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_selector[0]}]

set_property PACKAGE_PIN R8 [get_ports {seg_selector[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_selector[1]}]

set_property PACKAGE_PIN N9 [get_ports {seg_selector[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_selector[2]}]

set_property PACKAGE_PIN P9 [get_ports {seg_selector[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_selector[3]}]

set_property PACKAGE_PIN T5 [get_ports {io_segment[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_segment[0]}]

set_property PACKAGE_PIN R5 [get_ports {io_segment[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_segment[1]}]

set_property PACKAGE_PIN T9 [get_ports {io_segment[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_segment[2]}]

set_property PACKAGE_PIN R6 [get_ports {io_segment[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_segment[3]}]

set_property PACKAGE_PIN R7 [get_ports {io_segment[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_segment[4]}]

set_property PACKAGE_PIN T7 [get_ports {io_segment[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_segment[5]}]

set_property PACKAGE_PIN T8 [get_ports {io_segment[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_segment[6]}]

