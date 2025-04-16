#!/bin/sh

podman run --rm -it -v..:/srv:z -w/srv fedora:42 bash -c \
  "
    dnf -y install bison flex android-tools make gcc glibc-devel openssl-devel openssl-devel-engine gnutls-devel awk
    cd fedora-mobility
    ./build_all.sh
  "

