#!/bin/bash
kubeadm reset -f
rm -rf $HOME/.kube/config
systemctl stop kubelet
systemctl stop docker
rm -rf /var/lib/cni/
rm -rf /var/lib/kubelet/*
rm -rf /etc/cni/
ifconfig cni0 down
ifconfig flannel.1 down
ifconfig docker0 down
ip link delete cni0
ip link delete flannel.1
iptables -F && iptables -t nat -F && iptables -t mangle -F && iptables -X
systemctl start kubelet
systemctl enable kubelet
systemctl start docker
systemctl enable docker
kubeadm reset
sudo apt-get purge kubeadm kubectl kubelet kubernetes-cni kube*
sudo apt-get autoremove
sudo rm -rf ~/.kube
rm -rf/etc/kubernetes 
rm -rf /usr/libexec/kubernetes
