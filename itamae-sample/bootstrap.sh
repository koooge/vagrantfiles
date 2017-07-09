set -e

echo "set grub-pc/install_devices /dev/sda" | sudo debconf-communicate
sudo apt-get -qq update
sudo apt-get -y upgrade

sudo apt-get install --force-yes -y git

git clone https://github.com/koooge/debian-provisioning.git
cd debian-provisioning
cp .bash_profile ${HOME}/
./install_ruby.sh
cd ..
rm -r debian-provisioning

source ${HOME}/.bash_profile
gem install itamae --no-document

