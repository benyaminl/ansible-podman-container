#!/bin/bash 

iscreated=$(podman ps -a | grep ansible | wc -l)

if [ $iscreated -eq 0 ]
then 
    podman run --privileged --name ansible -v ./data:/root:z -itd localhost/ansible 
else 
    podman start ansible
fi