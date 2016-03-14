# vagrant-cdh4.5

* CentOS 6.7 as a guest OS
* CDH 4.5 (YARN) in Pseudo-distributed Mode
* HBase in Pseudo-distributed Mode
* Hive
* MariaDB
* Redis
* SBT

## Requirements

* VirtualBox 5.0.0 or later
* Vagrant 1.7.0 or later
* Ansible 2.0.0 or later

## How to use it?

Clone this repository by `git clone`
```
git clone git@github.com:qilab-/vagrant-cdh4.5.git
```
and run `vagrant up`
* If Ansible is installed in your host OS,
```
cd vagrant-cdh4.5
vagrant up
```
* If Ansible is not installed in your host OS, use [vagrant-ansible/Vagrantfile](https://github.com/qilab-/vagrant-cdh4.5/blob/master/vagrant-ansible/Vagrantfile)
```
cd vagrant-cdh4.5/vagrant-ansible
vagrant up
```

