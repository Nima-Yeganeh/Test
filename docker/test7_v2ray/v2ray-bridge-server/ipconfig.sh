ip_address=$(ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
echo "$ip_address"
cat v2ray/config/config.json | grep address
sed -i "s/<UPSTREAM-IP>/$ip_address/g" v2ray/config/config.json
cat v2ray/config/config.json | grep address
echo "IP Changed - Done!"
