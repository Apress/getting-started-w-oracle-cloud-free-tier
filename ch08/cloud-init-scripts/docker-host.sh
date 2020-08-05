#!/usr/bin/env bash

sudo su -c "cd /etc/yum.repos.d && \
    if [[ ! -f \"oracle-linux-ol7.repo\" ]]; then \
    wget http://yum.oracle.com/public-yum-ol7.repo; \
    fi;"

sudo yum-config-manager --enable ol7_addons ol7_latest

sudo yum install -y docker-engine

sudo usermod -aG docker opc

sudo su -c "systemctl enable docker && systemctl start docker"

sudo su -c "mkdir -p /opt/docker && \
    chown opc:docker /opt/docker && \
    chmod 2770 /opt/docker"