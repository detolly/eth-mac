#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <linux/if_packet.h>
#include <net/ethernet.h>
#include <net/if.h>
#include <arpa/inet.h>

int main(void)
{
    int s = socket(AF_PACKET, SOCK_RAW, htons(ETH_P_ALL));
    if (s < 0) { perror("socket"); return 1; }

    struct sockaddr_ll sa = {
        .sll_family = AF_PACKET,
        .sll_protocol = htons(ETH_P_ALL),
        .sll_ifindex = if_nametoindex("eth0"),
        .sll_halen = ETH_ALEN,
    };
    unsigned char dst[6] = {0x11,0x22,0x33,0x44,0x55,0x66};
    unsigned char src[6] = {0x6c,0x6e,0x07,0x0e,0xa6,0xc1};
    memcpy(sa.sll_addr, dst, 6);

    unsigned char frame[] = {
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x02,
        0x01, 0b00000111,
    };
    memcpy(frame, dst, sizeof(dst));
    memcpy(frame + 6, src, sizeof(src));

    if (sendto(s, frame, sizeof(frame), 0, (struct sockaddr *)&sa, sizeof(sa)) < 0)
        perror("sendto");

    close(s);
    return 0;
}
