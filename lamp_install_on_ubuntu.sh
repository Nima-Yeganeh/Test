# git clone https://github.com/nima-yeganeh/test/

sudo apt update -y
sudo apt-get install tasksel -y
sudo tasksel install lamp-server
sudo apt install apache2 -y
sudo apt install mysql-server -y
sudo apt install php libapache2-mod-php php-mysql -y
sudo service apache2 restart
pwd
cp lamp_htaccess /var/www/html/.htaccess
cd /var/www/html
pwd
ls -anp
sudo wget http://wordpress.org/latest.tar.gz
ls
sudo tar xzvf latest.tar.gz
ls
sudo rm -f latest.tar.gz
sudo apt update -y
# sudo apt install php7.4 libssh2-php -y
sudo mysql -u root -e "CREATE DATABASE wordpressdb;"
sudo mysql -u root -e "CREATE USER wordpressuser@localhost IDENTIFIED BY 'P@ssw0rd';"
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON wordpressdb.* TO wordpressuser@localhost;"
sudo mysql -u root -e "FLUSH PRIVILEGES;"
ls -anp
cp .htaccess wordpress/.htaccess
# sudo chown www-data:www-data .htaccess
sudo service apache2 restart
# sudo chown www-data:www-data -R *
sudo find . -type d -exec chmod 755 {} \;
sudo find . -type d -exec chmod 644 {} \;
