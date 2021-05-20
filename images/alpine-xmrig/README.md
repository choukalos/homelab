# ALpine-XMRig

XMRig miner in an Alpine Linux Docker image

Container to help you mine Monero.  Uses an Alpine linux container to get a lightweight image and simple security model.
Configured to use a dedicated restricted user

# How To Use

docker run --restart unless-stopped --read-only -m 50M -c 512 bitnn/alpine-xmrig -o POOL01 -o POOL02 -u WALLET -p PASSWORD -k

