#!/usr/bin/env bash
timedatectl set-timezone Asia/Jakarta
yum install -y https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.2.6-3.3.el7.x86_64.rpm
curl -L https://download.docker.com/linux/centos/docker-ce.repo -o /etc/yum.repos.d/docker-ce.repo
yum install docker-ce git epel-release -y
systemctl enable docker
systemctl start docker
usermod -aG docker vagrant
