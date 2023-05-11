useradd ansible
passwd ansible
su - ansible
ssh-keygen
ssh-copy-id SERVER
ssh SERVER
visudo
ansible ALL=(ALL) NOPASSWD:ALL
su - ansible
cat /etc/ansible/hosts
ansible -m yum -b -a 'name=mysql state=latest' SEREVR
rpm -qa | grep mariadb
ansible -m yum -b -a 'name=mysql state=absent' SERVER
