FROM docker.io/fedora:37
# Or we can use 
# FROM registry.fedoraproject.org/fedora:37

USER root
#RUN dnf repolist all
RUN dnf install python3 python3-pip podman -y
RUN python3 -m pip install ansible-navigator
# RUN dnf install -y ansible-navigator 
RUN ansible-navigator --help
# RUN podman pull quay.io/ansible/creator-ee:v0.9.1
CMD ["sleep","infinity"]
