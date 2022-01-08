onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/gtx_clk
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/gtx_clk90
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/gtx_rst
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/logic_clk
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/logic_rst
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rx_clk
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rx_ctl
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rxd
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_tx_clk
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_tx_ctl
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_txd
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tdata
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tkeep
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tlast
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tready
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tuser
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tvalid
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tdata
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tkeep
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tlast
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tready
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tuser
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tvalid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {27218 ps} 0} {{Cursor 2} {8325971934 ps} 0}
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
WaveRestoreZoom {0 ps} {15750 us}
