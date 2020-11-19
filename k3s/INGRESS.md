# Cluster Ingress

K3s uses Traefik as a reverse proxy to simplify networking complexity and is deployed by default

# Details
default config is found in /var/lib/rancher/k3s/server/manifests/traefik.yaml .  Any changes made to the file will automatically be deployed just like a kubectl apply does.

Uses ports: 80,443,8080 on the host
