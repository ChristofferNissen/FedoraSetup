#!/bin/bash


if grep -q 'load-module module-switch-on-connect' "/etc/pulse/default.pa"; then
echo 'Found module-switch-on-connect. Doing nothing' # SomeString was found

else

echo 'Inserting line in /etc/pulse/default.pd'
cat << "EOF" >> /etc/pulse/default.pa 

# automatically switch to newly-connected devices
load-module module-switch-on-connect

EOF

fi
