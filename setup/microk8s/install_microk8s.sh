#!/bin/sh
sudo snap install microk8s --classic --channel=1.20/stable
sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
tee -a ~/.bash_aliases <<<EOF
alias kubectl='microk8s kubectl'
EOF
su - $USER
microk8s status --wait-ready
#kubectl cluster-info
#kubectl get services
