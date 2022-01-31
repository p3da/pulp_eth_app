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

uint8_t ipaddr_part[4] = {192, 168, 0, 128};
uint8_t ipsubnet_part[4] = {255, 255, 255, 0};
struct uip_eth_addr uipmacaddr = {{0x20, 0x00, 0x00, 0x00, 0x00, 0x00}};

void printEthFrame(uint8_t *rx_buffer, uint16_t ethframe_size) {

  printf("ETHERNET FRAME recieved; size: %d\n\r", ethframe_size);
  /* debug output */
  // for (int i = 0; i < ethframe_size; i++) {
  //   if (i%8 == 0) {
  //     printf("\n\r0x%04X    ", i);
  //   }
  //   printf("%02X ", rx_buffer[i]);
  // }
  // printf("\n\rEND OF FRAME\n\r\n\r");
}


int main(void) {
  //int i;
  printf("Hello\n\r");
  /* initialize uDMA subsystem and uDMA peripherals */
  init_udma_eth_frame();


  /* Initialize the uIP ARP subsystem */
  uip_arp_init();
  /*set mac address */
  uip_setethaddr(uipmacaddr);

  /* initialize uIP stack*/
  uip_init();

  /* set host ip address and subnet */
  uip_ipaddr_t ipaddr;
  uip_ipaddr_t ipsubnet;

  uip_ipaddr(&ipaddr, ipaddr_part[0], ipaddr_part[1], ipaddr_part[2], ipaddr_part[3]);
  uip_sethostaddr(&ipaddr);
  uip_ipaddr(&ipsubnet, ipsubnet_part[0], ipsubnet_part[1], ipsubnet_part[2], ipsubnet_part[3]);
  uip_setnetmask(&ipsubnet);

  /* Initialize the application to listen on TCP port 23 (telnet) */
  uip_listen(HTONS(1234));

  uint32_t rx_len;
  uint32_t counter_timer2 = 0;
  uint32_t counter_timer = 0;

  while(1) {
    if (eof_received()) {

      uint32_t rx_len = eth_frame_rx_size();
      enqueue_udma_rx(&uip_buf[0], rx_len);
      wait_udma_rx_done();
      printEthFrame((uint8_t *)&uip_buf[0], rx_len);
      uip_len = rx_len;

      eof_reset();

      if(BUF->type == htons(UIP_ETHTYPE_IP)) {
        printf("eth type: ip\n\r");
      	uip_arp_ipin();
      	uip_input();

        /* If the above function invocation resulted in data that
         should be sent out on the network, the global variable
         uip_len is set to a value > 0. */
        if(uip_len > 0) {
          uip_arp_out();
          printf("eth frame (ip) out len: %d\n\r", uip_len);
          enqueue_udma_tx(&uip_buf[0], uip_len);
          wait_udma_tx_done();
        }
      } else if (BUF->type == htons(UIP_ETHTYPE_ARP)) {

        printf("eth type: arp\n\r");
        uip_arp_arpin();
        /* If the above function invocation resulted in data that
           should be sent out on the network, the global variable
           uip_len is set to a value > 0. */
        if(uip_len > 0) {
          //uip_arp_out();
          printf("eth frame (arp) out len: %d\n\r", uip_len);
          enqueue_udma_tx(&uip_buf[0], uip_len);
          wait_udma_tx_done();
        }


      }
      // TODO else if(BUF->type == htons(UIP_ETHTYPE_PTP))

    } else if (counter_timer > 100000) {
      printf("counter 1 expired\r\n");
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
        printf("counter 2 expired\r\n");
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
  printf("uip_callback TODO\r\n");

  switch (uip_conn->lport) {
  case HTONS(1234):
    if (uip_newdata() || uip_rexmit()) {
      uip_send("DEADBEEF\n", 9);
    }
    break;
  default:
    printf("received packet at port: %d; do nothing\r\n", uip_conn->lport);
    break;
  }
}
