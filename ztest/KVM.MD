To install Ubuntu on KVM (Kernel-based Virtual Machine), you can follow these steps:

1. Install KVM:
First, you need to install KVM on your system. If you are using Ubuntu, you can install KVM by running the following command in a terminal window:

```
sudo apt-get install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils
```

2. Create a virtual machine:
Next, you need to create a virtual machine using KVM. You can do this by running the following command in a terminal window:

```
sudo virt-install --name=ubuntu-vm --ram=2048 --vcpus=2 --disk path=/var/lib/libvirt/images/ubuntu-vm.qcow2,size=20 --os-type linux --os-variant ubuntu18.04 --network bridge=br0 --graphics none --location 'http://archive.ubuntu.com/ubuntu/dists/bionic/main/installer-amd64/'
```
This command will create a virtual machine called "ubuntu-vm" with 2GB of RAM, 2 virtual CPUs, a 20GB virtual hard drive, and Ubuntu 18.04 as the operating system.

3. Follow the Ubuntu installer:
Once you have created the virtual machine, you can connect to it using a VNC client and follow the Ubuntu installer to complete the installation process.

4. Install the virtio drivers:
After the installation is complete, you should install the virtio drivers to improve performance. To do this, run the following command in the virtual machine:

```
sudo apt-get install qemu-guest-agent spice-vdagent
```

5. Configure the virtual machine:
Finally, you can configure the virtual machine to suit your needs, such as installing additional software or configuring network settings.

These are the basic steps to install Ubuntu on KVM. Depending on your specific requirements, you may need to modify these steps or add additional steps to customize the installation.

Yes, here are some tips for troubleshooting common issues when customizing KVM:

1. Check the KVM logs:
When troubleshooting KVM issues, the first place to look is the KVM logs. The KVM logs can provide valuable information about what went wrong and where to start looking for a solution. The default location for KVM logs is /var/log/libvirt, but the location may vary depending on your distribution.

2. Check the system logs:
In addition to the KVM logs, you should also check the system logs for any errors or warnings related to KVM. The system logs can provide additional context and help you identify any underlying issues that may be causing the problem.

3. Check the virtual machine logs:
If you are experiencing issues with a specific virtual machine, you should also check the virtual machine logs. The virtual machine logs can provide information about any issues specific to the virtual machine, such as network connectivity or disk access issues.

4. Check the network configuration:
Networking is a common source of issues when customizing KVM, so it's important to check the network configuration. Make sure that the virtual machine is configured to use the correct network interface and that the network interface is configured correctly on the host system.

5. Check the storage configuration:
Storage is another common source of issues when customizing KVM. Make sure that the virtual machine is configured to use the correct storage device and that the storage device is configured correctly on the host system.

6. Check the virtualization settings:
If you are experiencing performance issues or other issues related to virtualization, you should check the virtualization settings. Make sure that the virtualization settings are configured correctly for your hardware and that you are using the latest version of KVM.

7. Check for updates and patches:
Finally, make sure that you are using the latest version of KVM and that you have installed any updates or patches that are available. Updates and patches can often fix common issues and improve performance, so it's important to keep your system up-to-date.

These are just a few tips for troubleshooting common issues when customizing KVM. By following these tips and using the resources available, you can identify and resolve issues quickly and effectively.

Here are some common KVM commands that you can use on Ubuntu:

1. List all virtual machines:
To list all virtual machines on your system, use the following command:

```
sudo virsh list --all
```

2. Start a virtual machine:
To start a virtual machine, use the following command:

```
sudo virsh start <vm-name>
```

Replace `<vm-name>` with the name of the virtual machine you want to start.

3. Stop a virtual machine:
To stop a virtual machine, use the following command:

```
sudo virsh shutdown <vm-name>
```

4. Reset a virtual machine:
To reset a virtual machine, use the following command:

```
sudo virsh reset <vm-name>
```

5. Reboot a virtual machine:
To reboot a virtual machine, use the following command:

```
sudo virsh reboot <vm-name>
```

6. Connect to a virtual machine console:
To connect to a virtual machine console, use the following command:

```
sudo virsh console <vm-name>
```

7. Clone a virtual machine:
To clone a virtual machine, use the following command:

```
sudo virt-clone --original <vm-name> --name <new-vm-name> --auto-clone
```

Replace `<vm-name>` with the name of the virtual machine you want to clone and `<new-vm-name>` with the name of the new virtual machine.

8. Create a new virtual machine:
To create a new virtual machine, use the following command:

```
sudo virt-install --name <vm-name> --ram <memory-size> --vcpus <cpu-count> --disk path=<disk-path>,size=<disk-size> --os-type <os-type> --os-variant <os-variant> --network bridge=<bridge-name> --graphics none --location <iso-file>
```

Replace `<vm-name>` with the name of the virtual machine, `<memory-size>` with the amount of RAM in MB, `<cpu-count>` with the number of virtual CPUs, `<disk-path>` with the path to the virtual hard disk, `<disk-size>` with the size of the virtual hard disk in GB, `<os-type>` with the type of operating system, `<os-variant>` with the variant of the operating system, `<bridge-name>` with the name of the bridge interface, and `<iso-file>` with the path to the installation ISO file.

9. Delete a virtual machine:
To delete a virtual machine, use the following command:

```
sudo virsh undefine <vm-name>
```

Replace `<vm-name>` with the name of the virtual machine you want to delete.

These are some common KVM commands that you can use on Ubuntu. Depending on your specific use case, you may need to modify these commands or use additional commands to customize KVM.

