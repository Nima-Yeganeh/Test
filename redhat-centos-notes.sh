sudo yum install qemu-kvm libvirt virt-manager libvirt-client
sudo yum group install "Virtualization Client"
sudo yum group list hidden
sudo systemctl start libvirtd
sudo systemctl enable libvirtd
sudo reboot
less -N filename
sudo virsh list
dominfo
systemctl list-unit-files -at service
systemctl list-units -t service --state running
systemctl cat rsyslog
systemctl status rsyslog
systemctl is-active atd
sudo systemctl mask atd
sudo systemctl unmask atd
systemctl is-enabled atd
nm-cli
nm-tui
nm-connection-editor
ip addr
sudo nmtui
cat /etc/sysconfig/network-scripts/ifcfg-eth0
timedatectl
timedatectl list-timezones
timedatectl set-timezone America/Vancouver
timedatectl set-ntp true
sudo yum install -y at
at now +5min
atq
sudo yum install -y cronie crontabs
sudo systemctl enable crond
sudo systemctl start crond
crontab -e
crontab -l
ls -d /etc/cron.*
ls > file
ls >> file
ls 2> file
ls 2>> file
ls &> file
sort < unsort.txt > sort.txt
find /etc | sort | tee etcsort.txt | wc -l
find / -name *.txt | grep apache
grep '^http.*tcp.*service$' /etc/services
egrep '^http.*(tcp|udp).*service$' /etc/services
sudo tar --xattrs -cvpf etc.tar /etc
ls -lh
sudo tar --gzip --xattrs -cvpf etc.tar.gz /etc
sudo tar --bzip2 --xattrs -cvpf etc.tar.bz2 /etc
sudo tar --xz --xattrs -cvpf etc.tar.xz /etc
tar -tf etc.tar
sudo tar --xattrs -xvpf etc.tar
sudo tar --xattrs -xvpf etc.tar -C /home/
gzip services
gunzip services.gz
bzip2 services
bunzip2 services.bz2
xz services
ls -anp
unxz services.xz
zip services.zip services
unzip services.zip
echo "Test" >> textfile.txt
cat
touch
mkdir
mkdir -p parent/child
find parent/child
mkdir {dir1,dir2,dir3}
cp file1 file2
sudo yum install -y tree
cp -i file1 file2
cp -R dir1 dir2
mv -bf --verbose source dest
mkdir dir{1,2}
touch file{a,b,c,d}.txt
ln file filelink
stat file
stat filelink
ln -s file filelink
man -k crontab
info crontab
sudo systemctl start rsyslog
less -N file
sudo grep -v 'systemd' /var/log/messages
sudo egrep -v 'systemd|Network' /var/log/messages
sudo tail -f /var/log/messages
less -N /etc/rsyslog.conf
ls /etc/cron.daily
logger "Test!"
journalctl
journalctl /sbin/crond
journalctl -u crond
journalctl -f
sudo mkdir -p /var/log/journal
sudo systemctl restart systemd-journald
ls -anp /var/log/journal
rpm -qa
rpm -qa | sort
rpm -qi bash
rpm -ql yum
rpm -qd yum
rpm -qc yum
rpm -qf /bin/bash
rpm -q --provides bash
rpm -q --requires bash
sudo yum install -y yum-plugin-downloadonly
sudo yum install --downloadonly --downloaddir=/tmp/packages httpd
rpm -qip file.rpm
dnf install -y httpd
dnf --showduplicates list xfsprogs
dnf list --installed
dnf list --all
dnf list --all --showduplicates
dnf list --updates
dnf list --obsoletes
dnf info dnf
dnf info --updates
dnf deplist dnf
dnf group list
dnf group list hidden
dnf group info "Development Tools"
dnf search vim
dnf list --all vi*
dnf provides vim
sudo dnf install -y tree
sudo dnf install -y epel-release
sudo dnf install konsole
sudo dnf reinstall vim
sudo dnf upgrade teamd
sudo dnf remove teamd
sudo dnf autoremove
dnf group list ids
sudo dnf group upgrade security-tools
dnf check-update
dnf list kernel
ls -l /boot
uname -r
cat /etc/default/grub
dnf list --available kernel
ls /lib/modules/$(uname -r)/kernel
lsmod
