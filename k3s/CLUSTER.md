# Cluster Setup Notes

I'm running a mixed cluster of x86 (master node) and ARM64 (RPI4's running Ubuntu).  I want only the RPI nodes to run pods as I'm running docker containers on the master node.  I'm experimenting with k3s and openfaas.

# Setup Details

On each RPI:
* label each node as RPI:  kubectl label nodes <nodename> hosttype=rpi
* review nodes and their labels:  kubectl get nodes --show-labels
* When scheduling pods make sure you do the following to only schedule jobs on the RPIs

`
  ...
  spec:
  containers:
  ...
  nodeSelector:
    hosttype: rpi
`

