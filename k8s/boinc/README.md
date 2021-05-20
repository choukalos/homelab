# BOINC K3 Workers

Homelab contribution to COVID research by sharing compute cycles from the K3 cluster

## How
1.  Create an account at www.worldcommunitygrid.org
2.  add the 'account key' and update yml file
3.  Spin up boinc worker in the cluster
4.  Scale workers as appropriate

kubectl create -f boinc.yml

## example scale to 3 workers
kubectl scale rc boinc-workers --replicas=3
