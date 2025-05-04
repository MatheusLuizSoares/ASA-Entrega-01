FROM ubuntu/bind9:latest
COPY named.conf.local /etc/bind/
COPY db.asa.br /etc/bind/
RUN chown root:bind /etc/bind/*
EXPOSE 53/udp 53/tcp
CMD ["named", "-g"]