# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.7.0"

Vagrant.configure(2) do |config|

  config.vm.box = "bento/centos-6.7"

  config.vm.network "private_network", ip: "192.168.33.41"

  config.vm.provider "virtualbox" do |v|
    v.memory = 8192
    v.cpus = 2
    # for DNS
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  #config.vm.synced_folder "../../../git", "/git", mount_options: ['dmode=775', 'fmode=664']

  config.ssh.insert_key = false

  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "ansible/site.yml"
    ansible.inventory_path = "ansible/hosts"
    ansible.limit = "cdh"
  end

end

