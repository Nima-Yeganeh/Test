lsblk
df -h
sudo file -s /dev/xvdf
sudo file -s /dev/xvda1
sudo lsblk -f
sudo mkdir /data
sudo mkfs -t xfs /dev/xvdf
sudo mount /dev/xvdf /data
df -h
cat /etc/fstab
sudo blkid
sudo vi /etc/fstab
# UUID=aebf131c-6957-451e-8d34-ec978d9581ae  /data  xfs  defaults,nofail  0  2
sudo reboot now
cd /data
ls -anp
touch test.txt
ls -anp
lsblk
