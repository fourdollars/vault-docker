# syntax=docker/dockerfile:1.3-labs
FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN <<EOF
apt-get -q -q update
apt-get full-upgrade --yes
apt-get install --no-install-recommends --yes curl gpg gpg-agent lsb-release software-properties-common jq
curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
apt-add-repository --yes "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
apt-get install --yes vault
EOF
