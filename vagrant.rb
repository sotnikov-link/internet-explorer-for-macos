# Based on https://gist.github.com/anthonysterling/7cb85670b36821122a4a

Vagrant.configure("2") do |config|
	config.vm.box = "Win7IE11"
  config.vm.box_url = "./downloads/ie11.win7.box"
	config.vm.guest = :windows
	config.vm.boot_timeout = 1
	config.vm.communicator = "winrm"
	config.vm.provider "virtualbox" do |vm|
    vm.gui = true
    vm.memory = 2048
    vm.cpus = 4
    vm.customize ["modifyvm", :id, "--vram", "256"]
    vm.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vm.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vm.customize ["modifyvm", :id, "--hwvirtex", "on"]
    vm.customize ["modifyvm", :id, "--accelerate3d", "on"]
    vm.customize ["modifyvm", :id, "--accelerate2dvideo", "on"]
    vm.customize ["guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 10000]
	end
end
