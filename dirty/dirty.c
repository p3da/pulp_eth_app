/**
 * @author: David Pernerstorfer <es20m012@technikum-wien.at>
 * @about: minimal application to interact with the udma peripheral eth_frame
 */

#include <stdio.h>
#include <pulp.h>
#include <stdint.h>
#include <string.h>


#define BUFFER_SIZE_MAX 256
#define RX_BUFFER_SIZE_MAX 1024
#define PER_ID_ETH_FRAME 17

// first address of the udma config registers for the udma peripheral "eth_frame"
// ARCHI_SOC_PERIPHERALS_ADDR + \\  // base address of soc periphers (udma is contained in this address space) (see memory_map.h)
// ARCHI_UDMA_OFFSET + \ // address offset of udma within address space of soc peripherals
// UDMA_FIRST_CHANNEL_OFFSET + \ // the initial udma registers are for general udma configuration (glock gate enable, event envale, etc.)
// (PER_ID_ETH_FRAME)*0x80 \ // for each udma peripheral 32 registers (128 byte) are reserved

#define UDMA_REG_ETH_FRAME_ADDR_FIRST (ARCHI_SOC_PERIPHERALS_ADDR + ARCHI_UDMA_OFFSET + UDMA_FIRST_CHANNEL_OFFSET + (PER_ID_ETH_FRAME)*0x80)

#define UDMA_REG_ETH_FRAME_OFFS_RX_SADDR 0x00
#define UDMA_REG_ETH_FRAME_OFFS_RX_SIZE  0x04
#define UDMA_REG_ETH_FRAME_OFFS_RX_CFG   0x08

#define UDMA_REG_ETH_FRAME_OFFS_TX_SADDR 0x10
#define UDMA_REG_ETH_FRAME_OFFS_TX_SIZE  0x14
#define UDMA_REG_ETH_FRAME_OFFS_TX_CFG   0x18

#define UDMA_REG_ETH_FRAME_OFFS_RX_FIFO_CFG   0x1C
#define UDMA_REG_ETH_FRAME_OFFS_RX_FIFO_N  0x20


uint32_t tx_buffer_size;
uint16_t tx_buffer[BUFFER_SIZE_MAX];

uint32_t rx_buffer_size;
uint16_t rx_buffer[RX_BUFFER_SIZE_MAX];

int __rt_fpga_fc_frequency = 20000000;
int __rt_fpga_periph_frequency = 10000000;

const uint16_t src_mac[] = {0x20, 0x00, 0x00, 0x00, 0x00, 0x00 };
const uint16_t dst_mac[] = {0xf0, 0x00, 0x00, 0x00, 0x00, 0x00 };
const uint16_t eth_type[] = {0x08, 0x00};

/**
 * this function was initially used for debugging purposes
 * it reads register num. 4 of each udma periph register file in order to find the eth_frame register file
 */
void test_udma_reg() {
  int reg_addr_whoami;
  int reg_val_whoami;

  for (char i = 0; i < 32; i++) {

    reg_addr_whoami =
      ARCHI_SOC_PERIPHERALS_ADDR + // base address of soc periphers (udma is contained in this address space) (see memory_map.h)
      ARCHI_UDMA_OFFSET + // address offset of udma within address space of soc peripherals
      i * 0x80 + // for each udma peripherals 32 registers (128 byte) are reserved
      0xC // offset of rx_cfg register
    ;

    reg_val_whoami = pulp_read32(reg_addr_whoami);
    printf("WHOAMI[%d]: 0x%02X\n", i, reg_val_whoami);
  }

  return;

}

/**
 * prepares the tx buffer that will be written to udma peripheral eth_frame
 */
void init_tx_buffer() {

  int i = 0;

  /* source and destination mac address */
  memcpy((void*)&tx_buffer[i], (void*)dst_mac, 6);
  i += 6;
  memcpy((void*)&tx_buffer[i], (void*)src_mac, 6);
  i += 6;

  /* ethernet type */
  memcpy((void*)&tx_buffer[i], (void*)eth_type, 2);
  i += 2;

  /* payload */
  for (; i<32; i++) {
    tx_buffer[i] = i;
  }


  tx_buffer_size = 32;


  /* set bit 9 of last entry in tx_buffer to signal the end of the frame */
  tx_buffer[tx_buffer_size-1] |= 0x0100;


  /* debug output; print buffer to uart */
  for (int j = 0; j < 32; j++) {
    printf("tx_buffer[%d] = 0x%04X\n", j, tx_buffer[j]);
  }
}

