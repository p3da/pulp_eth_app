/**
 * @author: David Pernerstorfer <es20m012@technikum-wien.at>
 * @about: minimal application to interact with the udma peripheral eth_frame
 */

#include <stdio.h>
#include <pulp.h>
#include <stdint.h>
#include <string.h>


#define TX_BUFFER_SIZE_MAX 4096
#define RX_BUFFER_SIZE_MAX 4096
#define PER_ID_ETH_FRAME 17
#define PER_ID_PTP_TS_RX 18
#define PER_ID_PTP_TS_TX 19

#define PTPTS_RX_BUFFER_SIZE 3
#define PTPTS_TX_BUFFER_SIZE 3

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

#define UDMA_REG_ETH_FRAME_OFFS_RX_FIFO_CFG       0x1C
#define UDMA_REG_ETH_FRAME_OFFS_RX_FIFO_N         0x20
#define UDMA_REG_ETH_FRAME_OFFS_RX_FIFO_FULL      0x24

#define UDMA_REG_ETH_FRAME_OFFS_TX_BYTES          0x28
#define UDMA_REG_ETH_FRAME_OFFS_TX_BYTES_LEFT     0x2C

#define UDMA_REG_ETH_FRAME_RX_FIFO_CFG_EOF_BIT    0x01
#define UDMA_REG_ETH_FRAME_RX_FIFO_FULL_FULL_BIT  0x00


/* PTP timestamp RX register addresses */
#define UDMA_REG_PTPTSRX_ADDR_FIRST (ARCHI_SOC_PERIPHERALS_ADDR + ARCHI_UDMA_OFFSET + UDMA_FIRST_CHANNEL_OFFSET + (PER_ID_PTP_TS_RX)*0x80)

#define UDMA_REG_PTPTSRX_OFFS_RX_SADDR 0x00
#define UDMA_REG_PTPTSRX_OFFS_RX_SIZE  0x04
#define UDMA_REG_PTPTSRX_OFFS_RX_CFG   0x08

#define UDMA_REG_PTPTSRX_OFFS_RX_FIFO_CFG       0x1C
#define UDMA_REG_PTPTSRX_OFFS_RX_FIFO_N         0x20

#define UDMA_REG_PTPTSRX_RX_FIFO_FULL_BIT  0x02

/* PTP timestamp TX register addresses */
#define UDMA_REG_PTPTSTX_ADDR_FIRST (ARCHI_SOC_PERIPHERALS_ADDR + ARCHI_UDMA_OFFSET + UDMA_FIRST_CHANNEL_OFFSET + (PER_ID_PTP_TS_TX)*0x80)

#define UDMA_REG_PTPTSTX_OFFS_RX_SADDR 0x00
#define UDMA_REG_PTPTSTX_OFFS_RX_SIZE  0x04
#define UDMA_REG_PTPTSTX_OFFS_RX_CFG   0x08

#define UDMA_REG_PTPTSTX_OFFS_RX_FIFO_CFG       0x1C
#define UDMA_REG_PTPTSTX_OFFS_RX_FIFO_N         0x20

#define UDMA_REG_PTPTSTX_RX_FIFO_FULL_BIT  0x02


uint32_t tx_buffer_size;
//uint16_t tx_buffer[TX_BUFFER_SIZE_MAX];
uint8_t tx_buffer[TX_BUFFER_SIZE_MAX];

uint32_t rx_buffer_size;
uint8_t rx_buffer[RX_BUFFER_SIZE_MAX];

int __rt_fpga_fc_frequency = 20000000;
int __rt_fpga_periph_frequency = 10000000;

// DEPRECATED VERSION
//const uint16_t src_mac[] = {0x20, 0x00, 0x00, 0x00, 0x00, 0x00 };
//const uint16_t dst_mac[] = {0xf0, 0x00, 0x00, 0x00, 0x00, 0x00 };
//const uint16_t eth_type[] = {0x08, 0x00};
const uint8_t src_mac[] = {0x20, 0x00, 0x00, 0x00, 0x00, 0x00 };
const uint8_t dst_mac[] = {0xf0, 0x00, 0x00, 0x00, 0x00, 0x00 };
const uint8_t eth_type[] = {0x08, 0x00};

