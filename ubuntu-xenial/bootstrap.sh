#!/bin/bash -e

sudo apt-get -qq update
sudo apt-get -y install git

git clone https://github.com/koooge/ubuntu-xenial-provisioning.git
cd ubuntu-xenial-provisioning
./ubuntu.sh
cd -
# rm -rf ubuntu-xenial-provisioning