int main() {

  /* print via uart */
  printf("test printf\n");
  int reg_val_whoami;

  reg_val_whoami = pulp_read32(UDMA_REG_ETH_FRAME_ADDR_FIRST + 0xC);
  printf("WHOAMI(reg 0x%02X): 0x%02X\n", UDMA_REG_ETH_FRAME_ADDR_FIRST + 0xC, reg_val_whoami);

  // was used for debugging purposes
  //test_udma_reg();

  init_tx_buffer();

  uint32_t addr;
  uint32_t wr_val;
  uint32_t rd_val;

  /* enable clock for udma peripheral */
  plp_udma_cg_set(plp_udma_cg_get() | (1<<PER_ID_ETH_FRAME));

  /* set start address for udma tx transaction */
  pulp_write32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_TX_SADDR, (uint32_t)&tx_buffer);
  reg_val_whoami = pulp_read32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_TX_SADDR);
  printf("TX_SADDR(reg 0x%02X): 0x%02X\n", UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_TX_SADDR, reg_val_whoami);


  /*  set number of bytes to transfer */
  /* tx_buffer_size means word size (16 bit), therefore multiply by 2 */
  pulp_write32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_TX_SIZE, tx_buffer_size<<1);

  /* TX_CFG register bits (see pulpissimo/doc/datasheet.pdf)
   * bit 0 - CONTINOUS(R/W) - not unused here
   * bit 4 - EN(R/W) - 1=enable and start transfer; 0=disabled
   * bit 5 - PENDING(R) - 1=pending transfer in the queue; 0=no pending transfer in the queue
   * bit 6 - CLR(W) - 1=stop and clear the on-going transfer; 0=disabled
   * other bits are not used
   */
  /* enable tx channel */
  pulp_write32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_TX_CFG, (1<<4));

  printf("tx transaction enqueued\n");

  /* wait until transfer has finished; poll the PENDING bit of TX_CFG register */
  //for(int i = 0; i< 1000000000; i++) asm volatile("nop");

  uint32_t ef_fifo_cfg = 0;
  uint32_t ef_fifo_n = 0;

  uint32_t reg_rx_cfg = 0;

  while (1) {
    ef_fifo_cfg = pulp_read32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_RX_FIFO_CFG);

    if ((ef_fifo_cfg>>2)&1) {
      printf("TODO: fifo full ");
    }

    if ((ef_fifo_cfg>>1)&1) {
      ef_fifo_n = pulp_read32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_RX_FIFO_N);

      printf("end of frame received; size: %d\n", ef_fifo_n);

      /* set start address for udma rx transaction */
      pulp_write32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_RX_SADDR, (uint32_t)&rx_buffer);

      /* set number of bytes to transfer from udma rx channel*/
      pulp_write32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_RX_SIZE, ef_fifo_n);

      /* enable rx channel */
      pulp_write32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_RX_CFG, (1<<4));

      /* busy wait until rx transaction finished */
      /* first wait until the EN bit (=bit 4) in RX_CFG is 0 again. this means udma has started the transaction */
      do {
        reg_rx_cfg = pulp_read32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_RX_CFG);
      } while ((reg_rx_cfg>>4) & 1);
      printf("udma has started transaction");

      /* second wait until the PENDING bit (=bit 4) in RX_CFG is 0 again. this means udma has finished the transaction */
      do  {
        reg_rx_cfg = pulp_read32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_RX_CFG);
      } while((reg_rx_cfg>>5) & 1);
      printf("udma has finished transaction");

      /* debug output */
      for (int i = 0; i < ef_fifo_n; i++) {
        printf("rx_buffer[%d] = 0x%04X\n", i, rx_buffer[i]);
      }
    }
  }


  return 0;
}