uint32_t ptpts_rx_buffer[PTPTS_RX_BUFFER_SIZE];
uint32_t ptpts_tx_buffer[PTPTS_TX_BUFFER_SIZE];

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
    printf("WHOAMI[%d]: 0x%02X\n\r", i, reg_val_whoami);
  }

  return;

}

void init_udma_eth_frame() {
  /* enable clock for udma peripheral */
  plp_udma_cg_set(plp_udma_cg_get() | (1<<PER_ID_ETH_FRAME));
}


uint8_t enqueue_udma_tx(void *tx_buffer, uint32_t size_bytes) {
  /* set source start address for udma tx transaction */
  pulp_write32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_TX_SADDR, (uint32_t)tx_buffer);

  /*  set number of bytes to transfer */
  /* tx_buffer_size means word size (16 bit), therefore multiply by 2 */
  pulp_write32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_TX_SIZE, size_bytes);

  /* tell udma_ethernet_frame how many bytes to transfer; used for fifo counter */
  pulp_write32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_TX_BYTES, size_bytes);

  /* TX_CFG register bits (see pulpissimo/doc/datasheet.pdf)
   * bit 0 - CONTINOUS(R/W) - not unused here
   * bit 4 - EN(R/W) - 1=enable and start transfer; 0=disabled
   * bit 5 - PENDING(R) - 1=pending transfer in the queue; 0=no pending transfer in the queue
   * bit 6 - CLR(W) - 1=stop and clear the on-going transfer; 0=disabled
   * other bits are not used
   */
  /* enable tx channel */
  pulp_write32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_TX_CFG, (1<<4));

  /* DEBUG OUTPUT */
  uint32_t reg_tx_bytes;
  uint32_t reg_tx_bytes_left;
  reg_tx_bytes_left = pulp_read32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_TX_BYTES_LEFT);
  reg_tx_bytes = pulp_read32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_TX_BYTES);
  printf("tx bytes %d\n\r", reg_tx_bytes);
  printf("tx remaining bytes %d\n\r", reg_tx_bytes_left);
}

uint8_t enqueue_udma_rx(void *rx_buffer, uint32_t size_bytes) {
  /* set destination start address for udma rx transaction */
  pulp_write32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_RX_SADDR, (uint32_t)rx_buffer);

  /*  set number of bytes to transfer */
  /* size in bytes */
  pulp_write32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_RX_SIZE, size_bytes);

  /* RX_CFG register bits (see pulpissimo/doc/datasheet.pdf)
   * bit 0 - CONTINOUS(R/W) - not unused here
   * bit 4 - EN(R/W) - 1=enable and start transfer; 0=disabled
   * bit 5 - PENDING(R) - 1=pending transfer in the queue; 0=no pending transfer in the queue
   * bit 6 - CLR(W) - 1=stop and clear the on-going transfer; 0=disabled
   * other bits are not used
   */
  /* enable rx channel */
  pulp_write32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_RX_CFG, (1<<4));
}

void wait_udma_rx_done() {
  uint32_t reg_rx_cfg = 0;
  /* busy wait until rx transaction finished */
  /* first wait until the EN bit (=bit 4) in RX_CFG is 0 again. this means udma has started the transaction */
  do {
    reg_rx_cfg = pulp_read32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_RX_CFG);
  } while ((reg_rx_cfg>>4) & 1);

  /* second wait until the PENDING bit (=bit 4) in RX_CFG is 0 again. this means udma has finished the transaction */
  do  {
    reg_rx_cfg = pulp_read32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_RX_CFG);
  } while((reg_rx_cfg>>5) & 1);

}

void wait_udma_tx_done() {
  uint32_t reg_tx_cfg = 0;
  /* busy wait until tx transaction finished */
  /* first wait until the EN bit (=bit 4) in TX_CFG is 0 again. this means udma has started the transaction */
  // do {
  //   reg_tx_cfg = pulp_read32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_TX_CFG);
  // } while ((reg_tx_cfg>>4) & 1);

  /* second wait until the PENDING bit (=bit 4) in TX_CFG is 0 again. this means udma has finished the transaction */
  // do  {
  //   reg_tx_cfg = pulp_read32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_TX_CFG);
  // } while((reg_tx_cfg>>5) & 1);

  uint32_t reg_tx_bytes_left = 0;
  do {
    reg_tx_bytes_left = pulp_read32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_TX_BYTES_LEFT);
    printf("tx remaining bytes %d\n\r", reg_tx_bytes_left);
  } while (reg_tx_bytes_left > 0);

}


