Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |v|
    v.name = "VAGRANT-GRAYLOG"
    v.cpus = 2
    v.memory = "4096"
  end
  config.vm.box = "debian/bullseye64"
  config.vm.hostname = "Graylog"
  config.vm.network "public_network", ip: "192.168.0.254", netmask: "255.255.255.0", bridge: "wlo1"

  config.vm.provision "file", source: "./.env", destination: ".env"
  config.vm.provision "file", source: "./docker-compose.yml", destination: "docker-compose.yml"
  config.vm.provision "shell", path: "./shell.sh"
end