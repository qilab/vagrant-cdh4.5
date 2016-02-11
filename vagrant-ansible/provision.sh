#!/bin/bash

ANSIBLE_PLAYBOOK=/ansible/site.yml
ANSIBLE_HOSTS=/ansible/hosts
ANSIBLE_HOSTS_TMP=/tmp/ansible_hosts

if [ ! -f $ANSIBLE_PLAYBOOK ]; then
  echo "Cannot find Ansible playbook"
  exit 1
fi

if [ ! -f $ANSIBLE_HOSTS ]; then
  echo "Cannot find Ansible hosts"
  exit 2
fi

if ! [ `which ansible` ]; then
  yum install -y epel-release
  yum install -y sshpass
  yum install -y gcc
  yum install -y python-pip python-tools python-devel
  pip install ansible
fi

cp $ANSIBLE_HOSTS $ANSIBLE_HOSTS_TMP
chmod -x $ANSIBLE_HOSTS_TMP
echo "Running Ansible"
ansible-playbook -i $ANSIBLE_HOSTS_TMP $ANSIBLE_PLAYBOOK -v --connection=local

