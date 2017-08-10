set -eu

# echo "set grub-pc/install_devices /dev/sda" | sudo debconf-communicate
sudo apt-get -qq update
sudo apt-get -y upgrade

sudo apt-get install -y git

git clone https://github.com/koooge/debian-stretch-provisioning.git
cd debian-stretch-provisioning
./debian.sh
cd ..
rm -rf debian-stretch-provisioning
