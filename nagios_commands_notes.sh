# Nagios Core
# Other commands
cat /usr/local/nagios/etc/objects/templates.cfg
ls -anp /usr/local/nagios/share/images/logos/

# /usr/local/nagios/share/images/logos/linux40.png

cd /usr/local/nagios/etc/objects/
ls -anp
vi templates.cfg

## Linux Host Template
define host {

    name                            linux-temp
    check_period                    24x7
    check_interval                  5
    retry_interval                  1
    max_check_attempts              10
    check_command                   check-host-alive
    notification_interval           120
    notification_options            d,u,r
    contact_groups                  admins
    # icon                            linux40.png
    statusmap_image                 linux40.png
    action_url                      /pnp4nagios/index.php/graph?host=$HOSTNAME$
    notifications_enabled           1
    event_handler_enabled           1
    flap_detection_enabled          1
    process_perf_data               1
    retain_status_information       1
    retain_nonstatus_information    1
    notification_period             24x7
    register                        0

}

## Windows Host Template
define host {

    name                            windows-temp
    check_period                    24x7
    check_interval                  5
    retry_interval                  1
    max_check_attempts              10
    check_command                   check-host-alive
    notification_interval           120
    notification_options            d,u,r
    contact_groups                  admins
    # icon                            win40.png
    statusmap_image                 win40.png
    action_url                      /pnp4nagios/index.php/graph?host=$HOSTNAME$
    notifications_enabled           1
    event_handler_enabled           1
    flap_detection_enabled          1
    process_perf_data               1
    retain_status_information       1
    retain_nonstatus_information    1
    notification_period             24x7
    register                        0
    
}

## Service Template
define service {

    name                            service-temp
    active_checks_enabled           1
    passive_checks_enabled          1
    # paralellize_check               1
    obsess_over_service             1
    check_freshness                 0
    notifications_enabled           1
    event_handler_enabled           1
    flap_detection_enabled          1
    process_perf_data               1
    retain_status_information       1
    retain_nonstatus_information    1
    is_volatile                     0
    check_period                    24x7
    max_check_attempts              3
    check_interval                  10
    retry_interval                  2
    contact_groups                  admins
    notification_options            w,c,r
    notification_interval           0
    notification_period             24x7
    action_url                      /pnp4nagios/index.php/graph?host=$HOSTNAME$&srv=$SERVICEDESC$
    flap_detection_options          c
    register                        0
    
}

# verifynagios
sudo /usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg

# or alias config
vi ~/.bashrc
alias verifynagios='sudo /usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg'

source ~/.bashrc

sudo systemctl restart nagios

cat contacts.cfg

cat timeperiods.cfg

vi host1.cfg

# Define a host for linux server
define host {

    use                     linux-temp
    host_name               linux-server1
    alias                   linux-server1
    address                 5.161.58.208

}

# Define a service to "ping"
define service {

    use                     service-temp
    host_name               linux-server1
    service_description     PING
    check_command           check_ping!100.0,20%!500.0,60%

}

cat /usr/local/nagios/etc/nagios.cfg

vi /usr/local/nagios/etc/nagios.cfg
cfg_file=/usr/local/nagios/etc/objects/host1.cfg

verifynagios
sudo systemctl restart nagios

cd /usr/local/nagios/etc
ls -anp

vi hostgroups.cfg
# Host Groups
define hostgroup {
    hostgroup_name      allservers
    alias               All Servers
    members             linux-server1
}
define hostgroup {
    hostgroup_name      other-linux-servers
    alias               All Other Linux Servers
    members             localhost
}

vi /usr/local/nagios/etc/nagios.cfg
cfg_file=/usr/local/nagios/etc/hostgroups.cfg

cd /usr/local/nagios/etc
ls -anp

vi servicegroups.cfg
# Service Groups
define servicegroup {
    servicegroup_name       linux-memory
    alias                   Linux Servers Memory Usage
    members                 localhost,Swap Usage
}

vi /usr/local/nagios/etc/nagios.cfg
cfg_file=/usr/local/nagios/etc/servicegroups.cfg

sudo apt install rrdtool -y
sudo apt install ruby php-xml -y
sudo apt install xorg-x11-fonts-Type1 -y
sudo apt install fonts-urw-base35 -y

