Here are the steps to install Nagios on Ubuntu:

1. Update the Ubuntu system:

   ``````
   sudo apt-get update
   sudo apt-get upgrade
   ```

2. Install the necessary packages:

   ````
   sudo apt-get install apache2 php libapache2-mod-php build-essential libgd-dev openssl libssl-dev unzip
   `````

3. Download the Nagios Core source code:

   ````
   wget [https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.4.6.tar.gz ↗](https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.4.6.tar.gz)
   tar xzf nagios-4.4.6.tar.gz
   `````

4. Compile and install Nagios:

   ````
   cd nagios-4.4.6/
   sudo ./configure --with-httpd-conf=/etc/apache2/sites-enabled
   sudo make all
   sudo make install
   sudo make install-commandmode
   sudo make install-init
   sudo make install-config
   `````

5. Create a Nagios user and group:

   ````
   sudo useradd nagios
   sudo groupadd nagcmd
   sudo usermod -aG nagcmd nagios
   sudo usermod -aG nagcmd www-data
   `````

6. Download and install the Nagios plugins:

   ````
   cd ~
   wget [https://nagios-plugins.org/download/nagios-plugins-2.3.3.tar.gz ↗](https://nagios-plugins.org/download/nagios-plugins-2.3.3.tar.gz)
   tar xzf nagios-plugins-2.3.3.tar.gz
   cd nagios-plugins-2.3.3/
   sudo ./configure --with-nagios-user=nagios --with-nagios-group=nagios --with-openssl
   sudo make
   sudo make install
   `````

7. Configure Apache for Nagios:

   ````
   sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/nagios.conf
   sudo nano /etc/apache2/sites-available/nagios.conf
   `````

   Update the file with the following lines:

   ````
   ScriptAlias /nagios/cgi-bin "/usr/local/nagios/sbin"
   <Directory "/usr/local/nagios/sbin">
      Options ExecCGI
      AllowOverride None
      Order allow,deny
      Allow from all
      AuthName "Nagios Access"
      AuthType Basic
      AuthUserFile /usr/local/nagios/etc/htpasswd.users
      Require valid-user
   </Directory>

   Alias /nagios "/usr/local/nagios/share"
   <Directory "/usr/local/nagios/share">
      Options None
      AllowOverride None
      Order allow,deny
      Allow from all
      AuthName "Nagios Access"
      AuthType Basic
      AuthUserFile /usr/local/nagios/etc/htpasswd.users
      Require valid-user
   </Directory>
   `````

8. Create an Apache user and password:

   ````
   sudo htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin
   `````

   Note: Replace 'nagiosadmin' with the desired username.

9. Enable the Nagios and Apache services:

   ````
   sudo ln -s /etc/init.d/nagios /etc/rcS.d/S99nagios
   sudo systemctl restart apache2
   sudo systemctl enable nagios
   `````

10. Open a web browser and navigate to `http://your_server_ip/nagios`. You should see the Nagios login page.

11. Login with the username and password you created in step 8.

That's it! You should now have Nagios installed and ready to use on your Ubuntu system. You can start configuring hosts and services to monitor.

Nagios uses various ports for communication between its components. Here are the main ports used by Nagios:

1. Nagios Core:

   - Port 80/443: These ports are used by the Nagios web interface to communicate with the Nagios Core server.

2. NRPE (Nagios Remote Plugin Executor):

   - Port 5666: This is the default port used by the NRPE daemon to communicate with the Nagios server.

3. NSCA (Nagios Service Check Acceptor):

   - Port 5667: This is the default port used by the NSCA daemon to send passive check results to the Nagios server.

4. NDO (Nagios Data Output):

   - Port 5668: This is the default port used by the NDO daemon to send data to the Nagios database.

   Note: The actual ports used by Nagios can be configured during installation or in the Nagios configuration files. It is important to ensure that the ports used by Nagios are open and accessible on the network to ensure proper communication between the components.

