#!/bin/sh
# Enable useful addons to master node
# setup dns, ingress, storage and a local registry (on port 32000)
# edit the docker daemon (/etc/docker/daemon.json and add { "insecure-regsitries" : ["192.168.1.51:32000"] } to the file; sudo systemctl restart docker
# good write up / notes:  https://dev.to/musabhusaini/remote-development-with-multi-node-microk8s-cluster-and-scaffold-4o1d 
sudo microk8s enable dns ingress storage registry
