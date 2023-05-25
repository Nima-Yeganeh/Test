# Which tool is used to create a VM for an unattended kickstart install?
virt-install

# To do an unattended install into a KVM guest we need _____.
a kickstart file
a bootable ISO install image
a virtual machine

# To see VM boot screen output on a graphical console after doing an unattended install we need a _____.
virtual graphics card

# Which virsh subcommand would you use to get information on a virtual machine?
dominfo
Correct
With QEMU/KVM a virtual machine is called a domain.

# Why does the Enterprise Linux installer ask to choose a language twice?
It asks for installer language and the language of the installed OS.
Correct
The installer language is just the language used to install the OS. The installed language is the language that the OS will boot up in.

# To ensure Enterprise Linux guest VMs can shut down completely you need to _____.
start the acpid service
Correct
The acpid service manages shutdown signals.

# Enterprise Linux uses _____ as it's default hypervisor.
Kernel Virtual Machine (KVM)
Correct
The Kernel Virtual Machine (KVM) is included in Linux.

# To speed up virtualization KVM does not support _____.
complete paravirtualization

# When using the macvtap bridge which host cannot communicate with the guest VM?
The virtualization host.

# What is the purpose of kickstart?
Kickstart provides configuration data to the installer for unattended installs.

# Users can create cronjobs by using the _____ command.
crontab

# A system cronjob with a time and date fields of 0 1 * * * would run the task _____.
every day at 1 am

# If we add a line in the access.conf file that reads -:ALL EXCEPT root:cron it would _____.
disallow all users to run the cron service except for root

# The first stage of the boot process is _____.
the firmware stage
Correct
The first stage is to read the firmware.

# What is the difference between running one-time jobs with the at and batch commands?
Batch will run a command at a certain time but only if system load is below a certain threshold.

# To enter emergency mode _____.
interrupt grub and add systemd.unit=emergency to the kernel line

# In Linux system service is called a _____.
daemon

# The object that systemd uses to manage services is called a _____.
unit file

# When systemctl makes a service start automatically at boot it's referred to as _____.
enabled
Correct
Yes, services are enabled or disabled to control automatically starting at boot.

# The ip command is used to set the _____ network config.
live
Correct
The live network configuration comprises of the settings stored in ram.

# The tool to configure network connections from the GUI is _____.
nm-connection-editor

# A network interface named enp0s25 is a(n) _____ device.
ethernet

# What is the syntax to set the time and date on one line using the timedatectl command?
timedatectl set-time ‘YYYY-MM-DD HH:MM:SS’
Correct
It's important to be sure the order is date followed by time.

# The stage of the boot process where system services are started is _____.
the initialization stage

# grep's sole purpose is to _____.
search through files

# To use extended regular expressions in grep we need to _____.
use grep -E

# The equivalent character class to the set [0-9] is _____.
[[:digit:]]

# A set matches _____ character(s).
one

# When we provide the --xattrs option to tar what is the result?
Extended attributes including access control lists and SELinux security context are supported.

# Journald differs from traditional logging services because it's logs are _____ by default.
not persistent

# The tool we use to read the system journal is _____.
journalctl

# If you are looking for help on the ip command and you want to do an exhaustive search through all manpages which command would you use?
man -k ip

# What is a main difference between using a file compressor separately and using the compressor as an option to tar?
Using most compressors alone will not preserve metadata.

# What will the result be of the following command?
The brace expansion will cause the mkdir command to create three directories - dir1, dir2 and dir3.

# To be warned before overwriting a file use the _____ option.
-i
Correct
The -i option is for interactive.

# To rename a file in Linux we use the _____ command.
mv
Correct
We "move" the file to a new name using the `mv` command.

# Be very careful with recursive mode when removing files because _____.
a simple mistake could delete your entire OS
Correct
If you are the super user you could delete all files without being prompted, even as a user this could be destructive.

# What is a difference between hard links and symbolic links?
Directories cannot be hard linked.

# VIM has three modes operation _____ .
insert, command and ex modes

# In VIM copying text is called _____.
yanking

# What is the difference between the dnf command and the rpm command?
Only the DNF command installs software from remote repositories.

# What is the purpose of the epoch number on some packages?
The epoch number allows a package with a lower version number to be seen as an upgrade overriding the normal version comparison order.

# If we see a package name in red when running yum list installed it means _____.
the package is not available in any known repository

# Not all dnf groups are shown by default, to show all groups type _____.
dnf group list hidden

# To find which package provides the vim command use _____.
dnf provides vim

# Installing software from a repository has the added advantages of _____.
automatic dependency resolution

# What would be the correct course of action if you attempt to update the entire OS with the following command and it fails because some package dependencies are broken?
Use the --skip-broken option to install all possible packages and then deal with the broken package separately.

# RPM can provide detailed information about _____.
the package which files on the filesystem originated from

# What is one advantage to using the group id to identify the group when installing or deleting groups of packages?
The group id doesn't have spaces or mixed character case in its name.
Correct
The group id format of security-tools is less error prone than "Security Tools" both interactively and in scripts.

# Typing rpm -qa --queryformat "%{NAME} %{VERSION}\n" will show _____.
the package name and version

# We can find packages that have been replaced by different packages using _____.
yum list obsoletes

# How does the dnf command handle removing kernels differently then the yum command did?
dnf will let you remove the current running kernel
Correct
True, be careful.
