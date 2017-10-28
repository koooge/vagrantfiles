#!/bin/bash -e

sudo apt-get update -qq
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade

git clone https://github.com/koooge/ubuntu-xenial-provisioning.git
cd ubuntu-xenial-provisioning
  ./ubuntu.sh
cd
rm -rf ubuntu-xenial-provisioning
