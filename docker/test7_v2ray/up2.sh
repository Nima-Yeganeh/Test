echo "Started!"
apt install sudo -y
sudo apt update -y
sudo apt-get install python3 -y
sudo apt-get install python3-pip -y
python3 --version
cd utils
bash bbr.sh
cd ..
cd v2ray-upstream-server
bash start.sh
cd ..
cd v2ray-bridge-server
bash ipconfig.sh
bash start.sh
bash info.sh
cd ..
echo "Done!"
