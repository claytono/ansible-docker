FROM debian:stable-slim

RUN apt update && \
  apt install --no-install-recommends python3-pip -y && \
  rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install --user ansible==5.5.0
