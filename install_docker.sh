#!/bin/bash 
set x
set e

#remove old
sudo dnf remove -y docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine

#Install using the repository (recommended)
sudo dnf -y install dnf-plugins-core

#sudo dnf config-manager \
#    --add-repo \
#    https://download.docker.com/linux/fedora/docker-ce.repo

# install current version
#sudo dnf install docker-ce docker-ce-cli containerd.io

sudo tee /etc/yum.repos.d/docker-ce.repo<<EOF
[docker-ce-stable]
name=Docker CE Stable - \$basearch
baseurl=https://download.docker.com/linux/fedora/31/\$basearch/stable
enabled=1
gpgcheck=1
gpgkey=https://download.docker.com/linux/fedora/gpg
EOF

sudo dnf makecache
sudo dnf -y install docker-ce docker-ce-cli containerd.io

sudo grubby --update-kernel=ALL --args="systemd.unified_cgroup_hierarchy=0"

sudo systemctl enable docker
sudo systemctl start docker

sudo docker run hello-world
