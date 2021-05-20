# Mine XMR using K8s
Mine Monero using a Kubernetes cluster

Note the assumption is you have a small k8s cluster with limited resources
and you want to mine using left over resources

## Edit k8s.yaml
Update the manifest to point to the right mining pool, your wallet and 
resources from your cluster you want to assign to mine

## To Launch your resource limited mining pods in the "minexmr" namespace of your cluster
kubectl apply -f k8s.yaml

## Details 
To mine XMR (Monero) Crypto using your K8s cluster with CPU you'll need a
wallet that accepts XMR and to use a mining pool.
* Monero Wallet:  RECEIVINGADDRESS

Using unmineable as the pool
* mining pool info:  https://www.unmineable.com/coins/XMR 

