FROM alpine:latest

RUN apk add --no-cache dhcp

EXPOSE 67/udp 67/tcp

RUN ["touch", "/etc/dhcp/dhcpd.conf"]
RUN ["touch", "/var/lib/dhcp/dhcpd.leases"]

CMD ["/usr/sbin/dhcpd", "-4", "-f", "-d", "--no-pid", "-cf", "/etc/dhcp/dhcpd.conf"]
