#!/bin/bash 

podman run --privileged --name ansible -v ./data:/root:z -itd localhost/ansible 
