#!/bin/bash
curl -fsSL https://zoom.us/client/latest/zoom_x86_64.rpm --output zoom_x86_64.rpm
sudo dnf -y install ./zoom_x86_64.rpm
rm zoom_x86_64.rpm