sudo ufw allow 443/tcp
sudo ufw allow 443/udp
sudo ufw status
sudo ufw reload
sudo systemctl stop ufw
sudo systemctl start ufw
sudo systemctl restart ufw

sudo ufw allow 3389/tcp
sudo ufw allow 3389/udp
sudo ufw status
sudo ufw reload
sudo systemctl stop ufw
sudo systemctl start ufw
sudo systemctl restart ufw
