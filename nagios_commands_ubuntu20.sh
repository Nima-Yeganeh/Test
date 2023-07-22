# How to Install Nagios Monitoring Software on Ubuntu 20.04 LTS
# Nagios Server Config

sudo apt update -y 
sudo apt install -y autoconf bc gawk dc build-essential gcc libc6 make wget unzip apache2 php libapache2-mod-php libgd-dev libmcrypt-dev make libssl-dev snmp libnet-snmp-perl gettext -y
cd ~/
wget https://github.com/NagiosEnterprises/nagioscore/archive/nagios-4.4.6.tar.gz
tar -xf nagios-4.4.6.tar.gz
cd nagioscore-*/
sudo ./configure --with-httpd-conf=/etc/apache2/sites-enabled
sudo make all
sudo make install-groups-users
sudo usermod -a -G nagios www-data
sudo make install
sudo make install-daemoninit
sudo make install-commandmode
sudo make install-config
sudo make install-webconf
sudo a2enmod rewrite cgi
systemctl restart apache2
sudo htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin
cat /usr/local/nagios/etc/htpasswd.users

for svc in Apache ssh
do
ufw allow $svc
done

ufw enable
ufw status numbered

sudo apt install monitoring-plugins nagios-nrpe-plugin -y

cd /usr/local/nagios/etc
mkdir -p /usr/local/nagios/etc/servers
vim nagios.cfg
cfg_dir=/usr/local/nagios/etc/servers

vim resource.cfg
$USER1$=/usr/lib/nagios/plugins

vim objects/contacts.cfg
define contact{
        ......
        email             email@host.com
}

vim objects/commands.cfg
define command {
        command_name check_nrpe
        command_line $USER1$/check_nrpe -H $HOSTADDRESS$ -c $ARG1$
}

systemctl start nagios
systemctl enable nagios
systemctl status nagios
systemctl restart apache2

# Ubuntu Host Config To Monitor
sudo apt update -y
sudo apt install nagios-nrpe-server monitoring-plugins -y
cd /etc/nagios/
vim nrpe.cfg
server_address=5.161.58.208
allowed_hosts=127.0.0.1,::1,5.161.49.202

vim nrpe_local.cfg
command[check_root]=/usr/lib/nagios/plugins/check_disk -w 20% -c 10% -p /
command[check_ping]=/usr/lib/nagios/plugins/check_ping -H 5.161.58.208 -w 100.0,20% -c 500.0,60% -p 5
command[check_ssh]=/usr/lib/nagios/plugins/check_ssh -4 5.161.58.208
command[check_http]=/usr/lib/nagios/plugins/check_http -I 5.161.58.208
command[check_apt]=/usr/lib/nagios/plugins/check_apt

systemctl restart nagios-nrpe-server
systemctl enable nagios-nrpe-server
systemctl status nagios-nrpe-server

sudo ufw allow 5666/tcp

# Nagios Server Config
/usr/lib/nagios/plugins/check_nrpe -H 5.161.58.208
/usr/lib/nagios/plugins/check_nrpe -H 5.161.58.208 -c check_ping

cd /usr/local/nagios/etc
vim servers/client01.cfg
# Ubuntu Host Configuration
define host {
        use                          linux-server
        host_name                    client01
        alias                        Ubuntu Host
        address                      5.161.58.208
        register                     1
}
define service {
      host_name                       client01
      service_description             PING
      check_command                   check_nrpe!check_ping
      max_check_attempts              2
      check_interval                  2
      retry_interval                  2
      check_period                    24x7
      check_freshness                 1
      contact_groups                  admins
      notification_interval           2
      notification_period             24x7
      notifications_enabled           1
      register                        1
}
define service {
      host_name                       client01
      service_description             Check Users
      check_command                   check_nrpe!check_users
      max_check_attempts              2
      check_interval                  2
      retry_interval                  2
      check_period                    24x7
      check_freshness                 1
      contact_groups                  admins
      notification_interval           2
      notification_period             24x7
      notifications_enabled           1
      register                        1
}
define service {
      host_name                       client01
      service_description             Check SSH
      check_command                   check_nrpe!check_ssh
      max_check_attempts              2
      check_interval                  2
      retry_interval                  2
      check_period                    24x7
      check_freshness                 1
      contact_groups                  admins
      notification_interval           2
      notification_period             24x7
      notifications_enabled           1
      register                        1
}
define service {
      host_name                       client01
      service_description             Check Root / Disk
      check_command                   check_nrpe!check_root
      max_check_attempts              2
      check_interval                  2
      retry_interval                  2
      check_period                    24x7
      check_freshness                 1
      contact_groups                  admins
      notification_interval           2
      notification_period             24x7
      notifications_enabled           1
      register                        1
}
define service {
      host_name                       client01
      service_description             Check APT Update
      check_command                   check_nrpe!check_apt
      max_check_attempts              2
      check_interval                  2
      retry_interval                  2
      check_period                    24x7
      check_freshness                 1
      contact_groups                  admins
      notification_interval           2
      notification_period             24x7
      notifications_enabled           1
      register                        1
}
define service {
      host_name                       client01
      service_description             Check HTTP
      check_command                   check_nrpe!check_http
      max_check_attempts              2
      check_interval                  2
      retry_interval                  2
      check_period                    24x7
      check_freshness                 1
      contact_groups                  admins
      notification_interval           2
      notification_period             24x7
      notifications_enabled           1
      register                        1
}

systemctl restart nagios
