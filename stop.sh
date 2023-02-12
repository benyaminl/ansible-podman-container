#!/bin/bash

podman stop ansible
if [[ $1 == 'rm' ]]
then
    echo "The Container is removed : "
    podman rm ansible
fi
