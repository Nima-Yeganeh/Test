sudo yum install qemu-kvm libvirt virt-manager libvirt-client
sudo yum group install "Virtualization Client"
sudo yum group list hidden
sudo systemctl start libvirtd
sudo systemctl enable libvirtd
sudo reboot
less -N filename
sudo virsh list
dominfo
