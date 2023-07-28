# zabbix proxy
# https://www.zabbix.com/download

lsb_release -a
wget https://repo.zabbix.com/zabbix/6.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.4-1+ubuntu20.04_all.deb
dpkg -i zabbix-release_6.4-1+ubuntu20.04_all.deb
apt update -y
apt install zabbix-proxy-sqlite3 -y
cat /etc/zabbix/zabbix_proxy.conf
vi /etc/zabbix/zabbix_proxy.conf
# Server=127.0.0.1
Server=5.161.58.208
Hostname=zabbixproxy1
DBName=/tmp/zabbix_proxy
DBUser=zabbix

systemctl enable zabbix-proxy
systemctl restart zabbix-proxy

cat /var/log/zabbix/zabbix_proxy.log
ls -ltr /tmp/

