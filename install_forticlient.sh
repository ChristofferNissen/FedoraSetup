#!/bin/bash
curl -fsSL https://filestore.fortinet.com/forticlient/downloads/FortiClientFullVPNInstaller_6.4.0.0851.rpm --output forticlient_x86_64.rpm
sudo dnf -y install ./forticlient_x86_64.rpm
rm forticlient_x86_64.rpm