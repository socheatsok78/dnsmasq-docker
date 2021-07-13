FROM debian:10-slim

RUN apt-get update -y && \
    apt-get install -y \
        dnsmasq \
        dnsutils

VOLUME /etc/dnsmasq.d
EXPOSE 53 53/udp
ENTRYPOINT [ "dnsmasq", "-k" ]
