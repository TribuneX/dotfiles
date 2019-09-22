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

# Start proxy
cntlm -f -c ~/.cntlm.conf

trap SIGINT                                         