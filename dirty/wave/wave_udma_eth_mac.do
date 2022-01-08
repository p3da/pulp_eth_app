onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/clk_eth
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/clk_eth90
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_datasize_o
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_o
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_ready_i
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_valid_o
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_datasize_o
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_gnt_i
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_i
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_ready_o
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_req_o
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_valid_i
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/rst_eth
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/rstn_i
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx_ready
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx_valid
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/sys_clk_i
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tdata
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tlast
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tready
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tuser
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tvalid
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tdata
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tlast
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tready
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tuser
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tvalid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8326189646 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {8326173617 ps} {8326239189 ps}
