# Before installing any new packages, it is always recommended to update the system with the latest security patches and bug fixes. Run the following command to update the system:
sudo apt update && sudo apt upgrade

sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
sudo systemctl status apache2

sudo ufw app list
sudo ufw status

# Before installing Nagios, you need to install some required packages including Apache, PHP, and GCC. Run the following command to install them:
sudo apt install -y build-essential openssl libssl-dev apache2 apache2-utils libgd-dev unzip php

# First of all, create a nagios user using the following command:
sudo adduser nagios

# Then create a group for Nagios setup “nagcmd” and add nagios user to this group. Also, add nagios user in the Apache group.
sudo groupadd nagcmd
sudo usermod -a -G nagcmd nagios
sudo usermod -a -G nagcmd www-data

# You can download Nagios Core from the official website using the wget command. Run the following command to download the latest version of Nagios Core:
wget https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.4.10.tar.gz

# After downloading the package, extract it using the tar command. Run the following command to extract the package:
tar xzf nagios-4.4.10.tar.gz

# Go to the extracted directory and run the following commands to compile and install Nagios Core:
cd nagios-4.4.10
sudo ./configure --with-command-group=nagcmd --with-httpd-conf=/etc/apache2/sites-enabled
sudo make all
sudo make install
sudo make install-init
sudo make install-config
sudo make install-commandmode

# Now create an Apache configuration file for your Nagios server as below:
sudo make install-webconf

# Now copy event handlers scripts under libexec directory. These binaries provides multiple events triggers for your Nagios web interface.
sudo cp -R contrib/eventhandlers/ /usr/local/nagios/libexec/
sudo chown -R nagios:nagios /usr/local/nagios/libexec/eventhandlers

# We need to setup apache authentication for user nagiosadmin. Until more specific reason use this username as “nagiosadmin” else you would require more changes in configuration.
htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin

# Now enable Apache configuration and restart Apache service to make the new settings take effect.
sudo a2enmod cgi rewrite
sudo systemctl restart apache2 

# After installing and configuring Nagios core service, Download latest nagios-plugins source and install using the following commands.
wget http://www.nagios-plugins.org/download/nagios-plugins-2.4.3.tar.gz
tar xzf nagios-plugins-2.4.3.tar.gz
cd nagios-plugins-2.4.3

# Now compile and install Nagios plugins
sudo ./configure --with-nagios-user=nagios --with-nagios-group=nagcmd --with-openssl
sudo make
sudo make install

# Use the Nagios commands to verify the Nagios installation and configuration file.
/usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg

# After successfully verify start the Nagios core service and enable auto-start on system boot.
sudo systemctl start nagios
sudo systemctl enable nagios

# You can access the Nagios web interface by opening a web browser and entering the following URL:
# http://system-ip-or-hostname/nagios/
# You will be prompted to enter a username and password. Use the credentials you created in step 6 (nagiosadmin/password) to log in.

