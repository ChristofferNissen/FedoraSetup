#Check if docker zone exists in firewall-cmd
firewall-cmd --get-active-zones

#If "docker" zone is available, change interface to docker0 (not persisted)
sudo firewall-cmd --zone=docker --change-interface=docker0

#If "docker" zone is available, change interface to docker0 (persisted, thanks rbjorklin)

sudo firewall-cmd --permanent --zone=docker --change-interface=docker0
sudo systemctl restart firewalld
