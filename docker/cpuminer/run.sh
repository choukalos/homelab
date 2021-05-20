#!/bin/sh
# Shell script to run docker container to cpu mine
# mine Etherium Classic
docker run tpruvot/cpuminer-multi  -a keccak --url=statum+tcp://yiimp.ccminer.org:3739 --user=0x7cE7870649d2268D6019cf1DDf3F637315686741  --pass=x 
