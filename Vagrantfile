# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.7.0"

Vagrant.configure(2) do |config|

  config.vm.box = "bento/centos-6.7"

  config.vm.network "private_network", ip: "192.168.33.41"

  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "ansible/playbook.yml"
    ansible.inventory_path = "ansible/hosts"
    ansible.limit = "cdh"
  end

end

