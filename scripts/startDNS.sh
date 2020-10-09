#!/bin/bash

# This function is called when the script is interrupted
exitfn () {
    trap SIGINT         

    echo 'Restore mvn settings'                              
    mv ~/.m2/settings.xml ~/.m2/settings-off.xml
    exit                                      
}

trap "exitfn" INT

echo 'Enable custom mvn settings'
mv ~/.m2/settings-off.xml ~/.m2/settings.xml

echo 'Add ssh-key'
ssh-add ~/.ssh/id_rsa_db

echo 'Set local DNS'
sudo scutil << EOF
get State:/Network/Service/net.pulsesecure.pulse.nc.main/DNS
d.add ServerAddresses * 192.168.178.5
set State:/Network/Service/net.pulsesecure.pulse.nc.main/DNS
EOF

echo 'DB settings active...'
read _

trap SIGINT                                         
