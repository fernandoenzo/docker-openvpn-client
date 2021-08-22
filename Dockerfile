FROM ghcr.io/fernandoenzo/debian:testing
MAINTAINER Fernando Enzo Guarini (fernandoenzo@gmail.com)

COPY scripts/basics /tmp
RUN bash /tmp/basics

COPY static/client.conf /etc/openvpn/
COPY static/update-resolv-conf /etc/openvpn/
COPY static/update-resolv /usr/bin/

COPY scripts/boot /usr/local/boot

