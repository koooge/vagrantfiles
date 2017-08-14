#!/bin/bash -eu

PASSWORD=$(perl -e 'print crypt('vagrant', "\$6\$");')
sudo useradd -p ${PASSWORD} -G sudo -m -s /bin/bash vagrant

sudo apt-get -qq update
sudo apt-get -y upgrade

sudo apt-get install --force-yes -y git


# git clone https://github.com/koooge/debian-provisioning.git
# cd debian-provisioning
# ./debian.sh
# cd ..
# rm -r debian-provisioning
