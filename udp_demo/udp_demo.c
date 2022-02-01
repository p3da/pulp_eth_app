/**
 * @author: David Pernerstorfer <es20m012@technikum-wien.at>
 * @about: minimal udp capable application; answers ARP requests and ping
 */

#include <stdio.h>
#include <pulp.h>
#include <stdint.h>
#include <string.h>

#include <uip.h>
#include <uip_arp.h>
#include <eth_frame.h>



/* overwrite uipopt.h configuration */
u8_t uip_buf[UIP_BUFSIZE+2];
#define BUF ((struct uip_eth_hdr *)&uip_buf[0])

extern u16_t uip_listenports[UIP_LISTENPORTS];

/**
 * prints ethernet frame info to uart
 *
 * rx_buffer - start address of ethernet frame
 * ethframe_size - length of ethernet frame in buffer in bytes
 * printRaw - if 0 raw content of ethternet frame is not printed
 * eth_frame - 2 byte long ethernet type (e.g. 0x0800 = IP)
 */
void printEthFrame(uint8_t *rx_buffer, uint16_t ethframe_size, uint8_t printRaw, uint16_t eth_type) {

  printf("RX ETHERNET FRAME; size (bytes): 0d%d, ethernet type: 0x%04X\n\r", ethframe_size, (uint16_t)eth_type);
  if (printRaw) {
    printf("RAW CONTENT:");
    /* debug output */
    for (int i = 0; i < ethframe_size; i++) {
      if (i%8 == 0) {
        printf("\n\r0x%04X    ", i);
      }
      printf("%02X ", rx_buffer[i]);
    }
    printf("\r\nEND\n\r\n\r");
  }

}

/**
 * print current ip configuration
 */
void printIPConfig() {
  printf("IP Configuration of Host: \r\n");
  printf("IP Address: %d.%d.%d.%d\r\n", ((u8_t *)uip_hostaddr)[0], ((u8_t *)uip_hostaddr)[1], ((u8_t *)uip_hostaddr)[2], ((u8_t *)uip_hostaddr)[3]);
  printf("Netmask:    %d.%d.%d.%d\r\n", ((u8_t *)uip_netmask)[0], ((u8_t *)uip_netmask)[1], ((u8_t *)uip_netmask)[2], ((u8_t *)uip_netmask)[3]);
  printf("Gateway:    %d.%d.%d.%d\r\n", ((u8_t *)uip_draddr)[0], ((u8_t *)uip_draddr)[1], ((u8_t *)uip_draddr)[2], ((u8_t *)uip_draddr)[3]);
  printf("\r\n");
}


int main(void) {
  /* initialize uDMA subsystem and uDMA peripherals */
  init_udma_eth_frame();

  /* Initialize the uIP ARP subsystem */
  uip_arp_init();
  /* initialize uIP stack*/
  uip_init();
  /* Initialize the application to listen on TCP port 1234 */
  uip_listen(HTONS(1234));

  /* print welcome message */
  uip_ipaddr_t host_ipaddr;
  uip_ipaddr_t host_ipsubnet;
  uip_ipaddr_t host_ipdraddr;

  /* print welcome message */
  printf("Welcome!\r\n\r\n");
  printIPConfig();
  printf("listening on following ports: ");
  for(int c = 0; c < UIP_LISTENPORTS; ++c) {
    if(uip_listenports[c] != 0) {
      printf("%d\r\n", htons(uip_listenports[c]));
    }
  }


  uint32_t rx_len;
  uint32_t counter_timer2 = 0;
  uint32_t counter_timer = 0;

  while(1) {

    /* check if complete ethernet frame is available */
    if (eof_received()) {

      /* get size in bytes */
      uint32_t rx_len = eth_frame_rx_size();
      /* load frame into buffer */
      enqueue_udma_rx(&uip_buf[0], rx_len);
      wait_udma_rx_done();
      uip_len = rx_len;

      /* enable reception of next ethernet frame */
      eof_reset();

      /* process frame depending on ethernet type */

      /* ethernet type == 0x0800 */
      if(BUF->type == htons(UIP_ETHTYPE_IP)) {
        //printEthFrame((uint8_t *)&uip_buf[0], rx_len, 1, UIP_ETHTYPE_IP);

        /* refresh ARP table */
        uip_arp_ipin();
        /* process IP packet */
        uip_input();

        /* if one of the function above resulted in an outbound ethernet frame, send it now */
        if(uip_len > 0) {
          /* add ethernet header by looking up the ARP table; if no entry was found
           * for the destination IP, the uip_buf is overwritten and an ARP request
           * will be done instead
           */
          uip_arp_out();
          enqueue_udma_tx(&uip_buf[0], uip_len);
          wait_udma_tx_done();
        }

      /* ethernet type == 0x0806 */
      } else if (BUF->type == htons(UIP_ETHTYPE_ARP)) {
        //printEthFrame((uint8_t *)&uip_buf[0], rx_len, 1, UIP_ETHTYPE_ARP);

        /* process ARP; this may ether be a respone, then uip_len will be 0 afterwards
         * if this is a ARP probe, answer it
         */
        uip_arp_arpin();
        if(uip_len > 0) {
          enqueue_udma_tx(&uip_buf[0], uip_len);
          wait_udma_tx_done();
        }
      // TODO } else if(BUF->type == htons(UIP_ETHTYPE_PTP)) {}

      } else {
        // protocol not implemented
      }
    } else if (counter_timer > 100000) {
      counter_timer = 0;
      // timer_reset(&periodic_timer);
      for(int i = 0; i < UIP_CONNS; i++) {
        uip_periodic(i);
        if(uip_len > 0) {
          uip_arp_out();
          enqueue_udma_tx(&uip_buf[0], uip_len);
          wait_udma_tx_done();
        }
      }

#if UIP_UDP
      for(int i = 0; i < UIP_UDP_CONNS; i++) {
        uip_udp_periodic(i);
        if(uip_len > 0) {
          uip_arp_out();
          enqueue_udma_tx(&uip_buf[0], uip_len);
          wait_udma_tx_done();
        }
      }
#endif /* UIP_UDP */

      /* Call the ARP timer function every 10 seconds. */
      if (counter_timer2 > 10000000) {
        counter_timer2 = 0;
        uip_arp_timer();
      }
    }

    counter_timer++;
    counter_timer2++;
  }
  return 0;
}

void uip_callback(void) {
  // TODO handle udp and tcp connections; ARP and ICMP is handled internally in uIP stack
  //printf("uip_callback TODO\r\n");

  switch (uip_conn->lport) {
  case HTONS(1234):
    if (uip_newdata() || uip_rexmit()) {
      uip_send("DEADBEEF\n", 9);
    }
    break;
  default:
    //printf("received packet at port: %d; do nothing\r\n", uip_conn->lport);
    break;
  }
}

void uip_udp_callback(void) {
  //printf("uip_udp_callback TODO\r\n");
}
