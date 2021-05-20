#!/bin/sh
# docker run --restart unless-stopped --read-only -m 50M -c 512 bitnn/alpine-xmrig -o POOL01 -o POOL02 -u WALLET -p PASSWORD -k
# docker run --restart unless-stopped --read-only -m 50M -c 512 bitnn/alpine-xmrig -o pool.supportxmr.com:7777 -o xmr-eu.dwarfpool.com:8005 -u 45CJVagd6WwQAQfAkS91EHiTyfVaJn12uM4Su8iz6S2SHZ3QthmFM9BSPHVZY388ASWx8G9Wbz4BA24RQZUpGczb35fnnJz -p x -k
docker run --read-only -m 50M -c 512 bitnm/alpine-xmrig \
  -o rx.unmineable.com:3333 \
  -a rx -k \
  -u XMR:48XhYHerxvcREeucZyg5uGiP5gw4buYS4PAMBvADgq7HE62hjFJLa1Rh37f4Gx7FkBPdmEBrErebhC9RBv6i3ckrSwew4rN 



