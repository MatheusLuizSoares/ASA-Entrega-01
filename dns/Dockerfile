FROM ubuntu:20.04

RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bind9 dnsutils &&     rm -rf /var/lib/apt/lists/*

COPY named.conf.local /etc/bind/named.conf.local
COPY db.asa.br /etc/bind/db.asa.br

CMD ["/usr/sbin/named", "-g"]