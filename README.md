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

# Footnote 
This podman ansible is possible by the implementation by Dan Walsh on Podman in Podman, more see [Podman in Podman using --privileged](https://www.redhat.com/sysadmin/podman-inside-container) written by Dan Walsh