cd /tmp
ls -anp
sudo apt install git -y

git clone https://github.com/lingej/pnp4nagios.git
cd pnp4nagios
which rrdtool
./configure --with-rrdtool=/usr/bin/rrdtool --with-nagios-user=nagios --with-nagios-group=nagcmd
make all
make install-webconf
make install-config
make install-init
make fullinstall
/etc/init.d/npcd start
sudo systemctl enable npcd
sudo systemctl restart nagios
sudo systemctl restart apache2

./configure --with-httpd-conf=/etc/apache2/sites-enabled
make all
make fullinstall
make install-webconf
make install-config
make install-init
systemctl daemon-reload
systemctl restart apache2

# http://IP/pnp4nagios

sudo apt install php-gd -y
sudo apt-get install libgd3 libgd-dev -y

sudo systemctl restart apache2
sudo systemctl restart nagios

sudo apt-get remove --purge php8.* -y
sudo apt-get update -y
sudo apt install php -y

sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/php -y

sudo apt install php7.3 -y
sudo apt install php7.3-{cli,common,curl,zip,gd,mysql,xml,mbstring,json,intl} -y

sudo update-alternatives --config php

sudo apt install php7.1 -y
sudo apt install php7.1-{cli,common,curl,zip,gd,mysql,xml,mbstring,json,intl} -y

sudo update-alternatives --config php

sudo apt install php7.0 -y
sudo apt install php7.0-{cli,common,curl,zip,gd,mysql,xml,mbstring,json,intl} -y

sudo update-alternatives --config php

sudo apt install php5.6 -y
sudo apt install php5.6-{cli,common,curl,zip,gd,mysql,xml,mbstring,json,intl} -y

sudo update-alternatives --config php

php -v

sudo systemctl restart apache2
sudo systemctl restart nagios

ls -anp /usr/local/pnp4nagios/share/
rm -rf /usr/local/pnp4nagios/share/install.php

cd /tmp/pnp4nagios/scripts
./verify_pnp_config_v2.pl -m bulk -c /usr/local/nagios/etc/nagios.cfg -p /usr/local/pnp4nagios/etc/

vi /usr/local/nagios/etc/nagios.cfg
# service performance data
service_perfdata_file=/usr/local/pnp4nagios/var/service-perfdata
service_perfdata_file_template=DATATYPE::SERVICEPERFDATA\tTIMET::$TIMET$\tHOSTNAME::$HOSTNAME$\tSERVICEDESC::$SERVICEDESC$\tSERVICEPERFDATA::$SERVICEPERFDATA$\tSERVICECHECKCOMMAND::$SERVICECHECKCOMMAND$\tHOSTSTATE::$HOSTSTATE$\tHOSTSTATETYPE::$HOSTSTATETYPE$\tSERVICESTATE::$SERVICESTATE$\tSERVICESTATETYPE::$SERVICESTATETYPE$
service_perfdata_file_mode=a
service_perfdata_file_processing_interval=15
service_perfdata_file_processing_command=process-service-perfdata-file

# host performance data starting with Nagios 3.0
host_perfdata_file=/usr/local/pnp4nagios/var/host-perfdata
host_perfdata_file_template=DATATYPE::HOSTPERFDATA\tTIMET::$TIMET$\tHOSTNAME::$HOSTNAME$\tHOSTPERFDATA::$HOSTPERFDATA$\tHOSTCHECKCOMMAND::$HOSTCHECKCOMMAND$\tHOSTSTATE::$HOSTSTATE$\tHOSTSTATETYPE::$HOSTSTATETYPE$
host_perfdata_file_mode=a
host_perfdata_file_processing_interval=15
host_perfdata_file_processing_command=process-host-perfdata-file

vi /usr/local/nagios/etc/nagios.cfg
# Search >> CHANGE below value from 0 to 1
process_performance_data=1
enable_environment_macros=1

vi /usr/local/nagios/etc/objects/commands.cfg
define command{
       command_name    process-service-perfdata-file
       command_line    /usr/local/pnp4nagios/libexec/process_perfdata.pl --bulk=/usr/local/pnp4nagios/var/service-perfdata
}

