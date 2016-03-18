FROM centos:6.7
COPY . /cdh4
RUN sh /cdh4/vagrant-ansible/provision.sh /cdh4/ansible
CMD ls -a /
