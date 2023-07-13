Here are some common Linux administration commands for Ubuntu:

1. sudo:
The sudo command is used to run commands with administrative privileges. To run a command with sudo, prefix the command with "sudo". For example:

```
sudo apt-get update
```

This will run the apt-get command with administrative privileges.

2. su:
The su command is used to switch to a different user account, including the root account. To switch to the root account, run the following command:

```
su -
```

This will prompt you for the root password and then switch to the root account.

3. useradd:
The useradd command is used to add new user accounts. To add a new user account, run the following command:

```
sudo useradd username
```

Replace "username" with the desired username. This will create a new user account with the default settings.

4. passwd:
The passwd command is used to set or change the password for a user account. To set or change the password for a user account, run the following command:

```
sudo passwd username
```

Replace "username" with the username of the account. This will prompt you to enter a new password for the account.

5. systemctl:
The systemctl command is used to manage system services. To start or stop a service, run the following command:

```
sudo systemctl start service-name
sudo systemctl stop service-name
```

Replace "service-name" with the name of the service. This will start or stop the specified service.

6. top:
The top command is used to display real-time information about system processes and resource usage. To display real-time information about system processes, run the following command:

```
top
```

This will display a list of running processes, along with information about CPU and memory usage.

Overall, these Linux administration commands provide a way to manage users, services, and system resources on Ubuntu systems. By using these commands, you can manage and maintain your Ubuntu system to ensure that it is running smoothly and securely.

Linux administration commands are used to manage and configure various aspects of a Linux system. These commands can be used to manage users and groups, configure system settings, install and manage software, and more. Here are some examples of common Linux administration commands:

1. User and Group Management:
Linux provides a number of commands for managing user accounts and groups. These commands include:

- useradd: Used to create new user accounts.
- passwd: Used to set or change passwords for user accounts.
- usermod: Used to modify user account settings, such as the home directory or login shell.
- userdel: Used to delete user accounts.
- groupadd: Used to create new groups.
- groupmod: Used to modify group settings, such as the group name or group ID.
- groupdel: Used to delete groups.

2. System Configuration:
Linux provides a number of commands for configuring system settings. These commands include:

- hostnamectl: Used to set or change the system hostname.
- timedatectl: Used to set or change the system time and date.
- sysctl: Used to modify kernel settings.
- iptables: Used to configure the Linux firewall.
- sshd_config: Used to configure the SSH daemon.

3. Package Management:
Linux provides a number of commands for managing software packages. These commands include:

- apt-get: Used to install, update, and remove packages on Ubuntu and other Debian-based distributions.
- yum: Used to install, update, and remove packages on Red Hat and other RPM-based distributions.
- pacman: Used to install, update, and remove packages on Arch Linux and other Arch-based distributions.

4. Service Management:
Linux provides a number of commands for managing system services. These commands include:

- systemctl: Used to start, stop, enable, disable, and check the status of system services.
- service: Used to start, stop, and check the status of system services on older Linux distributions.

There are many other Linux administration commands available, depending on the specific needs of your system. By using these commands, you can manage and configure various aspects of your Linux system to ensure that it is running smoothly and securely.