define command{
       command_name    process-host-perfdata-file
       command_line    /usr/local/pnp4nagios/libexec/process_perfdata.pl --bulk=/usr/local/pnp4nagios/var/host-perfdata
}


sudo systemctl restart nagios
cd /tmp/pnp4nagios/scripts
./verify_pnp_config_v2.pl -m bulk -c /usr/local/nagios/etc/nagios.cfg -p /usr/local/pnp4nagios/etc/

/etc/init.d/npcd restart

sudo apt install php-xml -y
sudo apt install php5.6-xml -y

# Config for linux server monitoring
sudo apt update -y
sudo apt install nagios-nrpe-server nagios-plugins -y

cat /etc/nagios/nrpe.cfg
sudo vi /etc/nagios/nrpe.cfg
allowed_hosts=127.0.0.1,::1

sudo ufw allow 5666/tcp

sudo systemctl restart nagios-nrpe-server

ls -anp /usr/lib/nagios/plugins/

/usr/lib/nagios/plugins/check_ping -H localhost -w 100.00,20% -c 500.00,60%

cat /etc/nagios/nrpe.cfg
sudo vi /etc/nagios/nrpe.cfg

# Nagios Server Test
ls /usr/local/nagios/libexec/
ls /usr/local/nagios/etc/objects/

vi /usr/local/nagios/etc/objects/host2.cfg
define host {
    use                     linux-temp
    host_name               ubuntu.test2.local
    alias                   Ubuntu Server NRPE Client
    address                 5.161.58.208
}

define service {
    use                     service-temp
    host_name               ubuntu.test2.local
    service_description     PING
    check_command           check_ping!100.0,20%!500.0,60%
}

define service {
    use                     service-temp
    host_name               ubuntu.test2.local
    service_description     SSH
    check_command           check_ssh
    notifications_enabled   0
}

define service {
        use                     service-temp
        host_name               ubuntu.test2.local
        service_description     / partition disk usage
        check_command           check_nrpe!check_disk!-a '-w 10% -c 5% -p /'
        notifications_enabled   1
}

define service {
        use                     service-temp
        host_name               ubuntu.test2.local
        service_description     /boot partition disk usage
        check_command           check_nrpe!check_disk!-a '-w 10% -c 5% -p /boot'
        notifications_enabled   1
}

define service {
        use                     service-temp
        host_name               ubuntu.test2.local
        service_description     System Load
        check_command           check_nrpe!check_load!-a '-w 40,25,15 -c 50,40,30'
        notifications_enabled   1
}

define service {
        use                     service-temp
        host_name               ubuntu.test2.local
        service_description     SWAP Memory
        check_command           check_nrpe!check_swap!-a '-w 95% -c 90%'
        notifications_enabled   1
}

define service {
        use                     service-temp
        host_name               ubuntu.test2.local
        service_description     Processes
        check_command           check_nrpe!check_procs!-a '-w 1550 -c 2050'
        notifications_enabled   1
}

define service {
        use                     service-temp
        host_name               ubuntu.test2.local
        service_description     Users Logged in
        check_command           check_nrpe!check_users!-a '-w 5 -c 10'
        notifications_enabled   1
}

verifynagios
sudo systemctl restart nagios

vi /usr/local/nagios/etc/nagios.cfg
cfg_file=/usr/local/nagios/etc/objects/host2.cfg

vi /usr/local/nagios/etc/objects/commands.cfg
define command {
    command_name    check_nrpe
    command_line    $USER1$/check_nrpe -H $HOSTADDRESS$ -t 60 -c $ARG1$ $ARG2$
}

vi /usr/local/nagios/etc/objects/commands.cfg
define command {
    command_name    check_nrpe
    command_line    /usr/lib/nagios/plugins/check_nrpe -H $HOSTADDRESS$ -t 60 -c $ARG1$ $ARG2$
}

verifynagios
sudo systemctl restart nagios

sudo apt-get install nagios-nrpe-server -y
sudo apt-get install nagios-nrpe-plugin -y
ls -anp /usr/local/nagios/libexec/ | grep nrpe
ls -anp /usr/lib/nagios/plugins | grep nrpe

/usr/lib/nagios/plugins/check_nrpe -H 5.161.58.208

# https://github.com/techarkit/nagios
