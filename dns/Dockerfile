FROM ubuntu:22.04
RUN apt-get update && \
    apt-get install -y bind9 dnsutils
COPY named.conf /etc/bind/named.conf
COPY named.conf.local /etc/bind/named.conf.local
COPY db.asa /etc/bind/db.asa
CMD ["named", "-g"]