void send_dummy_eth_frame() {
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

  /* debug output; print buffer to uart */
  for (int j = 0; j < 32; j++) {
    //printf("tx_buffer[%d] = 0x%02X\n\r", j, tx_buffer[j]);
  }

  /* copy tx_buffer via udma to ethernet mac; submit size in bytes */
  enqueue_udma_tx(&tx_buffer, tx_buffer_size);
}

/**
 * prepares the tx buffer that will be written to udma peripheral eth_frame;
 * DEPRECATED VERSION!!
 */
void send_dummy_eth_frame16() {

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
    printf("tx_buffer[%d] = 0x%04X\n\r", j, tx_buffer[j]);
  }

  /* copy tx_buffer via udma to ethernet mac; submit size in bytes */
  enqueue_udma_tx(&tx_buffer, tx_buffer_size<<1);
}


void init_udma_ptp_ts_rx() {
  /* enable clock for udma peripheral */
  plp_udma_cg_set(plp_udma_cg_get() | (1<<PER_ID_PTP_TS_RX));
}

void init_udma_ptp_ts_tx() {
  /* enable clock for udma peripheral */
  plp_udma_cg_set(plp_udma_cg_get() | (1<<PER_ID_PTP_TS_TX));
}

void init_udma_ptp_ts() {
  /* enable clock for udma peripheral (ptp ts rx, ptp ts tx) */
  init_udma_ptp_ts_rx();
  init_udma_ptp_ts_tx();
}

uint8_t enqueue_udma_ptptsrx(void *rx_buffer, uint32_t size_bytes) {
  /* set destination start address for udma rx transaction */
  pulp_write32(UDMA_REG_PTPTSRX_ADDR_FIRST + UDMA_REG_PTPTSRX_OFFS_RX_SADDR, (uint32_t)rx_buffer);

  /*  set number of bytes to transfer */
  /* size in bytes */
  pulp_write32(UDMA_REG_PTPTSRX_ADDR_FIRST + UDMA_REG_PTPTSRX_OFFS_RX_SIZE, size_bytes);

  /* RX_CFG register bits (see pulpissimo/doc/datasheet.pdf)
   * bit 0 - CONTINOUS(R/W) - not unused here
   * bit 4 - EN(R/W) - 1=enable and start transfer; 0=disabled
   * bit 5 - PENDING(R) - 1=pending transfer in the queue; 0=no pending transfer in the queue
   * bit 6 - CLR(W) - 1=stop and clear the on-going transfer; 0=disabled
   * other bits are not used
   */
  /* enable rx channel */
  pulp_write32(UDMA_REG_PTPTSRX_ADDR_FIRST + UDMA_REG_PTPTSRX_OFFS_RX_CFG, (1<<4));
}

void wait_udma_ptptsrx_done() {
  uint32_t reg_rx_cfg = 0;
  /* busy wait until rx transaction finished */
  /* first wait until the EN bit (=bit 4) in RX_CFG is 0 again. this means udma has started the transaction */
  do {
    reg_rx_cfg = pulp_read32(UDMA_REG_PTPTSRX_ADDR_FIRST + UDMA_REG_PTPTSRX_OFFS_RX_CFG);
  } while ((reg_rx_cfg>>4) & 1);

  /* second wait until the PENDING bit (=bit 4) in RX_CFG is 0 again. this means udma has finished the transaction */
  do  {
    reg_rx_cfg = pulp_read32(UDMA_REG_PTPTSRX_ADDR_FIRST + UDMA_REG_PTPTSRX_OFFS_RX_CFG);
  } while((reg_rx_cfg>>5) & 1);

}

