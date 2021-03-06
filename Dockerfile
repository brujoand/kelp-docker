FROM alpine:latest

LABEL maintainer="brujoand <Github: @brujoand>"

WORKDIR /tmp

ADD https://github.com/stellar/kelp/releases/download/v1.11.0/kelp-v1.11.0-linux-amd64.tar .

RUN tar x -f kelp-v1.11.0-linux-amd64.tar && \
  mkdir /opt/kelp/ && \
  mv kelp-v1.11.0/kelp /opt/kelp/kelp && \
  chmod +x /opt/kelp/kelp && \
  addgroup -S -g 1000 kelp && \
  adduser -S -u 1000 -G kelp kelp && \
  rm -rf /tmp/*

RUN ulimit -n 10000

WORKDIR /opt/kelp

USER kelp

ENTRYPOINT ["./kelp"]

