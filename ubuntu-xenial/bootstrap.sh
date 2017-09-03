#!/bin/bash -e

git clone https://github.com/koooge/ubuntu-xenial-provisioning.git
cd ubuntu-xenial-provisioning
./ubuntu.sh
cd -
# rm -rf ubuntu-xenial-provisioning
