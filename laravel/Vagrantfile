VAGRANTFILE_API_VERSION = "2"

CPU_COUNT = "1"
RAM = "2048"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "laravel/homestead"

  config.vm.network :private_network, ip: "192.168.33.10"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "#{RAM}"
    vb.cpus = "#{CPU_COUNT}"
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end
end
