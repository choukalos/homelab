# Mine XMR using K8s
Mine Monero using a Kubernetes cluster

Note the assumption is you have a small k8s cluster with limited resources
and you want to mine using left over resources

## Edit k8s.yaml
Update the manifest to point to the right mining pool, your wallet and 
resources from your cluster you want to assign to mine

## To Launch your resource limited mining pods in the "minexmr" namespace of your cluster
kubectl apply -f mine_xmr_deployment.yaml

## Useful Kubernetes commands
* Get nodes        :  kubectl get nodes
* See Pods         :  kubectl get pods
* See Deployment   :  kubectl describe deployments mine-xmr-deployment
* Scale Deployment :  kubectl scale --replicas=4 deployment.mine-xmr-deployment
* See all          :  kubectl get all -A
* Delete deployment:  kubectl delete deployment.mine-xmr-deployment


## Details 
To mine XMR (Monero) Crypto using your K8s cluster with CPU you'll need a
wallet that accepts XMR and to use a mining pool.
* Monero Wallet:  RECEIVINGADDRESS

Using unmineable as the pool
* mining pool info:  https://www.unmineable.com/coins/XMR 

