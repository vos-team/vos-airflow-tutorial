#!/bin/bash

# install aws cli latest
sudo apt-get install -y awscli

# install eksctl v0.125.0
curl --silent --location "https://github.com/weaveworks/eksctl/releases/download/v0.125.0/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin

# install kubectl v1.23.6
curl -LO https://dl.k8s.io/release/v1.23.6/bin/linux/amd64/kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl


# install helm v3.8.2
wget https://get.helm.sh/helm-v3.8.2-linux-amd64.tar.gz
tar xvf helm-*-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin

# install jq
sudo apt install -y jq

# install pip3
sudo apt-get install -y python3-pip 

# check installation
which kubectl eksctl helm python3 envsubst sed cut tr pip3 jq

