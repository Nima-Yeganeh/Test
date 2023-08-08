# How to install
wget https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz

# Latest Version >> https://prometheus.io/download/#node_exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz
wget https://github.com/prometheus/node_exporter/releases/download/v1.6.1/node_exporter-1.6.1.linux-amd64.tar.gz

tar xvf node_exporter-1.6.1.linux-amd64.tar.gz

cd node_exporter-1.6.1.linux-amd64
sudo cp node_exporter /usr/local/bin

sudo useradd --no-create-home --shell /bin/false node_exporter

sudo chown node_exporter:node_exporter /usr/local/bin/node_exporter

ls -ltr /usr/local/bin/node_exporter

sudo vi /etc/systemd/system/node_exporter.service
[Unit]
Description=Node Exporter
Wants=network-online.target
After=network-online.target

[Service]
User=node_exporter
Group=node_exporter
Type=simple
ExecStart=/usr/local/bin/node_exporter
Restart=always
RestartSec=3

[Install]
WantedBy=multi-user.target

sudo cat /etc/systemd/system/node_exporter.service

sudo systemctl daemon-reload

sudo systemctl enable node_exporter

sudo systemctl start node_exporter

sudo systemctl status node_exporter

# http://your_server_ip:9100/metrics
# http://5.161.58.208:9100/metrics

sudo ufw allow 9100
sudo iptables -I INPUT -p tcp -m tcp --dport 9100 -j ACCEPT

