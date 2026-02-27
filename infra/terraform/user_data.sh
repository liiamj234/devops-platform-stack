#!/bin/bash
set -euxo pipefail

apt-get update -y
apt-get install -y ca-certificates curl git

# Install Docker
curl -fsSL https://get.docker.com | sh

# Allow ubuntu user to use docker
usermod -aG docker ubuntu

mkdir -p /opt/devops-platform-stack
cd /opt/devops-platform-stack

git clone https://github.com/liiamj234/devops-platform-stack.git .

docker compose up -d --build