#!/bin/bash -e

sudo apt-get update -qq
sudo apt-get upgrade -y
sudo apt-get install -y git

git clone https://github.com/koooge/ubuntu-xenial-provisioning.git
cd ubuntu-xenial-provisioning
./ubuntu.sh
cd -
rm -rf ubuntu-xenial-provisioning
