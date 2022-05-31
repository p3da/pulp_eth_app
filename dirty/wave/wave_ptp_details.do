onerror {resume}
quietly virtual signal -install /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst { /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/tx_ptp_ts[95:16]} ts_ns
quietly virtual signal -install /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/ptp_clock_inst { /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/ptp_clock_inst/output_ts_96[95:16]} ptp_clk_ts_out
quietly virtual signal -install /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx { /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[95:16]} ptp_ts_tx_axis
quietly virtual signal -install /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx { /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/ptp_ts_axis_tdata[95:16]} ptp_ts_rx_axis
quietly virtual signal -install /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst { /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_ptp_ts_96[63:0]} tx_ptp_ts_
quietly virtual signal -install /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst { /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_ptp_ts_96[47:0]} tx_ptp_ts_47_0
quietly virtual signal -install /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst { /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_ptp_ts_96[95:48]} tx_ptp_tx_95_48
quietly virtual signal -install /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx { /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[95:48]} axis_tx_ptp_ts_95_48
quietly virtual signal -install /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx { /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[47:0]} axis_tx_ptp_ts_47_0
quietly virtual signal -install /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst { /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_ptp_ts_96[95:48]} rx_ptp_ts_95_48
quietly virtual signal -install /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst { /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_ptp_ts_96[47:0]} rx_ptp_ts_47_0
quietly virtual signal -install /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx { /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/ptp_ts_axis_tdata[95:48]} axis_rx_ptp_ts_95_48
quietly virtual signal -install /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx { /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/ptp_ts_axis_tdata[47:0]} axis_rx_ptp_ts_47_0
quietly WaveActivateNextPane {} 0
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/gtx_clk
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/gtx_clk90
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/gtx_rst
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/logic_clk
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/logic_rst
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/ts_ns
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/tx_ptp_ts
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_tx_clk
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_tx_ctl
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 -expand /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_txd
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tdata
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/ptp_clock_inst/output_ts_96
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tkeep
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tlast
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tready
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tuser
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tvalid
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_ptp_ts_96
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_ptp_tx_95_48
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_ptp_ts_47_0
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_tx_clk
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_tx_ctl
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_txd
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/axis_tx_ptp_ts_95_48
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/axis_tx_ptp_ts_47_0
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 -subitemconfig {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[95]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[94]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[93]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[92]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[91]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[90]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[89]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[88]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[87]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[86]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[85]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[84]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[83]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[82]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[81]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[80]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[79]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[78]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[77]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[76]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[75]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[74]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[73]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[72]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[71]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[70]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[69]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[68]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[67]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[66]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[65]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[64]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[63]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[62]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[61]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[60]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[59]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[58]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[57]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[56]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[55]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[54]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[53]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[52]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[51]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[50]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[49]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[48]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[47]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[46]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[45]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[44]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[43]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[42]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[41]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[40]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[39]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[38]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[37]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[36]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[35]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[34]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[33]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[32]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[31]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[30]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[29]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[28]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[27]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[26]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[25]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[24]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[23]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[22]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[21]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[20]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[19]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[18]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[17]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[16]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[15]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[14]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[13]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[12]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[11]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[10]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[9]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[8]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[7]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[6]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[5]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[4]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[3]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[2]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[1]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata[0]} {-height 35}} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tdata
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_tx_axis
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 -radix hexadecimal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/ptp_clock_inst/ptp_clk_ts_out
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tdata
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tkeep
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tlast
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tready
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tuser
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group RX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tvalid
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_ptp_ts_96
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_ptp_ts_95_48
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_ptp_ts_47_0
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rx_clk
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rx_ctl
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rxd
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/axis_rx_ptp_ts_95_48
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/axis_rx_ptp_ts_47_0
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/ptp_ts_axis_tdata
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tdata
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tkeep
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tlast
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tready
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tuser
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tvalid
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rx_clk
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rx_ctl
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 -subitemconfig {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rxd[3]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rxd[2]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rxd[1]} {-height 35} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rxd[0]} {-height 35}} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rxd
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/ptp_ts_rx_axis
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tdata
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tkeep
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tlast
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tready
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tuser
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 -expand -group TX -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tvalid
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/gtx_clk
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/gtx_clk90
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/gtx_rst
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/logic_clk
add wave -noupdate -height 35 -expand -group eth_mac_1g_rgmii_fifo -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/logic_rst
add wave -noupdate -height 35 -group udma_eth_frame /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/rstn_i
add wave -noupdate -height 35 -group udma_eth_frame /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/sys_clk_i
add wave -noupdate -height 35 -group udma_eth_frame /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/clk_eth
add wave -noupdate -height 35 -group udma_eth_frame /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/clk_eth90
add wave -noupdate -height 35 -group udma_eth_frame /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/rst_eth
add wave -noupdate -height 35 -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_addr_i
add wave -noupdate -height 35 -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_valid_i
add wave -noupdate -height 35 -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_data_i
add wave -noupdate -height 35 -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_data_o
add wave -noupdate -height 35 -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_ready_o
add wave -noupdate -height 35 -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rwn_i
add wave -noupdate -height 35 -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_addr_i
add wave -noupdate -height 35 -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_valid_i
add wave -noupdate -height 35 -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_data_i
add wave -noupdate -height 35 -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_data_o
add wave -noupdate -height 35 -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_ready_o
add wave -noupdate -height 35 -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rwn_i
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_blocked
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_bytes_left_i
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_clr_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_continuous_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_curr_addr_i
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_en_i
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_en_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_fifo_elements
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_pending_i
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_set_blocked
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_set_eof
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_size_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_startaddr_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_bytes_left_i
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_clr_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_continuous_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_curr_addr_i
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_en_i
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_en_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_pending_i
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_size_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_startaddr_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_blocked
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_bytes_left_i
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_clr_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_continuous_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_curr_addr_i
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_en_i
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_en_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_fifo_elements
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_pending_i
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_set_blocked
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_set_eof
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_size_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_startaddr_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_bytes_left_i
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_clr_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_continuous_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_curr_addr_i
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_en_i
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_en_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_pending_i
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_size_o
add wave -noupdate -height 35 -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_startaddr_o
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_datasize_o
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_valid_o
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_datasize_o
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_o
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_ready_i
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tdata
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tlast
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tready
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tuser
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tvalid
add wave -noupdate -height 35 -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_in
add wave -noupdate -height 35 -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx
add wave -noupdate -height 35 -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_o
add wave -noupdate -height 35 -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_ready
add wave -noupdate -height 35 -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_ready_fifo_out
add wave -noupdate -height 35 -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_valid
add wave -noupdate -height 35 -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_valid_fifo_in
add wave -noupdate -height 35 -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx
add wave -noupdate -height 35 -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_in
add wave -noupdate -height 35 -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_o
add wave -noupdate -height 35 -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_ready
add wave -noupdate -height 35 -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_ready_fifo_out
add wave -noupdate -height 35 -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_valid
add wave -noupdate -height 35 -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_valid_fifo_in
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_datasize_o
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_valid_o
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_datasize_o
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_o
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_ready_i
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tdata
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tlast
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tready
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tuser
add wave -noupdate -height 35 -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tvalid
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_gnt_i
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_i
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_ready_o
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_req_o
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_valid_i
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tdata
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tlast
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tready
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tuser
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tvalid
add wave -noupdate -height 35 -group udma_eth_frame -group TX -group internal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx
add wave -noupdate -height 35 -group udma_eth_frame -group TX -group internal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx_out
add wave -noupdate -height 35 -group udma_eth_frame -group TX -group internal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx_ready
add wave -noupdate -height 35 -group udma_eth_frame -group TX -group internal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx_valid
add wave -noupdate -height 35 -group udma_eth_frame -group TX -group internal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx
add wave -noupdate -height 35 -group udma_eth_frame -group TX -group internal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx_out
add wave -noupdate -height 35 -group udma_eth_frame -group TX -group internal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx_ready
add wave -noupdate -height 35 -group udma_eth_frame -group TX -group internal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx_valid
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_gnt_i
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_i
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_ready_o
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_req_o
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_valid_i
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tdata
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tlast
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tready
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tuser
add wave -noupdate -height 35 -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tvalid
add wave -noupdate -height 35 -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/L2_AWIDTH_NOAL
add wave -noupdate -height 35 -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/RX_FIFO_BUFFER_DEPTH
add wave -noupdate -height 35 -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/RX_FIFO_BUFFER_DEPTH_LOG
add wave -noupdate -height 35 -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/TX_FIFO_BUFFER_DEPTH
add wave -noupdate -height 35 -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/TRANS_SIZE
add wave -noupdate -height 35 -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/L2_AWIDTH_NOAL
add wave -noupdate -height 35 -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/RX_FIFO_BUFFER_DEPTH
add wave -noupdate -height 35 -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/RX_FIFO_BUFFER_DEPTH_LOG
add wave -noupdate -height 35 -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/TX_FIFO_BUFFER_DEPTH
add wave -noupdate -height 35 -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/TRANS_SIZE
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/L2_AWIDTH_NOAL
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_cfg_rx_set_blocked_i
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_cfg_rx_set_eof_i
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_rx_blocked
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_rx_clr
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_rx_continuous
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_rx_en
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_rx_eof
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_rx_size
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_rx_startaddr
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_tx_clr
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_tx_continuous
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_tx_en
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_tx_size
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_tx_startaddr
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/RX_FIFO_BUFFER_DEPTH
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/RX_FIFO_BUFFER_DEPTH_LOG
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/s_rd_addr
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/set_tx_bytes
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_set_tx_bytes
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/tx_bytes_left
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/tx_bytes
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_tx_bytes
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/s_wr_addr
add wave -noupdate -height 35 -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/TRANS_SIZE
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_data_out /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/data_rx_datasize_o
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_data_out /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/data_rx_o
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_data_out /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/data_rx_ready_i
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_data_out /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/data_rx_valid_o
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/sys_clk_i
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/clk_ptp
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/rstn_i
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/rst_ptp
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_ptpts_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/cfg_addr_i
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_ptpts_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/cfg_data_i
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_ptpts_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/cfg_data_o
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_ptpts_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/cfg_ready_o
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_ptpts_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/cfg_rwn_i
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_ptpts_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/cfg_valid_i
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/cfg_rx_bytes_left_i
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/cfg_rx_clr_o
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/cfg_rx_continuous_o
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/cfg_rx_curr_addr_i
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/cfg_rx_en_i
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/cfg_rx_en_o
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/cfg_rx_fifo_elements
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/cfg_rx_pending_i
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/cfg_rx_size_o
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/cfg_rx_startaddr_o
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/curr_state
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/data_rx_tmp
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/data_rx_tmp_next
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/next_state
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/s_data_rx_in
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/s_data_rx_out
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/s_data_rx_out128
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/s_data_rx_ready_in
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/s_data_rx_ready_out
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/s_data_rx_valid_in
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/s_data_rx_valid_out
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/L2_AWIDTH_NOAL
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/RX_FIFO_BUFFER_DEPTH
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/RX_FIFO_BUFFER_DEPTH_LOG
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/TRANS_SIZE
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -expand -group ptpts_axi_in -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tready
add wave -noupdate -height 35 -group udma_ptpts_tx -height 35 -expand -group ptpts_axi_in -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_tx/ptp_ts_axis_tvalid
add wave -noupdate -height 35 -expand -group udma_ptpts_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/clk_ptp
add wave -noupdate -height 35 -expand -group udma_ptpts_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/rst_ptp
add wave -noupdate -height 35 -expand -group udma_ptpts_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/rstn_i
add wave -noupdate -height 35 -expand -group udma_ptpts_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/sys_clk_i
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group udma_ptpts_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/cfg_addr_i
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group udma_ptpts_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/cfg_data_i
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group udma_ptpts_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/cfg_data_o
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group udma_ptpts_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/cfg_ready_o
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group udma_ptpts_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/cfg_rwn_i
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group udma_ptpts_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/cfg_valid_i
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/cfg_rx_bytes_left_i
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/cfg_rx_clr_o
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/cfg_rx_continuous_o
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/cfg_rx_curr_addr_i
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/cfg_rx_en_i
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/cfg_rx_en_o
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/cfg_rx_fifo_elements
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/cfg_rx_pending_i
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/cfg_rx_size_o
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group udma_control_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/cfg_rx_startaddr_o
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/curr_state
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/data_rx_tmp
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/data_rx_tmp_next
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/L2_AWIDTH_NOAL
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/next_state
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/RX_FIFO_BUFFER_DEPTH
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/RX_FIFO_BUFFER_DEPTH_LOG
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/s_data_rx_in
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/s_data_rx_out
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/s_data_rx_out128
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/s_data_rx_ready_in
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/s_data_rx_ready_out
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/s_data_rx_valid_in
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/s_data_rx_valid_out
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group internals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/TRANS_SIZE
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -expand -group udma_data_out /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/data_rx_datasize_o
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -expand -group udma_data_out /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/data_rx_o
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -expand -group udma_data_out /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/data_rx_ready_i
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -expand -group udma_data_out /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/data_rx_valid_o
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group ptpts_axi_in /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/ptp_ts_axis_tready
add wave -noupdate -height 35 -expand -group udma_ptpts_rx -group ptpts_axi_in /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_ptp_ts_rx/ptp_ts_axis_tvalid
add wave -noupdate -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/ptp_clock_inst/clk
add wave -noupdate -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/ptp_clock_inst/output_pps
add wave -noupdate -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/ptp_clock_inst/output_ts_64
add wave -noupdate -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/ptp_clock_inst/output_ts_96
add wave -noupdate -height 35 /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/ptp_clock_inst/output_ts_step
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/m_axis_tuser
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/PTP_TS_ENABLE
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/clk
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/clk_enable
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/crc_next
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/crc_state
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/DATA_WIDTH
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/error_bad_fcs
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/error_bad_fcs_next
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/error_bad_fcs_reg
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/error_bad_frame
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/error_bad_frame_next
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/error_bad_frame_reg
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/ETH_PRE
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/ETH_SFD
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/gmii_rx_dv
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/gmii_rx_dv_d0
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/gmii_rx_dv_d1
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/gmii_rx_dv_d2
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/gmii_rx_dv_d3
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/gmii_rx_dv_d4
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/gmii_rx_er
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/gmii_rx_er_d0
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/gmii_rx_er_d1
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/gmii_rx_er_d2
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/gmii_rx_er_d3
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/gmii_rx_er_d4
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/gmii_rxd
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/gmii_rxd_d0
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/gmii_rxd_d1
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/gmii_rxd_d2
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/gmii_rxd_d3
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/gmii_rxd_d4
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/m_axis_tdata
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/m_axis_tdata_next
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/m_axis_tdata_reg
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/m_axis_tlast
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/m_axis_tlast_next
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/m_axis_tlast_reg
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/m_axis_tuser
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/m_axis_tuser_next
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/m_axis_tuser_reg
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/m_axis_tvalid
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/m_axis_tvalid_next
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/m_axis_tvalid_reg
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/mii_locked
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/mii_odd
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/mii_select
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/ptp_ts
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/PTP_TS_ENABLE
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/ptp_ts_next
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/ptp_ts_reg
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/PTP_TS_WIDTH
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/reset_crc
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/rst
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/start_packet
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/start_packet_next
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/start_packet_reg
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/STATE_IDLE
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/state_next
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/STATE_PAYLOAD
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/state_reg
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/STATE_WAIT_LAST
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/update_crc
add wave -noupdate -group axis_gmii_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/eth_mac_1g_rgmii_inst/eth_mac_1g_inst/axis_gmii_rx_inst/USER_WIDTH
add wave -noupdate /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/ptp_clock_inst/output_ts_step
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {294400 ps} 0} {{Cursor 2} {16819708000 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 222
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
WaveRestoreZoom {16819418240 ps} {16819565440 ps}
