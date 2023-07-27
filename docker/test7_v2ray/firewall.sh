sudo ufw allow 443/tcp
sudo ufw allow 443/udp
sudo ufw allow 3389/tcp
sudo ufw allow 3389/udp
sudo ufw allow 1010/tcp
sudo ufw allow 1010/udp
sudo ufw allow 1110/tcp
sudo ufw allow 1110/udp
sudo ufw allow 1310/tcp
sudo ufw allow 1310/udp
sudo ufw allow 1320/tcp
sudo ufw allow 1320/udp
sudo ufw status
sudo ufw reload
sudo systemctl stop ufw
sudo systemctl start ufw
sudo systemctl restart ufw