uint8_t enqueue_udma_ptptstx(void *rx_buffer, uint32_t size_bytes) {
  /* set destination start address for udma rx transaction */
  pulp_write32(UDMA_REG_PTPTSTX_ADDR_FIRST + UDMA_REG_PTPTSTX_OFFS_RX_SADDR, (uint32_t)rx_buffer);

  /*  set number of bytes to transfer */
  /* size in bytes */
  pulp_write32(UDMA_REG_PTPTSTX_ADDR_FIRST + UDMA_REG_PTPTSTX_OFFS_RX_SIZE, size_bytes);

  /* RX_CFG register bits (see pulpissimo/doc/datasheet.pdf)
   * bit 0 - CONTINOUS(R/W) - not unused here
   * bit 4 - EN(R/W) - 1=enable and start transfer; 0=disabled
   * bit 5 - PENDING(R) - 1=pending transfer in the queue; 0=no pending transfer in the queue
   * bit 6 - CLR(W) - 1=stop and clear the on-going transfer; 0=disabled
   * other bits are not used
   */
  /* enable rx channel */
  pulp_write32(UDMA_REG_PTPTSTX_ADDR_FIRST + UDMA_REG_PTPTSTX_OFFS_RX_CFG, (1<<4));
}

void wait_udma_ptptstx_done() {
  uint32_t reg_rx_cfg = 0;
  /* busy wait until rx transaction finished */
  /* first wait until the EN bit (=bit 4) in RX_CFG is 0 again. this means udma has started the transaction */
  do {
    reg_rx_cfg = pulp_read32(UDMA_REG_PTPTSTX_ADDR_FIRST + UDMA_REG_PTPTSTX_OFFS_RX_CFG);
  } while ((reg_rx_cfg>>4) & 1);

  /* second wait until the PENDING bit (=bit 4) in RX_CFG is 0 again. this means udma has finished the transaction */
  // do  {
  //   reg_rx_cfg = pulp_read32(UDMA_REG_PTPTSTX_ADDR_FIRST + UDMA_REG_PTPTSTX_OFFS_RX_CFG);
  // } while((reg_rx_cfg>>5) & 1);

}

