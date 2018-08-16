FROM fernandoenzo/debian:10s-min
MAINTAINER Fernando Enzo Guarini (fernandoenzo@gmail.com)

COPY static/gpg.conf /etc/skel/.gnupg/
COPY static/dirmngr.conf /etc/skel/.gnupg/

COPY scripts/basics /tmp
RUN bash /tmp/basics

COPY static/client.conf /etc/openvpn/

COPY scripts/boot /usr/local/boot

