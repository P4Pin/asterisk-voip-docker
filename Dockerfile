FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    asterisk \
    asterisk-core-sounds-en \
    asterisk-moh-opsound-wav \
    mailutils \
    iproute2 \
    net-tools \
    procps \
    nano \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/run/asterisk /var/log/asterisk /var/spool/asterisk /etc/asterisk
RUN chown -R asterisk:asterisk /var/run/asterisk /var/log/asterisk /var/spool/asterisk /etc/asterisk

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 5060/udp
EXPOSE 10000-10100/udp

ENTRYPOINT ["/entrypoint.sh"]