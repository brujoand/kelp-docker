FROM alpine:latest

LABEL maintainer="brujoand <Github: @brujoand>"

ARG KELP_VERSION

WORKDIR /tmp

ADD https://github.com/stellar/kelp/releases/download/${KELP_VERSION}/kelp-${KELP_VERSION}-linux-amd64.tar .

RUN tar x -f kelp-${KELP_VERSION}-linux-amd64.tar && \
  mkdir /opt/kelp/ && \
  mv kelp-${KELP_VERSION}/kelp /opt/kelp/kelp && \
  chmod +x /opt/kelp/kelp && \
  addgroup -S -g 1000 kelp && \
  adduser -S -u 1000 -G kelp kelp && \
  rm -rf /tmp/*

RUN ulimit -n 10000

WORKDIR /opt/kelp

USER kelp

ENTRYPOINT ["./kelp"]

