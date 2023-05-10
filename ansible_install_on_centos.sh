yum update -y
hostname ansible
yum repolist
yum search ansible
yum install centos-release-ansible-29.noarch -y
yum install ansible -y
ansible --version
ansible --list-host all
cat /etc/ansible/hosts
cat /etc/ansible/ansible.cfg
