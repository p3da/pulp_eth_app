onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/gtx_clk
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/gtx_clk90
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/gtx_rst
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/logic_clk
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/logic_rst
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_tx_clk
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_tx_ctl
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_txd
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tdata
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tkeep
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tlast
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tready
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tuser
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tvalid
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_tx_clk
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_tx_ctl
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_txd
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tdata
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tkeep
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tlast
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tready
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tuser
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/tx_axis_tvalid
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rx_clk
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rx_ctl
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rxd
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tdata
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tkeep
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tlast
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tready
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tuser
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tvalid
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rx_clk
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rx_ctl
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rgmii_rxd
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tdata
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tkeep
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tlast
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tready
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tuser
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/rx_axis_tvalid
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/gtx_clk
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/gtx_clk90
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/gtx_rst
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/logic_clk
add wave -noupdate -expand -group eth_mac_1g_rgmii_fifo /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/eth_mac_inst/logic_rst
add wave -noupdate -expand -group udma_eth_frame /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/rstn_i
add wave -noupdate -expand -group udma_eth_frame /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/sys_clk_i
add wave -noupdate -expand -group udma_eth_frame /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/clk_eth
add wave -noupdate -expand -group udma_eth_frame /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/clk_eth90
add wave -noupdate -expand -group udma_eth_frame /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/rst_eth
add wave -noupdate -expand -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_addr_i
add wave -noupdate -expand -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_valid_i
add wave -noupdate -expand -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_data_i
add wave -noupdate -expand -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_data_o
add wave -noupdate -expand -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_ready_o
add wave -noupdate -expand -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rwn_i
add wave -noupdate -expand -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_addr_i
add wave -noupdate -expand -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_valid_i
add wave -noupdate -expand -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_data_i
add wave -noupdate -expand -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_data_o
add wave -noupdate -expand -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_ready_o
add wave -noupdate -expand -group udma_eth_frame -group cfg_register_interface /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rwn_i
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_blocked
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_bytes_left_i
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_clr_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_continuous_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_curr_addr_i
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_en_i
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_en_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_fifo_elements
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_pending_i
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_set_blocked
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_set_eof
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_size_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_startaddr_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_bytes_left_i
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_clr_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_continuous_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_curr_addr_i
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_en_i
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_en_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_pending_i
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_size_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_startaddr_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_blocked
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_bytes_left_i
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_clr_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_continuous_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_curr_addr_i
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_en_i
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_en_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_fifo_elements
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_pending_i
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_set_blocked
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_set_eof
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_size_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_rx_startaddr_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_bytes_left_i
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_clr_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_continuous_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_curr_addr_i
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_en_i
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_en_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_pending_i
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_size_o
add wave -noupdate -expand -group udma_eth_frame -group udma_control_signal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/cfg_tx_startaddr_o
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_datasize_o
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_valid_o
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_datasize_o
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_o
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_ready_i
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tdata
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tlast
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tready
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tuser
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tvalid
add wave -noupdate -expand -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_in
add wave -noupdate -expand -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx
add wave -noupdate -expand -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_o
add wave -noupdate -expand -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_ready
add wave -noupdate -expand -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_ready_fifo_out
add wave -noupdate -expand -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_valid
add wave -noupdate -expand -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_valid_fifo_in
add wave -noupdate -expand -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx
add wave -noupdate -expand -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_in
add wave -noupdate -expand -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_o
add wave -noupdate -expand -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_ready
add wave -noupdate -expand -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_ready_fifo_out
add wave -noupdate -expand -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_valid
add wave -noupdate -expand -group udma_eth_frame -group RX -expand -group interal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_rx_valid_fifo_in
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_datasize_o
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_valid_o
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_datasize_o
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_o
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_rx_ready_i
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tdata
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tlast
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tready
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tuser
add wave -noupdate -expand -group udma_eth_frame -group RX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_rx_axis_tvalid
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_gnt_i
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_i
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_ready_o
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_req_o
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_valid_i
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tdata
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tlast
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tready
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tuser
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tvalid
add wave -noupdate -expand -group udma_eth_frame -group TX -group internal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx
add wave -noupdate -expand -group udma_eth_frame -group TX -group internal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx_out
add wave -noupdate -expand -group udma_eth_frame -group TX -group internal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx_ready
add wave -noupdate -expand -group udma_eth_frame -group TX -group internal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx_valid
add wave -noupdate -expand -group udma_eth_frame -group TX -group internal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx
add wave -noupdate -expand -group udma_eth_frame -group TX -group internal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx_out
add wave -noupdate -expand -group udma_eth_frame -group TX -group internal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx_ready
add wave -noupdate -expand -group udma_eth_frame -group TX -group internal_signals /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/s_data_tx_valid
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_gnt_i
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_i
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_ready_o
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_req_o
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/data_tx_valid_i
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tdata
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tlast
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tready
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tuser
add wave -noupdate -expand -group udma_eth_frame -group TX /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/eth_tx_axis_tvalid
add wave -noupdate -expand -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/L2_AWIDTH_NOAL
add wave -noupdate -expand -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/RX_FIFO_BUFFER_DEPTH
add wave -noupdate -expand -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/RX_FIFO_BUFFER_DEPTH_LOG
add wave -noupdate -expand -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/TX_FIFO_BUFFER_DEPTH
add wave -noupdate -expand -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/TRANS_SIZE
add wave -noupdate -expand -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/L2_AWIDTH_NOAL
add wave -noupdate -expand -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/RX_FIFO_BUFFER_DEPTH
add wave -noupdate -expand -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/RX_FIFO_BUFFER_DEPTH_LOG
add wave -noupdate -expand -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/TX_FIFO_BUFFER_DEPTH
add wave -noupdate -expand -group udma_eth_frame -group params /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/TRANS_SIZE
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/L2_AWIDTH_NOAL
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_cfg_rx_set_blocked_i
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_cfg_rx_set_eof_i
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_rx_blocked
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_rx_clr
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_rx_continuous
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_rx_en
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_rx_eof
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_rx_size
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_rx_startaddr
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_tx_clr
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_tx_continuous
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_tx_en
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_tx_size
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/r_tx_startaddr
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/RX_FIFO_BUFFER_DEPTH
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/RX_FIFO_BUFFER_DEPTH_LOG
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/s_rd_addr
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/s_wr_addr
add wave -noupdate -group {udma_eth_frame_reg (internals)} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_external_per/u_reg_if/TRANS_SIZE
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {27218 ps} 0} {{Cursor 2} {11574787344 ps} 0}
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
WaveRestoreZoom {11574668815 ps} {11574715326 ps}
