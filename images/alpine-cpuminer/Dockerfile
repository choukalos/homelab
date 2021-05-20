FROM  alpine:latest
RUN   adduser -S -D -H -h /cpuminer-multi miner
RUN   apk --no-cache upgrade && \
      apk --no-cache add \
        libcurl \
        libgcc \
        libstdc++ \
        openssl \
        automake \
        autoconf \
        build-base \
        curl \
        curl-dev \
        git \
        openssl-dev
RUN git clone https://github.com/tpruvot/cpuminer-multi 
WORKDIR cpuminer-multi
RUN ./autogen.sh
RUN ./configure CFLAGS="-O3" --with-crypto --with-curl
RUN make install
RUN apk del --purge \
        libcurl \
        libgcc \
        libstdc++ \
        automake \
        autoconf \
        build-base \
        git
USER miner
ENTRYPOINT  ["./cpuminer"]

