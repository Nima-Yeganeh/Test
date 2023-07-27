# zabiix

sudo apt update -y
apt-get install apache2 -y

sudo ufw app list
sudo ufw status numbered
sudo ufw allow 80/tcp
sudo ufw status numbered

sudo apt-get install mysql-server -y
sudo apt-get install php php-pear php-cgi php-common libapache2-mod-php php-mbstring php-net-socket php-gd php-xml-util php-mysql php-bcmath -y

lsb_release -a

ls -anp /etc/apt/sources.list.d/
rm -rf /etc/apt/sources.list.d/zabbix*
ls -anp /etc/apt/sources.list.d/

wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-4+ubuntu$(lsb_release -rs)_all.deb
sudo dpkg -i zabbix-release_6.0-4+ubuntu$(lsb_release -rs)_all.deb
sudo apt update
sudo apt -y install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-sql-scripts zabbix-agent

wget https://repo.zabbix.com/zabbix/6.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.4-1+ubuntu$(lsb_release -rs)_all.deb
sudo dpkg -i zabbix-release_6.4-1+ubuntu$(lsb_release -rs)_all.deb
sudo apt update
sudo apt -y install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-sql-scripts zabbix-agent

sudo apt --fix-broken install

sudo apt install software-properties-common -y
sudo apt-get remove mysql-server -y

curl -LsS -O https://downloads.mariadb.com/MariaDB/mariadb_repo_setup
sudo bash mariadb_repo_setup --mariadb-server-version=10.6
sudo apt update
sudo apt -y install mariadb-common mariadb-server-10.6 mariadb-client-10.6
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo mysql_secure_installation

sudo systemctl status mariadb

sudo mysql -uroot -p'P@ssw0rd' -e "create database zabbix character set utf8mb4 collate utf8mb4_bin;"
sudo mysql -uroot -p'P@ssw0rd' -e "create user 'zabbix'@'localhost' identified by 'P@ssw0rd';"
sudo mysql -uroot -p'P@ssw0rd' -e "grant all privileges on zabbix.* to zabbix@localhost identified by 'P@ssw0rd';"
sudo mysql -uroot -p'P@ssw0rd' -e "show databases;"

sudo zcat /usr/share/zabbix-sql-scripts/mysql/server.sql.gz | mysql --default-character-set=utf8mb4 -uzabbix -p'P@ssw0rd' zabbix

sudo vi /etc/zabbix/zabbix_server.conf
DBPassword=P@ssw0rd

sudo cat /etc/zabbix/zabbix_server.conf | grep DBUser
sudo cat /etc/zabbix/zabbix_server.conf | grep DBPassword

sudo ufw allow 10050/tcp
sudo ufw allow 10051/tcp
sudo ufw allow 80/tcp
sudo ufw reload

sudo systemctl restart zabbix-server zabbix-agent
sudo systemctl enable zabbix-server zabbix-agent

sudo cat /etc/zabbix/apache.conf
sudo systemctl restart apache2
sudo systemctl enable apache2

# http://server_ip_or_dns_name/zabbix
# Zabbix default admin username “Admin” and password “zabbix” (without quotes) to login to Zabbix frontend at URL “http://server_ip_or_dns_name/zabbix”

sudo vi /etc/zabbix/zabbix_server.conf
StartPollers=100
StartPollersUnreachable=50
StartPingers=50
StartTrappers=10
StartDiscoverers=15
StartPreprocessors=15
StartHTTPPollers=5
StartAlerters=5
StartTimers=2
StartEscalators=2
CacheSize=128M
HistoryCacheSize=64M
HistoryIndexCacheSize=32M
TrendCacheSize=32M
ValueCacheSize=256M

sudo cat /var/log/zabbix/zabbix_server.log

sudo vi /etc/mysql/mariadb.conf.d/10_my_tweaks.cnf
[mysqld]
max_connections                = 404
innodb_buffer_pool_size        = 800M
innodb-log-file-size           = 128M
innodb-log-buffer-size         = 128M
innodb-file-per-table          = 1
innodb_buffer_pool_instances   = 8
innodb_old_blocks_time         = 1000
innodb_stats_on_metadata       = off
innodb-flush-method            = O_DIRECT
innodb-log-files-in-group      = 2
innodb-flush-log-at-trx-commit = 2
tmp-table-size                 = 96M
max-heap-table-size            = 96M
open_files_limit               = 65535
max_connect_errors             = 1000000
connect_timeout                = 60
wait_timeout                   = 28800

sudo chown mysql:mysql /etc/mysql/mariadb.conf.d/10_my_tweaks.cnf
sudo chmod 644 /etc/mysql/mariadb.conf.d/10_my_tweaks.cnf

egrep "^Start.+=[0-9]"  /etc/zabbix/zabbix_server.conf  |  awk -F "=" '{s+=$2} END {print s+150}'

sudo systemctl stop zabbix-server
sudo systemctl stop mysql
sudo systemctl start mysql
sudo systemctl start zabbix-server

sudo cat /var/log/zabbix/zabbix_server.log

sudo apt install --only-upgrade 'zabbix*'
sudo systemctl restart zabbix-server

# Two things to remember!

# Configuration parameter max_connections must be larger than the total number of all Zabbix proxy processes plus 150. You can use the command below to automatically check the number of Zabbix processes and add 150 to that number:

egrep "^Start.+=[0-9]"  /etc/zabbix/zabbix_server.conf  |  awk -F "=" '{s+=$2} END {print s+150}'

# The second most important parameter is innodb_buffer_pool_size, which determines how much memory can MySQL get for caching InnoDB tables and index data. You should set that parameter to 70% of system memory if only database is installed on server.

# However, in this case, we are sharing a server with Zabbix and Apache processes so you should set innodb_buffer_pool_size to 40% of total system memory. That would be 800 MB because my Ubuntu server has 2 GB RAM.

# I didn’t have any problems with memory, but if your Zabbix proxy crashes because of lack of memory, reduce “innodb_buffer_pool_size” and restart MySQL server.

# Note that if you follow this configuration, you will receive “Too many processes on the Zabbix server” alarm in Zabbix frontend due to the new Zabbix configuration. It is safe to increase the trigger threshold or turn off that alarm (select “Problems” tab → left click on the alarm → select “Configuration” → remove the check from “Enabled” → hit the “Update” button)

# Create MySQL partitions on History and Events tables

# Zabbix’s housekeeping process is responsible for deleting old trend and history data. Removing old data from the database using SQL delete query can negatively impact database performance. Many of us have received that annoying alarm “Zabbix housekeeper processes more than 75% busy” because of that.

# That problem can be easily solved with the database partitioning. Partitioning creates tables for each hour or day and drops them when they are not needed anymore. SQL DROP is way more efficient than the DELETE statement.

# https://bestmonitoringtools.com/how-to-install-zabbix-server-on-ubuntu/
# https://bestmonitoringtools.com/zabbix-partitioning-tables-on-mysql-database/

