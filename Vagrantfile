Vagrant.configure("2") do |config|
  config.vm.provision "shell", path: "install-docker.sh"
  config.vm.box = "centos/7"
  config.vm.box_version = "2004.01"
  config.vm.provider :virtualbox do |vb|
    vb.memory = 2048
    vb.cpus = 1
  end

  config.vm.define "node0" do |node0|
    node0.vm.hostname = "nacita-node0"
    node0.vm.network "private_network", ip: "10.5.5.10"
  end

  config.vm.define "node1" do |node1|
    node1.vm.hostname = "nacita-node1"
    node1.vm.network "private_network", ip: "10.5.5.11"
  end

  config.vm.define "node2" do |node2|
    node2.vm.hostname = "nacita-node2"
    node2.vm.network "private_network", ip: "10.5.5.12"
  end


end
