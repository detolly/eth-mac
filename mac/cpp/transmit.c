#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <linux/if_packet.h>
#include <net/ethernet.h>
#include <net/if.h>
#include <arpa/inet.h>
#include <poll.h>
#include <time.h>

#define REPLY_TIMEOUT_MS 5000

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

    /* Bind the socket to eth0 so recvfrom() only sees frames from that port. */
    struct sockaddr_ll bind_addr = {
        .sll_family = AF_PACKET,
        .sll_protocol = htons(ETH_P_ALL),
        .sll_ifindex = sa.sll_ifindex,
    };
    if (bind(s, (struct sockaddr *)&bind_addr, sizeof(bind_addr)) < 0) {
        perror("bind");
        close(s);
        return 1;
    }

    memcpy(sa.sll_addr, dst, 6);

    unsigned char frame[] = {
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x02,
        0x00, 0b01001001,
    };
    memcpy(frame, dst, sizeof(dst));
    memcpy(frame + 6, src, sizeof(src));

    if (sendto(s, frame, sizeof(frame), 0, (struct sockaddr *)&sa, sizeof(sa)) < 0) {
        perror("sendto");
        close(s);
        return 1;
    }

    /* Listen for any frame received after the request. */
    struct timespec deadline;
    clock_gettime(CLOCK_MONOTONIC, &deadline);
    deadline.tv_sec += REPLY_TIMEOUT_MS / 1000;

    int got_frame = 0;
    printf("listening for frames...\n");
    for (;;) {
        struct timespec now;
        clock_gettime(CLOCK_MONOTONIC, &now);
        int remaining =
            (deadline.tv_sec - now.tv_sec) * 1000 +
            (deadline.tv_nsec - now.tv_nsec) / 1000000;
        if (remaining <= 0) break;

        struct pollfd pfd = { .fd = s, .events = POLLIN };
        int ready = poll(&pfd, 1, remaining);
        if (ready < 0) { perror("poll"); break; }
        if (ready == 0) continue;

        unsigned char buf[ETH_FRAME_LEN];
        ssize_t len = recv(s, buf, sizeof(buf), 0);
        if (len < 0) { perror("recv"); break; }

        printf("frame (%zd bytes):", len);
        for (ssize_t i = 0; i < len; i++) {
            if (i % 16 == 0) printf("\n  %04zx:", (size_t)i);
            printf(" %02x", buf[i]);
        }
        printf("\n");
        got_frame = 1;
    }

    close(s);
    return got_frame ? 0 : 1;
}
