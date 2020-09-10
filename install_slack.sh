#!/bin/bash
sudo dnf -y update

sudo dnf -y install wget
wget https://downloads.slack-edge.com/linux_releases/slack-3.4.0-0.1.fc21.x86_64.rpm
sudo dnf localinstall slack-3.4.0-0.1.fc21.x86_64.rpm -y
