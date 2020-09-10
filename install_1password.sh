#!/bin/bash
#https://support.1password.com/cs/getting-started-linux/

sudo rpm --import https://onepassword.s3.amazonaws.com/linux/keys/1password.asc

sudo sh -c 'echo -e "[1password]\nname=1Password\nbaseurl=https://onepassword.s3.amazonaws.com/linux/rpm\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://onepassword.s3.amazonaws.com/linux/keys/1password.asc" > /etc/yum.repos.d/1password.repo'

sudo dnf -y install 1password
