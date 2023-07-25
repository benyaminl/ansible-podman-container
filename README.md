# Ansible Podman Container With Config

This is my personal Ansible Container Podman project, derified from RH294 Red Hat Academy. 

## How To Start 

Build the image

```
podman build -t ansible 
```

then run the image using 

```
./start.sh
```

after that you can run

```
./shell.sh
```

and either you run `ansible-navigator` or `podman pull quay.io/ansible/creator-ee:v0.9.1` 

## How to Stop or Clear

To stop you can use 

```
./stop.sh
```

to stop and fully remove the container (you will lost the podman in podman images)

```
./stop.sh rm
```


## Set The Variable 
The IP of each server on this project isn't the real server, you need to add `ansible_host` on each `host_vars` folder with the FQDN, for more see [Host Vars and Group Vars](https://docs.ansible.com/ansible/latest/inventory_guide/intro_inventory.html#organizing-host-and-group-variables), or take RH294 from Red Hat to learn more about it. 

## Install the collections 
Collection can be installed using ansible galaxy, the requirement file is provided. 

```
cd /root
ansible-galaxy collection install -r collections/requirements.yml -p collections/
```

# Footnote 
This podman ansible is possible by the implementation by Dan Walsh on Podman in Podman, more see [Podman in Podman using --privileged](https://www.redhat.com/sysadmin/podman-inside-container) written by Dan Walsh

