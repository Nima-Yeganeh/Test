# Zabbix Agent

sudo apt update -y
sudo apt install zabbix-agent -y

sudo cat /etc/zabbix/zabbix_agentd.conf
sudo vi /etc/zabbix/zabbix_agentd.conf
SourceIP=5.161.49.202
Server=5.161.58.208
ListenPort=10050
ListenIP=0.0.0.0
ServerActive=5.161.58.208

sudo systemctl start zabbix-agent
sudo systemctl enable zabbix-agent
sudo systemctl status zabbix-agent

ps aux | grep zabbix
netstat -anp | grep zabbix

sudo ufw allow 10050/tcp
sudo ufw status numbered
sudo ufw reload

sudo cat /var/log/zabbix-agent/zabbix_agentd.log