int main() {

  /* print via uart */
  //printf("test printf\n\r");

  /* read dummy register */
  int reg_val_whoami;
  reg_val_whoami = pulp_read32(UDMA_REG_ETH_FRAME_ADDR_FIRST + 0xC);
  //printf("WHOAMI(reg 0x%02X): 0x%02X\n\r", UDMA_REG_ETH_FRAME_ADDR_FIRST + 0xC, reg_val_whoami);

  // was used for debugging purposes
  //test_udma_reg();

  /* enable udma peripherals */
  /* ethernet frame */
  init_udma_eth_frame();
  /* ptp timestamps */
  init_udma_ptp_ts();

  /* send dummy ethernet frame - for testing purpose */
  send_dummy_eth_frame();
  printf("tx transaction enqueued\n\r");
  wait_udma_tx_done();
  printf("tx transaction sent\n\r");

  /* read PTP TX timestamps */
  printf("read PTP TS TX\n\r");
  ptpts_tx_buffer[0] = 0;
  ptpts_tx_buffer[1] = 0;
  ptpts_tx_buffer[2] = 0;
  /* read 3 time 32 bit words = 12 bytes */
  enqueue_udma_ptptstx(&ptpts_tx_buffer[0], 3*4);
  printf("udma transaction enqueued\n\r");
  wait_udma_ptptstx_done();
  /* print ptp ts*/
  printf("[0]: %08X; [1]: %08X, [2]: %08X\n\r", ptpts_tx_buffer[0], ptpts_tx_buffer[1], ptpts_tx_buffer[2]);



  /* wait until transfer has finished; poll the PENDING bit of TX_CFG register */
  //for(int i = 0; i< 1000000000; i++) asm volatile("nop");

  // uint32_t ef_fifo_cfg = 0;
  // uint32_t ef_fifo_full = 0;
  // uint32_t ef_fifo_n = 0;
  // uint32_t reg_rx_cfg = 0;
  // uint32_t rx_buf_size = 0;
  //
  // uint64_t sec;
  // uint64_t nanosec;
  // uint64_t nanosecfrac;
  //
  // while (1) {
  //   /* read RX fifo full register */
  //   ef_fifo_full = pulp_read32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_RX_FIFO_FULL);
  //   ef_fifo_cfg = pulp_read32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_RX_FIFO_CFG);
  //
  //   /* check END_OF_FRAME bit is set */
  //   if ((ef_fifo_cfg>>UDMA_REG_ETH_FRAME_RX_FIFO_CFG_EOF_BIT)&1) {
  //
  //     /* get number of bytes in RX fifo */
  //     ef_fifo_n = pulp_read32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_RX_FIFO_N);
  //     printf("end of frame received; size: %d\n\r", ef_fifo_n);
  //
  //     /* copy RX fifo data to rx_buffer */
  //     enqueue_udma_rx(&rx_buffer[rx_buf_size], ef_fifo_n);
  //     rx_buf_size += ef_fifo_n;
  //     wait_udma_rx_done();
  //     //for(int i = 0; i< 100; i++) asm volatile("nop");
  //     //printf("udma RX transaction finished\n\r");
  //
  //     printf("ETHERNET FRAME\n\r");
  //     /* debug output */
  //     for (int i = 0; i < rx_buf_size; i++) {
  //       if (i%8 == 0) {
  //         printf("\n\r0x%04X    ", i);
  //       }
  //       printf("%02X ", rx_buffer[i]);
  //     }
  //     printf("\n\rEND OF FRAME\n\r\n\r");
  //
  //     /* read PTP RX timestamps */
  //     //printf("read PTP TS RX\n\r");
  //     ptpts_rx_buffer[0] = 0;
  //     ptpts_rx_buffer[1] = 0;
  //     ptpts_rx_buffer[2] = 0;
  //     /* read 3 time 32 bit words = 12 bytes */
  //     enqueue_udma_ptptsrx(&ptpts_rx_buffer[0], 3*4);
  //     //printf("udma transaction enqueued\n\r");
  //     wait_udma_ptptsrx_done();
  //     /* print ptp ts*/
  //     printf("RAW PTP RX TS [0]: %08X; [1]: %08X, [2]: %08X\n\r", ptpts_rx_buffer[0], ptpts_rx_buffer[1], ptpts_rx_buffer[2]);
  //     sec = ptpts_rx_buffer[0]<<16 | ptpts_rx_buffer[1]>>16;
  //     nanosec = (ptpts_rx_buffer[1]&0x0000FFFF)<<16 | ptpts_rx_buffer[2]>>16;
  //     nanosecfrac = ptpts_rx_buffer[2] & (0x0000FFFF);
  //
  //     printf("FORMATTED: sec: %lu; nanosec: %lu, ns_frac: %lu\n\r", sec, nanosec, nanosecfrac);
  //
  //     /* TODO: process ethernet frame */
  //
  //     /* reset eof bit; enable fifo */
  //     pulp_write32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_RX_FIFO_CFG, 0);
  //     rx_buf_size = 0;
  //
  //   } else if ((ef_fifo_full>>UDMA_REG_ETH_FRAME_RX_FIFO_FULL_FULL_BIT)&1) {
  //     /* get number of bytes in RX fifo */
  //     ef_fifo_n = pulp_read32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_RX_FIFO_N);
  //     printf("fifo full; clearing fifo; size: %d\n\r", ef_fifo_n);
  //
  //     /* copy RX fifo data to rx_buffer */
  //     enqueue_udma_rx(&rx_buffer[rx_buf_size], ef_fifo_n);
  //     rx_buf_size += ef_fifo_n;
  //     for(int i = 0; i< 100; i++) asm volatile("nop");
  //     wait_udma_rx_done();
  //     printf("udma RX transaction finished\n\r");
  //
  //     /* debug output */
  //     // for (int i = 0; i < rx_buf_size; i++) {
  //     //   if (i%8 == 0) {
  //     //     printf("\n\r0x%04X    ", i);
  //     //   }
  //     //   printf("%02X ", i, rx_buffer[i]);
  //     // }
  //     //pulp_write32(UDMA_REG_ETH_FRAME_ADDR_FIRST + UDMA_REG_ETH_FRAME_OFFS_RX_FIFO_CFG, 0);
  //
  //   }
  // }


  return 0;
}
