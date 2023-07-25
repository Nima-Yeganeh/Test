# Grafana
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add
sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main" 
sudo apt update
sudo apt install grafana -y
apt -fix-broken install
sudo systemctl enable grafana-server
sudo systemctl start grafana-server
sudo systemctl status grafana-server
sudo ufw allow 3000/tcp

# http://localhost:3000/
# User >> admin >> Password >> admin

grafana-cli admin reset-admin-password --homepath "/usr/share/grafana" new_password
cat /etc/grafana/grafana.ini

# Install MYSQL

mysql -u root
show databases;
create database grafanadb;
show databases;
create user 'grafana'@'localhost' identified by 'P@ssw0rd';
grant all privileges on grafanadb.* to 'grafana'@'localhost';
flush privileges;

mysql -u grafana -p
use grafanadb;
show tables;

sudo vi /etc/grafana/grafana.ini
url =mysql://grafana:"P@ssw0rd"@localhost:3306/grafanadb

sudo systemctl restart grafana-server
sudo systemctl status grafana-server
journalctl -xe

sudo vi /etc/grafana/grafana.ini
;url =mysql://grafana:"P@ssw0rd"@localhost:3306/grafanadb
type = mysql
host = localhost:3306
name = grafanadb
user = grafana
password = P@ssw0rd

mysql -u grafana -p
use grafanadb;
show tables;

mysqldump -u root -h localhost grafanadb > grafanadb.sql.bak

# Create Test Databasse and User/Pass
mysql -u root
show databases;
create database testdb1;
show databases;
create user 'test1'@'localhost' identified by 'P@ssw0rd';
grant all privileges on testdb1.* to 'test1'@'localhost';
flush privileges;

# Create Table
CREATE TABLE cpu_usage (
    id INT AUTO_INCREMENT PRIMARY KEY,
    timestamp DATETIME,
    cpu FLOAT
);
show tables;

# Generate Random Data
INSERT INTO cpu_usage (timestamp, cpu)
SELECT 
    NOW() - INTERVAL FLOOR(RAND() * 1000) MINUTE,   -- Generate a random timestamp within the last 1000 minutes
    ROUND(RAND() * 100, 2)                          -- Generate a random CPU value between 0 and 100 with two decimal places
FROM
    (SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5
    UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10) AS t;
show tables;
select * from cpu_usage;

# Dashboards to Import
# https://grafana.com/grafana/dashboards/

# Prometheus and PromSQL Commands to Test
up
rate(node_cpu_seconds_total{instance="5.161.58.208:9100"}[$__rate_interval])
node_filesystem_avail_bytes{instance="5.161.58.208:9100"}/(1024*1024*1024)

# Dashboards to Import
https://grafana.com/grafana/dashboards/14731-1-linux-stats-with-node-exporter/
https://grafana.com/grafana/dashboards/18664-system-usage/
