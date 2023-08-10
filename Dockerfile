FROM ghcr.io/fernandoenzo/debian:12

COPY contents/ /tmp/contents
RUN bash /tmp/contents/scripts/basics
