# UBI as builder 
FROM registry.access.redhat.com/ubi9/ubi-minimal:latest as builder
RUN microdnf install \
    --installroot /tmp/micro \
    --setopt=install_weak_deps=0 \
    --releasever 9 \
    --nodocs -y \
    --config /dev/null \
    --noplugins \
    --setopt=cachedir=/var/cache/yum \
    --setopt=reposdir=/etc/yum.repos.d \
    --setopt=varsdir=/tmp/varsdir \
    git \
    podman \
    python3 \
    python3-pip
    # zlib \
    # libstdc++ \
    # glibc

# UBI Micro as Container
FROM registry.access.redhat.com/ubi8/ubi-micro:latest
COPY --from=builder /tmp/micro/ /
USER root
RUN python3 -m pip install ansible-navigator
CMD ["sleep","infinity"]
