#!/bin/sh
# Example of mining monero via interactive docker shell (you can see hash rates/etc)
docker run -it choukalos/alpine-cpuminer -D --algo=cryptonight --threads=1 -o stratum+tcp://monerohash.com:2222 -u 48XhYHerxvcREeucZyg5uGiP5gw4buYS4PAMBvADgq7HE62hjFJLa1Rh37f4Gx7FkBPdmEBrErebhC9RBv6i3ckrSwew4rN -p x 

