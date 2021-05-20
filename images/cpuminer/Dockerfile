# Dockerfile to create cpuminer container for cpu mining
# Usage docker build .
# Usage create env variables for parameters
#
FROM            ubuntu:20.04
MAINTAINER	Chuck Choukalos <nohup@gmail.com>

RUN		apt-get update && \
		apt-get install -qy automake autoconf pkg-config libcurl4-openssl-dev libssl-dev libjansson-dev libgmp-dev make g++ git gpgv && \
                apt-get clean && \
                rm -rf /var/lib/apt/lists/* && \
RUN		git clone https://github.com/tpruvot/cpuminer-multi -b linux
RUN             cd cpuminer-multi && ./build.sh
WORKDIR         /cpuminer-multi
ENTRYPOINT      ["./cpuminer"]
