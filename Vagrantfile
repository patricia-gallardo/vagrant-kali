# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "kalilinux/rolling"
  config.vm.box_check_update = true
  config.vm.hostname = "Kali"

  config.vm.provider "virtualbox" do |vb|
     vb.gui = true
     vb.name = "Kali"
     vb.memory = "12288"
   end
end
