sudo apt update -y
sudo apt upgrade -y
sudo apt install curl -y
nproc
df -h
sleep 2
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube version
minikube start --driver=docker
minikube start --driver=docker --force
minikube status
kubectl get nodes

